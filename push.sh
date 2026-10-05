#!/bin/bash
# Usage: ./push.sh "commit message"
git add .
git commit -m "${1:-Update labs}"
git push
