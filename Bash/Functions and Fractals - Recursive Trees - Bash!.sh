# Functions and Fractals - Recursive Trees - Bash!
# Creating a Fractal Tree from Y-shaped branches
#
# This challenge involves the construction of trees, in the form of ASCII Art.
#
# We have to deal with real world constraints, so we cannot keep repeating the pattern
# infinitely. So, we will provide you a number of iterations, and you need to generate the ASCII
# version of the Fractal Tree for only those many iterations (or, levels of recursion). A few samples are provided below.
# Iteration #1
# In the beginning, we simply create a Y. There are 63 rows and 100 columns in the grid below. The triangle is composed of underscores and ones as shown below. The vertical segment and the slanting segments are both 16 characters in length.
# Iteration #2
# At the top of the left and right branches of the first Y, we now add a pair of Y-shapes, which are half the size of the original Y.
# Input Format
# A single integer, N.
# Constraints
# N <= 5
# Output Format
# The Nth iteration of the Fractal Tree, as shown above. It should be a matrix of 63 rows and 100 columns. (i.e. 6300 printable characters) It should be composed entirely of underscores and ones, in a manner similar to the examples provided. Do not include any extra leading or trailing spaces.

# Solution - 
declare -A a

f() {
    local d=$1 l=$2 r=$3 c=$4
    [[ $d -eq 0 ]] && return

    for ((i=1; i<=$l; i++)); do
        a[$((r-i)),$c]=1
    done

    ((r-=1))
    for ((i=1; i<=$l; i++)); do
        a[$((r-i)),$((c-i))]=1
        a[$((r-i)),$((c+i))]=1
    done

    f $((d-1)) $((l/2)) $((r-l)) $((c-l))
    f $((d-1)) $((l/2)) $((r-l)) $((c+l))
}

read n
f $n 16 49 0

for ((i=0; i<63; i++)); do
    for ((j=0; j<100; j++)); do
        if [[ ${a[$i,$j]} ]]; then
            printf 1
        else
            printf _
        fi
    done
    echo
done
