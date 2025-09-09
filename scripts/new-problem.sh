#!/usr/bin/env bash
set -euo pipefail

# Usage:
#   bash scripts/new-problem.sh codewars 8kyu "sum-of-positive"
#   bash scripts/new-problem.sh leetcode easy "valid-parentheses"

if [[ $# -lt 3 ]]; then
  echo "Usage: $0 <platform: codewars|leetcode> <difficulty> <problem-slug-or-name>"
  exit 1
fi

PLATFORM="$1"   # codewars | leetcode
DIFF="$(echo "$2" | tr '[:upper:]' '[:lower:]')"
RAW_NAME="$3"

# Normalize to a kebab-case slug
SLUG="$(echo "$RAW_NAME" | tr '[:upper:]' '[:lower:]' | sed -E 's/[^a-z0-9]+/-/g; s/^-+//; s/-+$//')"

# camelCase from slug for the function export
camelize() {
  echo "$1" \
  | tr -cs 'a-zA-Z0-9' ' ' \
  | awk '{
      out="";
      for (i=1;i<=NF;i++) {
        w=$i;
        if (i==1) {
          out=tolower(w)
        } else {
          out=out"" toupper(substr(w,1,1)) tolower(substr(w,2))
        }
      }
      print out
    }'
}
FUNC_NAME="$(camelize "$SLUG")"
[[ -z "$FUNC_NAME" ]] && FUNC_NAME="solve"

# Destination matches your current repo layout (no year folders)
case "$PLATFORM" in
  codewars)
    DEST="codewars/${DIFF}/${SLUG}"
    LINK="https://www.codewars.com/kata/${SLUG}"
    ;;
  leetcode)
    DEST="leetcode/${DIFF}/${SLUG}"
    LINK="https://leetcode.com/problems/${SLUG}/"
    ;;
  *)
    echo "Unknown platform: $PLATFORM (use codewars or leetcode)"; exit 1;;
esac

# Build a human-friendly title and capitalized platform
TITLE="$(echo "$SLUG" | tr '-' ' ')"
PLATFORM_CAP="$(printf "%s" "$PLATFORM" | awk '{print toupper(substr($0,1,1)) tolower(substr($0,2))}')"

# Create directory
mkdir -p "$DEST"

# README.md
cat > "${DEST}/README.md" <<MD
# ${TITLE} (${PLATFORM_CAP} ${DIFF})

**Link:** ${LINK}

## Problem
(Write the problem summary in your own words.)

## Approach
(Briefly note the idea/algorithm.)

## Complexity
- Time:
- Space:

## Notes
-
MD

# solution.js
cat > "${DEST}/solution.js" <<JS
// ${PLATFORM} ${DIFF} – ${SLUG}
export function ${FUNC_NAME}(/* args */) {
  // TODO: implement
  return null;
}
JS

# solution.test.js
cat > "${DEST}/solution.test.js" <<JS
import test from 'node:test';
import assert from 'node:assert';
import { ${FUNC_NAME} } from './solution.js';

test('${SLUG} – basic shape', () => {
  assert.strictEqual(typeof ${FUNC_NAME}, 'function');
});
JS

echo "✓ Created ${DEST}"
echo "   - README.md"
echo "   - solution.js (export: ${FUNC_NAME})"
echo "   - solution.test.js"
