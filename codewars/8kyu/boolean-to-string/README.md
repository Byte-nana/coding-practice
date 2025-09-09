# Boolean to String (Yes or No)

## Source
Codewars – [Convert boolean values to strings 'Yes' or 'No'](https://www.codewars.com/kata/53369039d7ab3ac506000467)

---

## Problem
Complete the method that takes a boolean value and return a `"Yes"` string for `true`, or a `"No"` string for `false`.  

### Examples
```js
toString(true);  // "Yes"
toString(false); // "No"
```

- Input: strict boolean (`true` or `false`).  
- Output: `"Yes"` if input is `true`, `"No"` if input is `false`.  

---

## Steps to Solve
1. **Understand input/output**  
   - Input: boolean  
   - Output: `"Yes"` or `"No"`  

2. **First idea**  
   - Check if boolean is `true` → return `"Yes"`  
   - Else → return `"No"`  

3. **Alternative ideas**  
   - Simplify ternary without `=== true`.  
   - Use explicit `if/else`.  

---

## Complexity
- **Time:** O(1) — constant-time check.  
- **Space:** O(1) — only returning string literals.  

---

## Solution (Ternary with Explicit Check)
```javascript
function toString(boolean) {
  return boolean === true ? "Yes" : "No";
}
```

---

## Alternative Solution 1 (Simplified Ternary)
```javascript
function toString(boolean) {
  return boolean ? "Yes" : "No";
}
```

---

## Alternative Solution 2 (If/Else)
```javascript
function toString(boolean) {
  if (boolean) {
    return "Yes";
  } else {
    return "No";
  }
}
```

---

## Reflection
- Ternary is concise and expressive.  
- Explicit `=== true` is unnecessary since the input is always a boolean.  
- `if/else` is more verbose but very readable for beginners.  
