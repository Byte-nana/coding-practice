# Opposite Number

## Source
Codewars – [Opposite number](https://www.codewars.com/kata/56dec885c54a926dcd001095)

---

## Problem
Very simple: given a number, return its opposite (additive inverse).  

### Examples
```js
opposite(1)   → -1
opposite(14)  → -14
opposite(-34) → 34
opposite(0)   → 0
```

- Input: always a number (integer or decimal, including zero).  
- Output: the additive inverse.  

---

## Steps to Solve
1. **Understand input/output**  
   - Input: a number  
   - Output: its opposite  

2. **First idea**  
   - Multiply the number by `-1`.  

3. **Alternative idea**  
   - Use the negation operator (`-num`).  

---

## Complexity
- **Time:** O(1) — constant-time operation.  
- **Space:** O(1) — no extra memory.  

---

## Solution (Multiply by -1)
```javascript
function opposite(num) {
  return num * -1;
}
```

---

## Alternative Solution (Negation Operator)
```javascript
function opposite(num) {
  return -num;
}
```

---

## Reflection
- Both methods are equivalent in performance (O(1)).  
- `-num` is the simplest and most idiomatic in JavaScript.  
- Multiplying by `-1` is equally valid and clear.  
