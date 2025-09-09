# Repeat String

## Problem
Write a function that accepts a non-negative integer n and a string s as parameters, and returns a string of s repeated exactly n times.

## Steps to Solve
1. Understand the question & examples
2. Plan strategy: loop or use String.repeat()
3. Define logic: validate input, repeat string
4. Pseudocode
5. JavaScript implementation

## Complexity
- Time: O(n × |s|)
- Space: O(n × |s|)

## Code
```js
function repeatStr(n, s) { 
  if (Number.isInteger(n) && n >= 0) { 
    return s.repeat(n);
  } else { 
    return 'You should pass the positive integer!!'; 
  }
}
```
