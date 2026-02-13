#!/bin/bash

#############################################
# Script: Git Setup and Submission Helper
# Description: Helps prepare the project for GitHub submission
# Author: Shell Task 4
# Date: 2026-02-03
#############################################

GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

echo "=========================================="
echo "Git Setup Helper for Shell Task 4"
echo "=========================================="
echo ""

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo -e "${YELLOW}Git is not installed. Please install git first.${NC}"
    echo "Run: sudo apt install git -y"
    exit 1
fi

# Initialize git if not already initialized
if [ ! -d ".git" ]; then
    echo -e "${BLUE}Initializing Git repository...${NC}"
    git init
    echo -e "${GREEN}✓ Git repository initialized${NC}"
else
    echo -e "${GREEN}✓ Git repository already exists${NC}"
fi

# Configure git user if not set
if [ -z "$(git config user.name)" ]; then
    echo ""
    echo -e "${YELLOW}Git user not configured. Please enter your details:${NC}"
    read -p "Enter your name: " git_name
    read -p "Enter your email: " git_email
    git config user.name "$git_name"
    git config user.email "$git_email"
    echo -e "${GREEN}✓ Git user configured${NC}"
fi

echo ""
echo -e "${BLUE}Adding files to git...${NC}"
git add http_status_checker.sh text_replacer.sh sample_input.txt README.md
git add http_output.txt text_output.txt

echo -e "${GREEN}✓ Files added${NC}"

echo ""
echo -e "${BLUE}Creating commit...${NC}"
git commit -m "Add shell scripting tasks: HTTP status checker and text replacer

- HTTP status checker for guvi.in with success/failure messages
- Text replacement script with conditional logic
- Sample input file and test outputs
- Comprehensive documentation"

echo -e "${GREEN}✓ Commit created${NC}"

echo ""
echo "=========================================="
echo -e "${GREEN}Git repository is ready!${NC}"
echo "=========================================="
echo ""
echo "Next steps:"
echo "1. Create a new repository on GitHub"
echo "2. Copy the repository URL"
echo "3. Run the following commands:"
echo ""
echo -e "${BLUE}   git remote add origin <your-github-repo-url>${NC}"
echo -e "${BLUE}   git branch -M main${NC}"
echo -e "${BLUE}   git push -u origin main${NC}"
echo ""
echo "=========================================="
