import sys
import os
import time
import serial
import serial.tools.list_ports

# ==== CONFIGURATION ====
AUTO_COM_PORT = 'COM4'
AUTO_SCRIPT_FILE = 'testsomeconfigprem.txt'
BAUD_RATE = 230400
TIMEOUT = 1
REPEAT_RUNS = 5  # Number of repeats

def serial_ports():
    ports = serial.tools.list_ports.comports()
    return [port.device for port in ports]

def connect_port(port_name):
    try:
        ser = serial.Serial(port_name, baudrate=BAUD_RATE, bytesize=8, timeout=TIMEOUT)
        ser.reset_input_buffer()
        ser.reset_output_buffer()
        print(f"Connected to {port_name}")
        return ser
    except Exception as e:
        print(f"Error connecting to {port_name}: {e}")
        return None

def hex_to_bitstring(hexstr):
    try:
        scale = int(hexstr, 16)
        num_of_bits = len(hexstr) * 4  # each hex digit = 4 bits
        return bin(scale)[2:].zfill(num_of_bits)
    except Exception as e:
        return f"[Bit decode error: {e}]"

def run_script(ser, script_path, log_path):
    try:
        with open(script_path, 'r') as script_file:
            lines = script_file.readlines()
    except Exception as e:
        print(f"Error reading script file: {e}")
        return

    with open(log_path, 'w', encoding='utf-8', errors='replace') as log_file:
        print(f"Start executing script, saving to {log_path} ...")
        start_time = time.time()

        for line in lines:
            line = line.strip()
            if not line:
                continue
            command = line + '\n'
            ser.write(command.encode())
            ser.flush()
            print(f"Sent command: {line}")
            try:
                result_bytes = ser.readline()
                hex_result = result_bytes.hex()
                bit_result = hex_to_bitstring(hex_result)
            except Exception as e:
                hex_result = f"[Decode error: {e}]"
                bit_result = f"[Decode error: {e}]"
            print(f"Received (hex): {hex_result}")
            print(f"Received (bits): {bit_result}")
            try:
                log_file.write(f"Command: {line}\n")
                log_file.write(f"Response (hex): {hex_result}\n")
                log_file.write(f"Response (bits): {bit_result}\n")
            except Exception as e:
                print(f"Log write error: {e}")

        end_time = time.time()
        print(f"Script completed in {end_time - start_time:.2f} seconds")

def main():
    print("Auto-run CHOICE PUF batch script starting...")

    ports = serial_ports()
    if AUTO_COM_PORT not in ports:
        print(f"Port {AUTO_COM_PORT} not found! Available ports: {ports}")
        return

    ser = connect_port(AUTO_COM_PORT)
    if ser is None:
        return

    for i in range(1, REPEAT_RUNS + 1):
        log_file = f"runlog{i}.txt"
        print(f"\n===== Running round {i}/{REPEAT_RUNS} =====")
        run_script(ser, AUTO_SCRIPT_FILE, log_file)
        time.sleep(1)  # optional short pause between runs

    ser.close()
    print("Serial port closed. Done!")

if __name__ == "__main__":
    main()
