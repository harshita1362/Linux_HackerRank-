# Given two integers, X and Y , find their sum, difference, product, and quotient.
# Input Format
# Two lines containing one integer each (X and Y , respectively).
# Constraints
# -100 <= X,Y <= 100
# Y ≠ 0
# Output Format
# Four lines containing the sum (X+Y), difference (X-Y), product (X*Y), and quotient (X/Y), respectively.
# (While computing the quotient, print only the integer part.)
# Sample Input
# 5
# 2
# Sample Output
# 7
# 3
# 10
# 2
# Explanation
# 5 + 2 = 7
# 5 - 2 = 3
# 5 * 2 = 10
# 5 / 2 = 2 (Integer part)

Solution : 
#!/bin/bash
read X
read Y
echo $((X+Y))
echo $((X-Y))
echo $((X*Y))
echo $((X/Y))
