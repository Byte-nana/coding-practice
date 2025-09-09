# Best Time to Buy and Sell Stock

**Source:** LeetCode  

---

## Problem
You are given an array `prices` where `prices[i]` is the price of a given stock on the `i`th day.  

You want to maximize your profit by choosing a single day to buy one stock and a different day in the future to sell that stock.  

Return the maximum profit you can achieve from this transaction. If you cannot achieve any profit, return `0`.  

**Examples**
```
Input: prices = [7,1,5,3,6,4]  
Output: 5  
Explanation: Buy on day 2 (price = 1) and sell on day 5 (price = 6), profit = 6-1 = 5.

Input: prices = [7,6,4,3,1]  
Output: 0  
Explanation: No profit is possible since prices are always decreasing.
```

---

## Steps to Solve
1. **Understand the input and output.**  
   - Input: array of numbers (prices per day).  
   - Output: the maximum profit (`sell - buy`), or `0` if no profit possible.  

2. **Consider edge cases.**  
   - Tiny arrays `[7,1]` → output 0.  
   - Always decreasing `[7,6,5,4,3]` → output 0.  
   - All equal `[2,2,2]` → output 0.  

3. **First idea (brute force).**  
   - Try every buy/sell pair → time complexity O(n²).  
   - Too slow for large arrays.  

4. **Optimized idea.**  
   - Track the **lowest price so far** as you scan the array.  
   - For each day, calculate `profit = price - minPriceSoFar`.  
   - Update `maxProfit` if profit is larger.  
   - Time complexity O(n), space complexity O(1).  

---

## Complexity
- **Time:** O(n) — single pass through the array.  
- **Space:** O(1) — only two variables (`minPrice`, `maxProfit`).  

---

## Solution (JavaScript)
```javascript
function maxProfit(prices) {
  let minPrice = Infinity;
  let maxProfit = 0;

  for (let i = 0; i < prices.length; i++) {
    let price = prices[i];
    if (price < minPrice) {
      minPrice = price;
    } else {
      let profit = price - minPrice;
      if (profit > maxProfit) {
        maxProfit = profit;
      }
    }
  }
  return maxProfit;
}
```

---

## Alternative Solution (Brute Force – O(n²))
```javascript
function maxProfitBrute(prices) {
  let maxProfit = 0;
  for (let i = 0; i < prices.length; i++) {
    for (let j = i + 1; j < prices.length; j++) {
      let profit = prices[j] - prices[i];
      if (profit > maxProfit) {
        maxProfit = profit;
      }
    }
  }
  return maxProfit;
}
```

---

## Reflection
This problem was **difficult** at first.  
- I understood the brute force method quickly, but optimizing to O(n) was tricky.  
- The key learning: I only needed to track the **lowest price so far** to compute profit on each day.  
- This challenge taught me how to think about **dynamic tracking variables** instead of re-checking the whole array.  
