import sys
import os
import glob
import time
import serial
import serial.tools.list_ports
import subprocess

# ==== CONFIGURATION ====
AUTO_COM_PORT = 'COM4'
AUTO_SCRIPT_FILE = 'testallconfig.txt'
AUTO_LOG_FILE = 'runlog.txt'
BAUD_RATE = 230400
TIMEOUT = 1

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

def run_script(ser, script_path, log_path):
    try:
        with open(script_path, 'r') as script_file:
            lines = script_file.readlines()
    except Exception as e:
        print(f"Error reading script file: {e}")
        return

    log_file = None
    if log_path:
        log_file = open(log_path, 'w', encoding='utf-8', errors='replace')

    print("Start executing script, please be patient...")
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
            hex_result = result_bytes.hex()  # <<< convert to HEX
        except Exception as e:
            hex_result = f"[Decode error: {e}]"
        print(f"Received (hex): {hex_result}")
        if log_file:
            try:
                log_file.write(f"Command: {line}\nResponse (hex): {hex_result}\n")
            except Exception as e:
                print(f"Log write error: {e}")

    end_time = time.time()
    print(f"Script completed in {end_time - start_time:.2f} seconds")

    if log_file:
        log_file.close()




def main():
    print("Auto-run CHOICE PUF script starting...")

    ports = serial_ports()
    if AUTO_COM_PORT not in ports:
        print(f"Port {AUTO_COM_PORT} not found! Available ports: {ports}")
        return

    ser = connect_port(AUTO_COM_PORT)
    if ser is None:
        return

    run_script(ser, AUTO_SCRIPT_FILE, AUTO_LOG_FILE)
    ser.close()
    print("Serial port closed. Done!")

if __name__ == "__main__":
    main()
