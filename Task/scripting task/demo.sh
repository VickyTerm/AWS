#!/bin/bash

#############################################
# DEMO SCRIPT - Shows how everything works
# Run this to see both scripts in action
#############################################

clear

echo "╔════════════════════════════════════════════════════════════════╗"
echo "║                  SHELL TASK 4 - DEMO                           ║"
echo "║              This will show you how everything works           ║"
echo "╚════════════════════════════════════════════════════════════════╝"
echo ""
echo "Press ENTER to continue..."
read

clear
echo "╔════════════════════════════════════════════════════════════════╗"
echo "║                    TASK 1: HTTP STATUS CHECKER                 ║"
echo "╚════════════════════════════════════════════════════════════════╝"
echo ""
echo "This script checks if guvi.in website is working."
echo "It will show you the HTTP status code and a message."
echo ""
echo "Running: ./http_status_checker.sh"
echo ""
echo "Press ENTER to run..."
read

./http_status_checker.sh

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "EXPLANATION:"
echo "- The script connected to https://guvi.in"
echo "- It got HTTP status code: 301 (Redirect)"
echo "- This means the website is working, just redirecting to another URL"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "Press ENTER to continue to Task 2..."
read

clear
echo "╔════════════════════════════════════════════════════════════════╗"
echo "║                    TASK 2: TEXT REPLACER                       ║"
echo "╚════════════════════════════════════════════════════════════════╝"
echo ""
echo "This script replaces 'give' with 'learning' in a file."
echo "Rules:"
echo "  1. Only from line 5 onwards (lines 1-4 stay unchanged)"
echo "  2. Only in lines that contain the word 'welcome'"
echo ""
echo "First, let's see the ORIGINAL file:"
echo ""
echo "Press ENTER to view original file..."
read

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
cat -n sample_input.txt
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "Notice:"
echo "  - Lines 1-4 have 'give' but should NOT be changed"
echo "  - Line 11 has 'give' but NO 'welcome' - should NOT change"
echo "  - Line 13 has 'give' but NO 'welcome' - should NOT change"
echo "  - Lines 5,6,8,10,12,14,15 have BOTH 'welcome' and 'give' - WILL change"
echo ""
echo "Press ENTER to run the replacement script..."
read

clear
echo "╔════════════════════════════════════════════════════════════════╗"
echo "║                    RUNNING TEXT REPLACER                       ║"
echo "╚════════════════════════════════════════════════════════════════╝"
echo ""

./text_replacer.sh sample_input.txt

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "WHAT HAPPENED:"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✓ Lines 1-4: Kept 'give' (before line 5)"
echo "✓ Line 5: 'give' → 'learning' (has 'welcome')"
echo "✓ Line 6: 'give' → 'learning' (has 'welcome')"
echo "✓ Line 7: 'give' → 'learning' (has 'welcome')"
echo "✓ Line 8: 'give' → 'learning' (has 'welcome')"
echo "✓ Line 11: Kept 'give' (no 'welcome')"
echo "✓ Line 13: Kept 'give' (no 'welcome')"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "Press ENTER to see next steps..."
read

clear
echo "╔════════════════════════════════════════════════════════════════╗"
echo "║                    WHAT TO DO NEXT?                            ║"
echo "╚════════════════════════════════════════════════════════════════╝"
echo ""
echo "You have completed the coding part! Now you need to submit:"
echo ""
echo "STEP 1: Setup Git Repository"
echo "        Run: ./git_setup.sh"
echo ""
echo "STEP 2: Create GitHub Repository"
echo "        - Go to github.com"
echo "        - Click 'New Repository'"
echo "        - Name it: shell-task4"
echo "        - Don't initialize with README"
echo "        - Copy the repository URL"
echo ""
echo "STEP 3: Push to GitHub"
echo "        git remote add origin <your-repo-url>"
echo "        git branch -M main"
echo "        git push -u origin main"
echo ""
echo "STEP 4: Take Screenshots"
echo "        - Screenshot of ./http_status_checker.sh output"
echo "        - Screenshot of ./text_replacer.sh output"
echo "        - Screenshot of GitHub repository"
echo ""
echo "STEP 5: Submit"
echo "        - Submit GitHub URL in portal"
echo "        - Upload screenshots"
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "📖 For detailed instructions, read:"
echo "   - .understand (complete explanation)"
echo "   - SUBMISSION_GUIDE.md (step-by-step submission)"
echo "   - README.md (technical documentation)"
echo ""
echo "╔════════════════════════════════════════════════════════════════╗"
echo "║                    DEMO COMPLETE!                              ║"
echo "╚════════════════════════════════════════════════════════════════╝"
