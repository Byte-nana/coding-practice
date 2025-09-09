# Remove Spaces from String

## Source
[Codewars - Remove String Spaces](https://www.codewars.com/kata/remove-string-spaces)

## Problem
Write a function that removes all spaces from a string and returns the new string.

Examples:
- `"8 j 8   mBliB8g  imjB8B8  jl  B"` → `"8j8mBliB8gimjB8B8jlB"`
- `"8 8 Bi fk8h B 8 BB8B B B  B888 c hl8 BhB fd"` → `"88Bifk8hB8BB8BBBB888chl8BhBfd"`
- `"8aaaaa dddd r     "` → `"8aaaaaddddr"`

---

## Steps to Solve
1. **Understand input/output:** Input is a string, output is the same string with no spaces.  
2. **Think of logic:**
   - Tried `.trim()` → removes only start/end whitespace. Not enough.  
   - Tried `.replace(' ', '')` → removes only the **first** space.  
   - Used `.replaceAll(' ', '')` → removes **all spaces** (solution chosen).  
   - Learned about regex `/\s+/g` → removes **all whitespace types** (spaces, tabs, newlines).  
3. **Pseudocode:**  
   - Define function with string param.  
   - Return the string with spaces removed using `replaceAll`.  

---

## Complexity
- **Time Complexity:** O(n) — must scan the whole string.  
- **Space Complexity:** O(n) — new string allocated.  

---

## Code (using `replaceAll`)
```js
function removeSpace(str) {
  return str.replaceAll(' ', '');
}
```

---

## Alternative Solutions

### 1. Using `replace` (only removes first space ❌)
```js
function removeSpace(str) {
  return str.replace(' ', '');
}
```

### 2. Using Regex (removes all whitespace ✅)
```js
function removeSpace(str) {
  return str.replace(/\s+/g, '');
}
```
- `\s` → matches any whitespace (space, tab, newline).  
- `+` → matches 1 or more occurrences.  
- `g` → global flag, replaces **all** matches.  
