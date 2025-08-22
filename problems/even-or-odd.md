# Even or Odd

## Source
[Codewars - Remove String Spaces](https://www.codewars.com/kata/53da3dbb4a5168369a0000fe)

## Problem
Create a function that takes an integer as an argument and returns `"Even"` for even numbers or `"Odd"` for odd numbers.

### Examples
- Input: `2` → Output: `"Even"`
- Input: `7` → Output: `"Odd"`
- Input: `0` → Output: `"Even"`

---

## Steps to Solve
1. **Understand the problem**  
   - The function accepts one integer parameter.  
   - If the number is divisible by 2, return `"Even"`.  
   - Otherwise, return `"Odd"`.  

2. **Plan the logic**  
   - Use the modulo operator `%`.  
   - `number % 2 === 0` means the number is even.  
   - Otherwise, it is odd.  

3. **Write the code**  
   - First try with a standard `if/else`.  
   - Then write a shorter alternative with a ternary operator.  

---

## Solution 1 – Using if/else

```javascript
function evenOdd(number) {
  if (number % 2 === 0) {
    return 'Even';
  } else {
    return 'Odd';
  }
}
```

---

## Solution 2 – Using ternary operator

The ternary operator allows a shorter form of the condition.

```javascript
function evenOdd(number) {
  return number % 2 === 0 ? 'Even' : 'Odd';
}
```

---

## Explanation
- `%` (modulo) gives the remainder after division.  
- If `number % 2 === 0`, then `number` divides evenly by 2 → it’s even.  
- If the remainder is not 0, then it’s odd.  


