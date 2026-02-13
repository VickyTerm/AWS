# Shell Task 4 - Visual Guide

## 📊 Project Structure

```
shell-task4/
│
├── 📘 Documentation Files (READ THESE)
│   ├── START_HERE.txt          ← Read this FIRST!
│   ├── .understand             ← Complete explanation
│   ├── SUBMISSION_GUIDE.md     ← How to submit
│   └── README.md               ← Technical docs
│
├── 🔧 Main Scripts (YOUR ASSIGNMENT)
│   ├── http_status_checker.sh  ← Task 1: Check guvi.in
│   └── text_replacer.sh        ← Task 2: Replace text
│
├── 🎬 Helper Scripts
│   ├── demo.sh                 ← Shows how everything works
│   └── git_setup.sh            ← Prepares for GitHub
│
└── 📄 Test & Output Files
    ├── sample_input.txt        ← Test file for Task 2
    ├── http_output.txt         ← Task 1 output
    └── text_output.txt         ← Task 2 output
```

---

## 🎯 Task 1: HTTP Status Checker

### What it does:
```
┌─────────────────────────────────────────────────────────┐
│  Script: http_status_checker.sh                         │
├─────────────────────────────────────────────────────────┤
│                                                          │
│  1. Connect to https://guvi.in                          │
│  2. Get HTTP status code (e.g., 200, 301, 404, 500)    │
│  3. Check the code range:                               │
│     • 200-299 → SUCCESS ✓                               │
│     • 300-399 → REDIRECT →                              │
│     • 400-499 → CLIENT ERROR ⚠                          │
│     • 500-599 → SERVER ERROR ✗                          │
│  4. Print colored message                               │
│                                                          │
└─────────────────────────────────────────────────────────┘
```

### How to run:
```bash
./http_status_checker.sh
```

### Example output:
```
==========================================
HTTP Status Code Checker for guvi.in
==========================================

Checking https://guvi.in...
HTTP Status Code: 301

→ REDIRECT
The website returned a redirect response.
Status Code 301 indicates the resource has been redirected.
```

---

## 🎯 Task 2: Text Replacer

### What it does:
```
┌─────────────────────────────────────────────────────────┐
│  Script: text_replacer.sh                               │
├─────────────────────────────────────────────────────────┤
│                                                          │
│  Rules:                                                  │
│  1. Read file line by line                              │
│  2. For lines 1-4: Keep unchanged                       │
│  3. For lines 5+:                                        │
│     IF line contains "welcome"                          │
│        THEN replace "give" → "learning"                 │
│     ELSE keep line unchanged                            │
│                                                          │
└─────────────────────────────────────────────────────────┘
```

### Visual Example:

```
INPUT FILE (sample_input.txt):
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Line 1: This is line 1 - no changes should happen here
Line 2: This is line 2 - give me something but no welcome here
Line 3: Line 3 contains give but not the magic word
Line 4: Line 4: I give you a welcome message
Line 5: Line 5: welcome to the session, I give you my best regards
Line 6: Line 6: I will give you a warm welcome to our platform
Line 7: Line 7: give without welcome should not change
Line 8: Line 8: welcome here, we give and give again
Line 9: Line 9: no special words here
Line 10: Line 10: welcome! I give you this opportunity to learn
Line 11: Line 11: just a regular line with give
Line 12: Line 12: a warm welcome, give it your all
Line 13: Line 13: give me a break
Line 14: Line 14: welcome aboard, we give you the tools
Line 15: Line 15: final line - welcome and give you success

OUTPUT (after running script):
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Line 1: This is line 1 - no changes should happen here          ← No change (line 1-4)
Line 2: This is line 2 - give me something but no welcome here  ← No change (line 1-4)
Line 3: Line 3 contains give but not the magic word             ← No change (line 1-4)
Line 4: Line 4: I give you a welcome message                    ← No change (line 1-4)
Line 5: Line 5: welcome to the session, I learning you my best regards  ← CHANGED! (has "welcome")
Line 6: Line 6: I will learning you a warm welcome to our platform      ← CHANGED! (has "welcome")
Line 7: Line 7: learning without welcome should not change      ← CHANGED! (has "welcome")
Line 8: Line 8: welcome here, we learning and learning again    ← CHANGED! (has "welcome")
Line 9: Line 9: no special words here                           ← No change (no "welcome")
Line 10: Line 10: welcome! I learning you this opportunity to learn     ← CHANGED! (has "welcome")
Line 11: Line 11: just a regular line with give                 ← No change (no "welcome")
Line 12: Line 12: a warm welcome, learning it your all          ← CHANGED! (has "welcome")
Line 13: Line 13: give me a break                               ← No change (no "welcome")
Line 14: Line 14: welcome aboard, we learning you the tools     ← CHANGED! (has "welcome")
Line 15: Line 15: final line - welcome and learning you success ← CHANGED! (has "welcome")
```

### How to run:
```bash
./text_replacer.sh sample_input.txt
```

---

## 🚀 Quick Start (3 Steps)

### Step 1: Open Terminal
Press `Ctrl + Alt + T`

### Step 2: Navigate to folder
```bash
cd /home/vickytricky/Documents/Devops-Guvi/shell-task4
```

### Step 3: Run the demo
```bash
./demo.sh
```

This will show you everything step-by-step!

---

## 📤 Submission Flow

```
┌──────────────────┐
│  Your Computer   │
│  (Local Files)   │
└────────┬─────────┘
         │
         │ 1. Run: ./git_setup.sh
         │    (Prepares Git repository)
         │
         ▼
┌──────────────────┐
│   Git Ready!     │
│  (Committed)     │
└────────┬─────────┘
         │
         │ 2. Create repo on GitHub.com
         │
         ▼
┌──────────────────┐
│  GitHub.com      │
│  (New Repo)      │
└────────┬─────────┘
         │
         │ 3. git remote add origin <url>
         │    git push -u origin main
         │
         ▼
┌──────────────────┐
│  Code on GitHub! │
│  (Public Repo)   │
└────────┬─────────┘
         │
         │ 4. Copy GitHub URL
         │
         ▼
┌──────────────────┐
│  Submit in       │
│  Portal          │
└──────────────────┘
```

---

## 🎓 What You're Learning

### 1. Shell Scripting
- Creating executable scripts
- Using variables
- Conditional logic (if-else)
- Functions and commands

### 2. HTTP Concepts
- Status codes (200, 301, 404, 500)
- Using curl to make requests
- Understanding web responses

### 3. Text Processing
- Line-by-line file processing
- Pattern matching
- Conditional text replacement
- Using awk for text manipulation

### 4. Version Control
- Git basics
- GitHub workflow
- Repository management

---

## ❓ Common Questions

**Q: Do I need to write the code?**
A: No! The code is already written and tested. You just need to understand it and submit it.

**Q: How do I run the scripts?**
A: Open terminal, navigate to the folder, and run `./demo.sh` to see everything.

**Q: What if I get "Permission denied"?**
A: Run `chmod +x *.sh` to make all scripts executable.

**Q: What do I submit?**
A: Your GitHub repository URL with all the code files.

**Q: Do I need to take screenshots?**
A: Yes, take screenshots of both script outputs and your GitHub repository.

---

## 📞 Need More Help?

Read these files in order:
1. `START_HERE.txt` - Quick overview
2. `.understand` - Complete explanation
3. `SUBMISSION_GUIDE.md` - Submission steps
4. `README.md` - Technical details

Run the demo:
```bash
./demo.sh
```

---

## ✅ Checklist

- [ ] Read START_HERE.txt
- [ ] Run ./demo.sh to see how it works
- [ ] Understand what each script does
- [ ] Run ./git_setup.sh
- [ ] Create GitHub repository
- [ ] Push code to GitHub
- [ ] Take screenshots
- [ ] Submit URL in portal

---

**You're all set! Everything is ready to go. Just follow the steps! 🚀**
