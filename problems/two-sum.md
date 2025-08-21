# Two Sum

## Source
[LeetCode - Two Sum](https://leetcode.com/problems/two-sum/)

## Problem
Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

## Steps to Solve
1. Understand the question & examples
2. Brute force O(n²)
3. Optimize with hash table
4. Pseudocode
5. JavaScript implementation

## Complexity
- Time: O(n)
- Space: O(n)

## Code
```js
function twoSum(nums, target) {
  const lookUp = {};
  for (let i = 0; i < nums.length; i++) {
    let need = target - nums[i];
    if (lookUp.hasOwnProperty(need)) {
      return [lookUp[need], i];
    }
    lookUp[nums[i]] = i;
  }
}
```
