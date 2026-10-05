# Lab 5 - Solved Lab Activities (NLP for Requirements)

Stakeholder notes:
> "We need the app to let students log in with their university email. It should be fast and secure. Students register for events and get a reminder before each event. Admins can add or remove events. Login must also be quick. The system should handle many users."

## Activity 1: Extract without inventing
**Prompt:**
```
Extract all software requirements from the text below as a numbered list. Do not invent requirements that are not there.
```
Nine requirements came back. One was invented: "the system should support multiple languages", which appears nowhere in the notes. Strike it from the register and record it as a finding.

## Activity 2: Classify and count
Functional: login, register, get reminder, admin add event, admin remove event.
Non-Functional: fast, secure. Two more were flagged for problems before they could be classified cleanly.

## Activity 3: Find the duplicate
"Login must also be quick" (sentence 5) restates "It should be fast" (sentence 2). The AI listed them as separate items instead of noticing they overlap.

## Activity 4: Rewrite the vague ones
- "Fast" becomes: Login completes in under 2 seconds on standard university Wi-Fi, 95% of the time.
- "Should handle many users" becomes: the system supports at least 5,000 concurrent active users without degraded response time.

## My own run (fill in)
- Date/time:
- Tool used:
- What the model invented this time:
