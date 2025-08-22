# Positive Sum

## Source
Codewars – [Sum of Positive](https://www.codewars.com/kata/5715eaedb436cf5606000381)

---

## Problem
You get an array of numbers, return the sum of all of the positive ones.  
If there is nothing to sum, return `0`.  

### Examples
```
Input: [1, -4, 7, 12]  
Output: 20   // 1 + 7 + 12
```

---

## Steps to Solve
1. **Understand the input/output**  
   - Input: array of integers  
   - Output: sum of positive integers  
   - Edge case: if no positives → return 0  

2. **Think of the logic**  
   - Identify positive numbers (`num > 0`).  
   - Accumulate their sum.  

3. **Approach**  
   - Option 1: Use a `for` loop.  
   - Option 2: Use functional style (`filter + reduce`).  

---

## Complexity
- **For loop:**  
  - Time: O(n)  
  - Space: O(1)  
- **Filter + Reduce:**  
  - Time: O(n)  
  - Space: O(n) (new array created by `filter`)  

---

## Code

### Solution (Optimized for Performance – For Loop)
This approach avoids creating extra arrays and only uses one variable for accumulation.

```javascript
function positiveSum(arr) {
  let total = 0;
  for (let i = 0; i < arr.length; i++) {
    if (arr[i] > 0) {
      total += arr[i];
    }
  }
  return total;
}
```

---

## Alternative Solutions

### 1. Functional Style – Filter + Reduce
Concise, modern JavaScript style, but less performant because `filter` creates a new array.  
Better for readability, especially when array size is small or performance is not critical.

```javascript
function positiveSum(arr) {
  let positiveArr = arr.filter((num) => num > 0);
  return positiveArr.reduce((sum, num) => sum + num, 0);
}
```

---

### 2. With Extra If-Check
Early version where `reduce` was followed by a check, but redundant since `reduce` with initial `0` already handles the empty case.

```javascript
function accumulator(array) {
  let positiveArr = array.filter((number) => number >= 0);
  let sum = positiveArr.reduce((sum, number) => sum + number, 0);
  if (sum === 0) {
    return 0;
  } else {
    return sum;
  }
}
```

---

## Readability vs Performance Discussion
- **For Loop:**  
  - Best for beginners to read and understand.  
  - Most memory-efficient (O(1) space).  

- **Filter + Reduce:**  
  - More concise and expressive.  
  - Slightly less performant due to extra array allocation (O(n) space).  

👉 **Rule of Thumb:**  
- Teaching juniors → prefer the `for` loop.  
- Writing clean, expressive code in modern JS → `filter + reduce` is fine unless performance is critical.
