# Convert a String to a Number

## Source
Codewars – [Convert a String to a Number!](https://www.codewars.com/kata/544675c6f971f7399a000e79)

---

## Problem
We need a function that can transform a string into a number.

### Examples (input → output)
```js
"1234" → 1234
"605"  → 605
"1405" → 1405
"-7"   → -7
```

- Inputs are guaranteed to be strings containing valid integer representations.  
- Output must be a JavaScript **number**.  

---

## Steps to Solve
1. **Clarify input/output**  
   - Input: a string (always a valid integer string, may be negative or zero).  
   - Output: a number type.  

2. **Validation**  
   - Not required (all inputs are valid per spec).  

3. **Brute/simplest ideas**  
   - Use unary plus (`+str`) to coerce string to number.  
   - Use `parseInt(str)` or `parseFloat(str)`.  
   - Use `Number(str)`.  
   - Multiply by 1 (`str * 1`).  

4. **Chosen approach**  
   - Unary plus (`+str`) for conciseness and clarity.  

---

## Complexity
- **Time:** O(k), where `k` is the string length (parsing cost).  
- **Space:** O(1), only one number stored.  

---

## Solution (Unary Plus)
```javascript
function toNumber(str) {
  return +str;
}
```

---

## Alternative Solutions

### 1) Using `Number()`
```javascript
function toNumber(str) {
  return Number(str);
}
```

### 2) Using `parseInt()`
```javascript
function toNumber(str) {
  return parseInt(str, 10);
}
```

### 3) Multiply by 1 (implicit coercion)
```javascript
function toNumber(str) {
  return str * 1;
}
```

---

## Reflection
- Unary plus is the most concise and efficient for this kata.  
- `Number(str)` is explicit and very readable, making it a strong alternative.  
- `parseInt`/`parseFloat` are safe here but overkill, as inputs are guaranteed valid integers.  
- Key learning: JavaScript offers **multiple coercion methods**—pick the one that balances clarity and intent for the problem.
