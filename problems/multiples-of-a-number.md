# Multiples of a Number

## Source
Codewars – [Count by X](https://www.codewars.com/kata/5513795bd3fafb56c200049e)

---

## Problem
Create a function with two arguments that will return an array of the first `n` multiples of `x`.  
Assume both arguments are positive integers greater than 0.  

### Examples
```js
solution(1, 10) → [1,2,3,4,5,6,7,8,9,10]
solution(2, 5)  → [2,4,6,8,10]
solution(3, 3)  → [3,6,9]
solution(1, 1)  → [1]
```

---

## Steps to Solve
1. **Understand input/output**  
   - Input: two positive integers `x` (base) and `n` (count).  
   - Output: an array of first `n` multiples of `x`.  

2. **Brute force idea**  
   - Start with empty array.  
   - Loop from 1 → n, multiply `x * i`, push result.  
   - Return the array.  

3. **Alternative ideas**  
   - Use `Array.from` with mapping callback.  
   - Use spread `...Array(n)` + `map` trick.  

---

## Complexity
- **Time:** O(n) — must generate n multiples.  
- **Space:** O(n) — result array length n.  

---

## Solution (For Loop)
```javascript
function solution(x, n) {
  let result = [];
  for (let i = 1; i <= n; i++) {
    result.push(x * i);
  }
  return result;
}
```

---

## Alternative Solution 1 (Array.from)
```javascript
function solution(x, n) {
  return Array.from({ length: n }, (_, i) => x * (i + 1));
}
```

---

## Alternative Solution 2 (Spread + Map)
```javascript
function solution(x, n) {
  return [...Array(n)].map((_, i) => x * (i + 1));
}
```
> Note: works, but less clean than `Array.from` because it uses the spread trick to turn empty slots into `undefined` values.

---

## Reflection
- The **for loop** is the most explicit and efficient, good for interviews.  
- **Array.from** is modern, expressive, and avoids spread hacks.  
- **Spread + Map** is concise but less idiomatic; good to know, but not preferred.  
- All three are O(n) time and space.  
- Key takeaway: choose style based on readability and audience (loop for clarity, Array.from for modern JS).
