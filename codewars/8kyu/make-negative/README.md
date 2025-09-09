# Make Negative

## Source
Codewars – [Return Negative](https://www.codewars.com/kata/55685cd7ad70877c23000102)

---

## Problem
In this simple assignment you are given a number and have to make it negative.  
But maybe the number is already negative?

### Examples
```js
makeNegative(1);    // → -1
makeNegative(-5);   // → -5
makeNegative(0);    // → 0
makeNegative(0.12); // → -0.12
```

- Input: a number (integer or decimal, can be zero).  
- Output: always return the **negative form** of the number.  
- Zero (0) should remain 0.  

---

## Steps to Solve
1. **Understand input/output**  
   - Input: number  
   - Output: negative form of number (or zero).  

2. **First idea**  
   - Check if number is positive → multiply by -1.  
   - If number is negative or zero → return as is.  

3. **Alternative idea**  
   - Use `Math.abs()` to always take absolute value and return its negative.  

---

## Complexity
- **Time:** O(1) — constant-time operation.  
- **Space:** O(1) — no extra memory.  

---

## Solution (Ternary Operator)
```javascript
function makeNegative(num) {
  return num > 0 ? -num : num;
}
```

---

## Alternative Solution (Math.abs)
```javascript
function makeNegative(num) {
  return -Math.abs(num);
}
```

---

## Reflection
- Both methods are O(1).  
- Ternary operator is explicit and very readable.  
- `Math.abs` solution is concise and guarantees the result is never positive.  
- Either is valid; `Math.abs` is slightly more elegant in this specific problem.
