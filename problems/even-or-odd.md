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

## Solution (JavaScript)

```js
function evenOdd(number) {
  return number % 2 === 0 ? 'Even' : 'Odd';
}
```

---

## Explanation
- We use the modulo operator `%` to check divisibility by 2.  
- If `number % 2 === 0`, the number is even → return `"Even"`.  
- Otherwise, return `"Odd"`.  

**Complexity:** O(1) — constant time check.
