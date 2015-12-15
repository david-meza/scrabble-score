Scrabble Score
==============

After cloning the repository, `git checkout test-01` to get the initial set of
tests. Once you have those passsing, `git checkout test-02`. Once you have those
passing, you're done!

Scrabble Rules
--------------

Write a program that, given a word, computes the scrabble score for that word.

### Letter Values

```text
Letter                           Value
A, E, I, O, U, L, N, R, S, T       1
D, G                               2
B, C, M, P                         3
F, H, V, W, Y                      4
K                                  5
J, X                               8
Q, Z                               10
```

Example: "cabbage" should be scored as worth 14 points:

3 points for C
1 point for A, twice
3 points for B, twice
2 points for G
1 point for E

And to total:

```text
3 + 2*1 + 2*3 + 2 + 1
= 3 + 2 + 6 + 3
= 5 + 9
= 14
```
