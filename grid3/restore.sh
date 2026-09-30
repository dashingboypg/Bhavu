#!/bin/bash
set -e

BASE="$(cd "$(dirname "$0")" && pwd)"

echo "=== GRID3 RESTORE ==="

python3 -m venv "$BASE/deltaenv"
"$BASE/deltaenv/bin/pip" install --upgrade pip
"$BASE/deltaenv/bin/pip" install -r "$BASE/requirements.txt"

echo
echo "Python environment restored."
echo
echo "IMPORTANT:"
echo "1. AWS IAM access to Secrets Manager must be available."
echo "2. Secret 'Bhavu' must exist."
echo "3. API credentials remain outside this repository."
echo "4. Review grid3_state.json before starting a restored live bot."
echo
echo "To start with PM2:"
echo "pm2 start ecosystem.config.js"
echo "pm2 save"
