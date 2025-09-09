# Convert Integer to String

## Source
Codewars – [Convert a Number to a String!](https://www.codewars.com/kata/5265326f5fda8eb1160004c8)

---

## Problem
We need a function that can transform a number (safe integer) into a plain decimal string.

### Examples (input → output)
```js
123   → "123"
999   → "999"
-100  → "-100"
```

- Inputs are guaranteed to be **JavaScript safe integers** (can be negative or zero).  
- Output must be a **plain decimal string** (no commas/locale formatting).  

---

## Steps to Solve
1. **Clarify input/output**  
   - Input: a single **safe integer** (`number` type).  
   - Output: its decimal **string** representation.

2. **Validation**  
   - If the argument is **not** a safe integer → return `undefined`.  
   - Use `Number.isSafeInteger(x)` to enforce the spec.

3. **Brute/simplest ideas**  
   - Concatenate with an empty string (`num + ""`).  
   - Use the global `String(num)` function.  
   - Call the number’s method `num.toString()`.

4. **Chosen approach**  
   - Use `num.toString()` for explicitness and clarity; validate first.

---

## Complexity
- **Time:** O(k), where `k` is the number of digits in the integer.  
- **Space:** O(k) for the resulting string.

---

## Solution (Validated + Explicit)
```javascript
function changetoStr(num) {
  if (!Number.isSafeInteger(num)) {
    return undefined;
  }
  return num.toString();
}
```

---

## Alternative Solutions

### 1) Using `String(num)`
```javascript
function changetoStr(num) {
  if (!Number.isSafeInteger(num)) return undefined;
  return String(num);
}
```

### 2) Using concatenation (implicit conversion)
```javascript
function changetoStr(num) {
  if (!Number.isSafeInteger(num)) return undefined;
  return num + "";
}
```
> Note: concise but less self-documenting than `toString()`/`String()`.

---

## Reflection
- Validating with `Number.isSafeInteger` prevents accidental acceptance of floats, `NaN`, or non-number types.  
- Multiple conversion methods exist; `toString()` is explicit and communicates intent clearly.  
- For interviews/katas: state the spec, handle edge cases (`0`, negatives), and keep the API behavior explicit for invalid inputs.
