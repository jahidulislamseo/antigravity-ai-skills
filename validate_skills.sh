#!/bin/bash
# SyncPay BD Skill Validator
echo "Scanning skills..."
SKILL_COUNT=$(find skills/ -name "SKILL.md" 2>/dev/null | wc -l | tr -d ' ')
echo "Total: $SKILL_COUNT skills found"
ERRORS=0
while IFS= read -r f; do
  grep -q "^name:" "$f" || { echo "FAIL: $f missing name"; ERRORS=$((ERRORS+1)); }
  grep -q "^description:" "$f" || { echo "FAIL: $f missing description"; ERRORS=$((ERRORS+1)); }
done < <(find skills/ -name "SKILL.md" 2>/dev/null)
[ $ERRORS -eq 0 ] && echo "All $SKILL_COUNT skills valid!" || exit 1
