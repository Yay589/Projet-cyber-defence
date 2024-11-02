#Run with : python3 Scripts/run_scan.py

import subprocess

def run_nmap_scan(target):
    result = subprocess.run(['docker', 'run', '--rm', 'nmap_scanner', '-sV', target], capture_output=True, text=True)
    print("Nmap Scan Result:", result.stdout)

def run_nikto_scan(target):
    result = subprocess.run(['docker', 'run', '--rm', 'nikto_scanner', '-h', target], capture_output=True, text=True)
    print("Nikto Scan Result:", result.stdout)

if __name__ == "__main__":
    target_ip = "192.168.10.10"  # Cible à scanner
    run_nmap_scan(target_ip)
    run_nikto_scan(target_ip)
