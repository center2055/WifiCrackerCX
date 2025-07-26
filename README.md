# WifiCrackerCX

A modern, user-friendly WiFi password cracking tool with a PyQt5 GUI interface. This tool is designed for educational purposes and authorized security testing only.

## Features

- **Modern GUI**: Clean, intuitive interface built with PyQt5
- **Network Scanning**: Automatically scan and display available WiFi networks
- **Password List Management**: Add/remove password lists with password count display
- **Multiple Attack Strategies**: Dictionary, Brute-force, and Hybrid attacks
- **Progress Tracking**: Real-time progress display with estimated time remaining
- **Pause/Resume**: Save and resume cracking sessions
- **Export Results**: Save successful cracks to text files
- **Stay Connected Option**: Option to stay connected to the WiFi after a successful crack
- **Support for Chinese SSIDs**: Handles and displays Chinese network names correctly
- **Windows 11 Support**: Uses Windows netsh commands for WiFi management

## Installation

### Prerequisites

- Python 3.7 or higher
- pip (Python package installer)

### Dependencies
The .bat file installs all depedencies automaticly.

### Quick Start

1. **Clone or download** this repository
3. **Run the application**: `START.bat`
4. **Add password lists**: Use the "Add Password List" button to add .txt files containing passwords
5. **Scan networks**: Click "Scan Networks" to discover available WiFi networks
6. **Start cracking**: Select a network and click "Crack Password"

## Recommended Usage

For the best experience, maximize the application window after launch. The app does not start maximized by default, so you can resize it as you wish.

## Platform Support & Limitations

**Important:**
- This application is **currently only tested and supported on Windows 11**.
- The app uses Windows `netsh` commands for WiFi management and password cracking.
- Linux and macOS support is not tested and may not work out of the box.

### What Works on Windows 11:
- ✅ Real WiFi password cracking using Windows netsh
- ✅ Network scanning and discovery
- ✅ GUI interface and password list management
- ✅ Stay Connected After Crack option
- ✅ Support for Chinese SSIDs

### What Doesn't Work / Not Tested:
- ❌ Linux and macOS are **not tested**
- ❌ Some advanced WiFi security types may not be supported

## Technical Notes & Recent Changes

- **Stay Connected After Crack**: You can now choose whether the app should stay connected to the WiFi after finding the correct password (see Settings).
- **Windows 11 WiFi Solution**: The app uses Windows `netsh` commands for scanning, connecting, and managing WiFi profiles, bypassing previous limitations of `pywifi` on Windows 11.
- **Chinese SSID Support**: The app can display and connect to networks with Chinese (and other non-ASCII) names.

## Legal and Ethical Use

⚠️ **WARNING**: This tool is for educational purposes and authorized security testing only.

- **Only test networks you own or have explicit permission to test**
- **Unauthorized use against networks you don't own is illegal and unethical**
- **Use responsibly and at your own risk**

## File Structure

- `main.py` - Main application file
- `README.md` - This documentation
- `START.bat` - Windows batch file for easy set-up and launching
- `light.txt` - Sample password list
- `pass_dictionary.txt` - Additional sample password list

## Troubleshooting

### Common Issues

1. **"No WiFi adapter found"**
   - Ensure your WiFi adapter is enabled
   - Run as administrator if needed

2. **"ModuleNotFoundError: No module named 'PyQt5'"**
   - Install PyQt5: `pip install PyQt5`

3. **"ModuleNotFoundError: No module named 'pywifi'"**
   - Install pywifi: `pip install pywifi`

4. **Password cracking not working on Windows**
   - Ensure you are running on Windows 11
   - Make sure you have the necessary permissions (run as administrator)

### Getting Help

If you encounter issues:
Open a Issue or contact me via my Discord: centerxx

## License

This project is for educational purposes only. Use responsibly and in accordance with applicable laws and regulations.
