# Lab 5 - Graded Lab Tasks (10 marks)

Source sentences:
- S1: We need the app to let students log in with their university email.
- S2: It should be fast and secure.
- S3: Students register for events and get a reminder before each event.
- S4: Admins can add or remove events.
- S5: Login must also be quick.
- S6: The system should handle many users.

## Task 1 (3 marks): Requirements register with traceability
| ID | Requirement | Type | Source (verbatim) |
|----|-------------|------|-------------------|
| R1 | Students can log in with their university email | Functional | S1: "let students log in with their university email" |
| R2 | The system is fast | Non-Functional | S2: "It should be fast" |
| R3 | The system is secure | Non-Functional | S2: "and secure" |
| R4 | Students can register for events | Functional | S3: "Students register for events" |
| R5 | Students receive a reminder before each event | Functional | S3: "get a reminder before each event" |
| R6 | Admins can add events | Functional | S4: "Admins can add" |
| R7 | Admins can remove events | Functional | S4: "or remove events" |
| R8 | Login is quick (duplicate of R2) | Non-Functional | S5: "Login must also be quick" |
| R9 | The system handles many users | Non-Functional | S6: "The system should handle many users" |

**UNSOURCED (kept as findings):**
| ID | Requirement | Type | Source |
|----|-------------|------|--------|
| U1 | The system should support multiple languages | Non-Functional | UNSOURCED |
| U2 | The system should be available as a mobile app on iOS and Android | Non-Functional | UNSOURCED |

## Task 2 (2 marks): Catch the model inventing
> Replace the quotes below with the verbatim outputs from your own two runs.

- **Run 1** (`Extract all software requirements ... Do not invent requirements that are not there.`): invented "The system should support multiple languages."
- **Run 2** (`Act as a business analyst. List every requirement in these notes, one per line, in the form 'The system shall...'`): invented "The system shall support multiple languages." and "The system shall be accessible on mobile devices."
- **Over-reading:** "university email" and "students" made the model picture a diverse student body (languages); "app" made it assume mobile platforms.
- **Repeatable?** Yes. The language invention appeared in both runs despite an explicit "do not invent" instruction, which points to a systematic bias, so every extraction must be checked for it.

## Task 3 (3 marks): Testable rewrites with measurement
| Original | Rewrite | Measurement |
|----------|---------|-------------|
| S2 "fast" | 95% of event-list loads complete within 2 s (never above 3 s) on 10 Mbps campus Wi-Fi with 500 events | Run 100 scripted loads with a load tool (e.g. k6) and read the 95th-percentile time |
| S5 "quick" | 95% of logins complete within 2 s (max 5 s) with 100 simultaneous users | Run 200 logins at 100 concurrent users on staging and report the 95th percentile and maximum |
| S2 "secure" | Passwords stored as salted bcrypt (cost 12+), TLS 1.2+, lockout for 15 min after 5 failed logins, zero high-severity OWASP ZAP findings | Inspect the stored hash, make 6 wrong logins to confirm lockout, check TLS version, run a ZAP baseline scan |
| S6 "many users" | 5,000 concurrent users for 30 min, 95% of responses under 2 s, error rate below 1% (plus or minus 10% on user count) | Ramp up 5,000 virtual users against staging and read the 95th-percentile time and error rate |
| S3 "a reminder" | Reminder sent 24 h before start (plus or minus 15 min) for 99% of registrations | Create 100 test registrations and compare mail-log send times to event start times |

## Task 4 (2 marks): Duplicate and contradiction
- **Duplicate:** S2 "It should be fast" and S5 "Login must also be quick" both ask for login speed in different words.
- **Conflict:** "secure" (S2) and "quick" (S5) cannot both be fully satisfied as written. Slow password hashing, lockouts or a second verification step add seconds to login, and no limits are given for either.
- **Question for the stakeholder:** "If a second verification step makes login take about 4 seconds, is that acceptable, or must login stay under 2 seconds even if protection is weaker?"

## Take-home
Take a few sentences of real requirements from a past project or an app's documentation, run the same extract-trace-flag process, and write one line on what the model missed that a human would catch, and why.
