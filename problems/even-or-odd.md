# Even or Odd

**Source:** Codewars  

## Problem
Create a function that takes an integer as an argument and returns `"Even"` for even numbers or `"Odd"` for odd numbers.

**Examples**
```
Input: 2 → Output: "Even"  
Input: 7 → Output: "Odd"
```

---

## Steps to Solve
1. **Understand the question**  
   - Input: integer  
   - Output: `"Even"` or `"Odd"`  

2. **Think of the logic**  
   - `number % 2 === 0 → Even`  
   - `number % 2 !== 0 → Odd`  

3. **Write pseudocode**  
   - If remainder is 0, return `"Even"`.  
   - Else return `"Odd"`.  

---

## Solutions

### Solution 1 – if/else version
```javascript
function evenOdd(number) {
  if (number % 2 === 0) {
    return 'Even';
  } else {
    return 'Odd';
  }
}

---
### Solution 2 – ternary operator version

function evenOdd(number) {
  return number % 2 === 0 ? 'Even' : 'Odd';
}

