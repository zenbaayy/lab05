#!/bin/bash
# Diff tool cross-check: compare the two extraction runs, then verify quotes.
echo "=== diff: run 1 vs run 2 (lines unique to each run) ==="
diff <(sed 's/^[0-9]*\. //' run1_extraction.txt | sed 's/^The system should //;s/^The system shall //' | sort) \
     <(sed 's/^[0-9]*\. //' run2_extraction.txt | sed 's/^The system should //;s/^The system shall //' | sort)
echo
echo "=== invention present in BOTH runs? ==="
grep -il "multiple languages" run1_extraction.txt run2_extraction.txt
echo
echo "=== quote check against source ==="
python3 check_quotes.py
