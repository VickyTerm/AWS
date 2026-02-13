#!/bin/bash

#############################################
# Script: HTTP Status Code Checker
# Description: Checks the HTTP status code of guvi.in
#              and prints success/failure message
# Author: Shell Task 4
# Date: 2026-02-03
#############################################

# Color codes for better output visibility
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Target URL
URL="https://guvi.in"

echo "=========================================="
echo "HTTP Status Code Checker for guvi.in"
echo "=========================================="
echo ""

# Fetch HTTP status code using curl
echo "Checking $URL..."
HTTP_CODE=$(curl -o /dev/null -s -w "%{http_code}" "$URL")

# Check if curl command was successful
if [ $? -ne 0 ]; then
    echo -e "${RED}ERROR: Failed to connect to $URL${NC}"
    echo "Please check your internet connection or if the URL is accessible."
    exit 1
fi

echo "HTTP Status Code: $HTTP_CODE"
echo ""

# Determine success/failure based on HTTP status code
if [ "$HTTP_CODE" -ge 200 ] && [ "$HTTP_CODE" -lt 300 ]; then
    echo -e "${GREEN}✓ SUCCESS${NC}"
    echo "The website is responding successfully!"
    echo "Status Code $HTTP_CODE indicates a successful HTTP request."
    exit 0
elif [ "$HTTP_CODE" -ge 300 ] && [ "$HTTP_CODE" -lt 400 ]; then
    echo -e "${BLUE}→ REDIRECT${NC}"
    echo "The website returned a redirect response."
    echo "Status Code $HTTP_CODE indicates the resource has been redirected."
    exit 0
elif [ "$HTTP_CODE" -ge 400 ] && [ "$HTTP_CODE" -lt 500 ]; then
    echo -e "${YELLOW}✗ CLIENT ERROR${NC}"
    echo "There was a client-side error."
    echo "Status Code $HTTP_CODE indicates an issue with the request."
    exit 1
elif [ "$HTTP_CODE" -ge 500 ] && [ "$HTTP_CODE" -lt 600 ]; then
    echo -e "${RED}✗ SERVER ERROR${NC}"
    echo "The server encountered an error."
    echo "Status Code $HTTP_CODE indicates a server-side issue."
    exit 1
else
    echo -e "${RED}✗ UNKNOWN ERROR${NC}"
    echo "Received an unexpected status code: $HTTP_CODE"
    exit 1
fi
