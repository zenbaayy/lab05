# CSE325 - Lab 05: NLP for Requirements Engineering & Automated Requirement Analysis

Name: Zainab | Reg. No: SP24-BSE-034 | COMSATS University Islamabad, Vehari Campus

## Tools (as named in the lab manual)
Chat LLM, table tool for the requirements register, diff tool to cross-check extraction against the source.

## Files
| File | Purpose |
|------|---------|
| `Lab05_Requirements_Register.xlsx` | Register with a formula-based traceability check, invention record, testable rewrites, duplicate and conflict |
| `diff/` | Diff cross-check: `source.txt`, two extraction runs, `register.csv`, `check_quotes.py`, `run_diff.sh`, `diff_output.txt` |
| `activities.md` | Solved Lab Activities |
| `tasks.md` | Graded Lab Tasks 1-4 |
| `docs/` | Word version of the graded tasks |

Run the diff check: `cd diff && ./run_diff.sh`
The two extraction runs are samples. Replace them with the verbatim output from your own two runs.

## Push this lab
git init
git branch -M main
git add .
git commit -m "Lab 5: requirements register, diff check, activities and graded tasks"
git remote add origin https://github.com/zenbaayy/CSE325-Lab05.git
git push -u origin main
