"""Cross-check every register row against the source text (verbatim quote test)."""
import csv
src = open("source.txt", encoding="utf-8").read().lower()
for row in csv.DictReader(open("register.csv", encoding="utf-8")):
    q = row["source_quote"]
    if q == "UNSOURCED":
        status = "UNSOURCED (finding - keep)"
    else:
        status = "VERIFIED" if q.lower() in src else "NOT FOUND"
    print(f'{row["id"]:3} {status:28} {row["requirement"]}')
