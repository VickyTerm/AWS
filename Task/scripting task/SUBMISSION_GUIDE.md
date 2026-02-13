# 📋 SUBMISSION CHECKLIST

## ✅ Completed Tasks

- [x] HTTP Status Code Checker script created and tested
- [x] Text Replacement script created and tested  
- [x] Sample input file created
- [x] README documentation written
- [x] Output files captured
- [x] Git setup helper script created

## 📤 Ready for GitHub Submission

### Files to Submit:
```
shell-task4/
├── http_status_checker.sh      (Main script - Task 1)
├── text_replacer.sh            (Main script - Task 2)
├── sample_input.txt            (Test input file)
├── http_output.txt             (Output from Task 1)
├── text_output.txt             (Output from Task 2)
├── README.md                   (Documentation)
└── git_setup.sh                (Helper script)
```

---

## 🚀 Quick Submission Steps

### Option 1: Use the Helper Script (Recommended)

```bash
cd /home/vickytricky/Documents/Devops-Guvi/shell-task4
./git_setup.sh
```

This will:
- Initialize git repository
- Configure git user (if needed)
- Add all necessary files
- Create a commit with proper message

Then:
1. Create a new repository on GitHub (don't initialize with README)
2. Copy the repository URL
3. Run:
   ```bash
   git remote add origin <your-repo-url>
   git branch -M main
   git push -u origin main
   ```

### Option 2: Manual Git Setup

```bash
cd /home/vickytricky/Documents/Devops-Guvi/shell-task4

# Initialize repository
git init

# Configure user (if not already done)
git config user.name "Your Name"
git config user.email "your.email@example.com"

# Add files
git add http_status_checker.sh text_replacer.sh sample_input.txt README.md
git add http_output.txt text_output.txt git_setup.sh

# Commit
git commit -m "Add shell scripting tasks: HTTP status checker and text replacer"

# Create GitHub repo and push
git remote add origin <your-github-repo-url>
git branch -M main
git push -u origin main
```

---

## 📸 Screenshots Required

You need to capture screenshots of:

1. **HTTP Status Checker Output**
   ```bash
   ./http_status_checker.sh
   ```
   Screenshot should show the terminal with the colored output

2. **Text Replacer Output**
   ```bash
   ./text_replacer.sh sample_input.txt
   ```
   Screenshot should show the full output with replacements

3. **GitHub Repository**
   - Screenshot of your GitHub repo showing all files
   - Screenshot showing the code in the repository

### How to Take Screenshots on Ubuntu:
- **Full Screen**: Press `PrtSc` (Print Screen)
- **Selection**: Press `Shift + PrtSc`
- **Current Window**: Press `Alt + PrtSc`

Screenshots are saved to `~/Pictures/` by default.

---

## 🔗 What to Submit in Portal

1. **GitHub Repository URL**
   - Example: `https://github.com/yourusername/shell-task4`

2. **Screenshots** (upload to GitHub or include in README)
   - `screenshot_http_checker.png`
   - `screenshot_text_replacer.png`
   - `screenshot_github_repo.png`

---

## ✅ Pre-Submission Verification

Run these commands to verify everything works:

```bash
cd /home/vickytricky/Documents/Devops-Guvi/shell-task4

# Test HTTP checker
./http_status_checker.sh

# Test text replacer
./text_replacer.sh sample_input.txt

# Check file permissions
ls -lah *.sh

# Verify all files are present
ls -1
```

Expected output from `ls -1`:
```
git_setup.sh
http_output.txt
http_status_checker.sh
README.md
sample_input.txt
text_output.txt
text_replacer.sh
```

---

## 📝 Important Reminders

- ✅ Code is open-source (no confidential information)
- ✅ No company name mentioned in code
- ✅ All scripts are executable (`chmod +x` applied)
- ✅ Scripts work on Linux/Ubuntu
- ✅ Compatible with AWS, GitBash, WSL, VirtualBox
- ✅ Comprehensive documentation included

---

## 🎯 You're Ready!

All tasks are complete and verified. Just need to:
1. Run `./git_setup.sh` or manually setup git
2. Create GitHub repository
3. Push code to GitHub
4. Take screenshots
5. Submit URL in portal

**Good luck with your submission! 🚀**
