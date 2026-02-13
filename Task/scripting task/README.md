# Shell Scripting Task 4

This repository contains shell scripts for DevOps assessment tasks.

## 📋 Task Overview

This project includes two shell scripts:

1. **HTTP Status Code Checker** - Checks the HTTP status of guvi.in and reports success/failure
2. **Text Replacement Script** - Conditionally replaces text based on specific criteria

## 🚀 Scripts

### 1. HTTP Status Code Checker (`http_status_checker.sh`)

**Purpose**: Check the HTTP status code of guvi.in and print appropriate success/failure messages.

**Features**:
- Fetches HTTP status code using `curl`
- Color-coded output for better visibility
- Handles different HTTP status code ranges (2xx, 3xx, 4xx, 5xx)
- Error handling for network issues

**Usage**:
```bash
chmod +x http_status_checker.sh
./http_status_checker.sh
```

**Expected Output**:
- ✓ SUCCESS (Green) - for 2xx status codes
- → REDIRECT (Blue) - for 3xx status codes
- ✗ CLIENT ERROR (Yellow) - for 4xx status codes
- ✗ SERVER ERROR (Red) - for 5xx status codes

---

### 2. Text Replacement Script (`text_replacer.sh`)

**Purpose**: Replace all occurrences of "give" with "learning" from line 5 onwards, only in lines that contain the word "welcome".

**Features**:
- Processes files line by line
- Preserves lines 1-4 unchanged
- Conditional replacement based on line content
- Uses `awk` for efficient text processing

**Usage**:
```bash
chmod +x text_replacer.sh
./text_replacer.sh <input_file>
```

**Example**:
```bash
./text_replacer.sh sample_input.txt
```

**Rules**:
- Lines 1-4: No changes
- Lines 5+: Replace "give" → "learning" ONLY if the line contains "welcome"
- Lines without "welcome": No changes (even if they contain "give")

---

## 📁 Files Included

- `http_status_checker.sh` - HTTP status code checker script
- `text_replacer.sh` - Text replacement script
- `sample_input.txt` - Sample input file for testing text replacement
- `README.md` - This documentation file

## 🔧 Requirements

- **Operating System**: Linux (Ubuntu/Debian/RHEL/etc.)
- **Shell**: Bash (usually pre-installed)
- **Tools**: 
  - `curl` (for HTTP status checker)
  - `awk` (usually pre-installed)

### Installing curl (if not installed):

**Ubuntu/Debian**:
```bash
sudo apt update
sudo apt install curl -y
```

**RHEL/CentOS**:
```bash
sudo yum install curl -y
```

## 🧪 Testing

### Test HTTP Status Checker:
```bash
chmod +x http_status_checker.sh
./http_status_checker.sh
```

### Test Text Replacer:
```bash
chmod +x text_replacer.sh
./text_replacer.sh sample_input.txt
```

## 📸 Screenshots

Screenshots of the script outputs should be captured and included in your submission.

## 📤 Submission

1. Push all files to GitHub repository
2. Include code files and output screenshots
3. Submit the GitHub repository URL

## 📝 Notes

- Scripts are designed to work on AWS, GitBash, WSL, and VirtualBox environments
- All scripts include error handling and user-friendly output
- Color-coded messages for better readability

## 🔒 License

This is an assessment task. Code is open-source for educational purposes.

---

**Created for**: DevOps Shell Scripting Assessment  
**Date**: February 2026
