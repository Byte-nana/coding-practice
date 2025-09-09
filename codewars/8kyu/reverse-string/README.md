# Reverse String

## Source
Codewars – [Reversed Strings](https://www.codewars.com/kata/5168bb5dfe9a00b126000018)

---

## Problem
Complete the solution so that it reverses the string passed into it.

### Examples
```js
"world" → "dlrow"
"word"  → "drow"
```

- Input: always a string (can be empty, single char, contain spaces, punctuation, etc.)  
- Output: reversed string  

---

## Steps to Solve
1. **Understand input/output**  
   - Input: string  
   - Output: reversed string  

2. **First idea (manual loop)**  
   - Walk string from right → left.  
   - Append characters to a new result string.  
   - Return the result.  

3. **Optimized/Alternative idea**  
   - Convert to array with `split("")`, reverse it, then join back.  

---

## Complexity
- **Time:** O(n) — must visit each character.  
- **Space:** O(n) — new string allocated (and array for split method).  

---

## Solution (Manual Loop)
```javascript
function reverseStr(str) {
  let newStr = '';
  for (let i = str.length - 1; i >= 0; i--) {
    newStr += str[i];
  }
  return newStr;
}
```

---

## Alternative Solution (Using Built-in Methods)
```javascript
function reverseStr(str) {
  return str.split("").reverse().join("");
}
```

---

## Reflection
- Both loop and built-in approaches are O(n).  
- **Loop version**: more memory efficient, explicit, good for interviews.  
- **Split+Reverse+Join**: concise and idiomatic in JS, but creates intermediate arrays.  
- Key takeaway: pick the approach balancing clarity vs. performance depending on context.
