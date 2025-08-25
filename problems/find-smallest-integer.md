# Find the Smallest Integer in the Array

## Source
Codewars – [Find the smallest integer in the array](https://www.codewars.com/kata/55a2d7ebe362935a210000b2)

---

## Problem
Given an array of integers, return the smallest integer.

### Examples
```js
findSmallest([34, 15, 88, 2])    // → 2
findSmallest([34, -345, -1, 100]) // → -345
findSmallest([7])                 // → 7
```

- The array is guaranteed to be non-empty.  
- Elements are integers.  

---

## Steps to Solve
1. **Understand input/output**  
   - Input: non-empty array of integers.  
   - Output: single integer (the minimum).  

2. **Edge cases**  
   - Single element `[42]` → return 42  
   - All negatives `[-5, -100, -3]` → return -100  
   - All equal `[7,7,7]` → return 7  
   - Already sorted / reverse sorted  

3. **First idea (brute force)**  
   - Compare all pairs of numbers.  
   - Complexity O(n²), too slow for large arrays.  

4. **Optimized idea**  
   - Track a running minimum while scanning left → right.  
   - Update whenever a smaller number is found.  
   - Complexity O(n) time, O(1) space.  

---

## Complexity
- **Time:** O(n) — one pass through the array.  
- **Space:** O(1) — only one variable to track the current minimum.  

---

## Solution (Optimized – Using Reduce)
```javascript
function findSmallest(arr) {
  if (!Array.isArray(arr) || arr.length === 0) {
    throw new Error("Input must be a non-empty array");
  }

  return arr.reduce((acc, curr) => {
    return curr < acc ? curr : acc;
  });
}
```

---

## Alternative Solutions

### 1. For...of Loop (imperative style)
```javascript
function findSmallest(arr) {
  if (!Array.isArray(arr) || arr.length === 0) {
    throw new Error("Input must be a non-empty array");
  }

  let currentMin = arr[0];
  for (const num of arr) {
    if (num < currentMin) {
      currentMin = num;
    }
  }
  return currentMin;
}
```

### 2. Math.min + Spread (concise, but unsafe for very large arrays)
```javascript
function findSmallest(arr) {
  if (!Array.isArray(arr) || arr.length === 0) {
    throw new Error("Input must be a non-empty array");
  }
  return Math.min(...arr);
}
```

### 3. Sort and Take First (O(n log n), mutates without copy)
```javascript
function findSmallest(arr) {
  if (!Array.isArray(arr) || arr.length === 0) {
    throw new Error("Input must be a non-empty array");
  }
  return arr.slice().sort((a, b) => a - b)[0];
}
```

---

## Reflection
- The brute force solution is intuitive but inefficient (O(n²)).  
- The **reduce** or **for...of** solution is the best balance of readability and efficiency (O(n) / O(1)).  
- `Math.min(...arr)` is elegant but unsafe on very large arrays due to argument limits in JS engines.  
- Sorting works but is slower (O(n log n)) and mutates the input unless you copy first.  

👉 Key learning: **always start with the simplest brute force, then refine to O(n) with a running minimum.**
