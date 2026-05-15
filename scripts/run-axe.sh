#!/bin/bash
# Run accessibility tests locally before committing

set -e

echo "Building Quarto site..."
quarto render

echo "Starting local server..."
nohup npx http-server _site -p 3000 -s > /dev/null 2>&1 &
SERVER_PID=$!
sleep 3

# Verify server is up
if ! curl -s http://localhost:3000/index.html > /dev/null; then
    echo "Error: Failed to start server"
    kill $SERVER_PID 2>/dev/null
    exit 1
fi

# Get URLs from sitemap
PROD_URL="https://berkeley-cdss.github.io/$(basename $(pwd))"
LOCAL_URL="http://localhost:3000/"

URLS=$(cat _site/sitemap.xml | sed -n 's/.*<loc>\(.*\)<\/loc>.*/\1/p' | sed "s|$PROD_URL|$LOCAL_URL|" | tr '\n' ' ')

echo "Running Axe accessibility tests..."
axe $URLS --tags wcag2a,wcag2aa,wcag21a,wcag21aa --save axe-report.json

echo "Cleaning up..."
kill $SERVER_PID 2>/dev/null

echo "Done!"
