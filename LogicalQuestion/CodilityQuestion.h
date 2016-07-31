//
//  CodilityQuestion.h
//  LogicalQuestion
//
//  Created by Deepak on 01/07/16.
//  Copyright © 2016 Deepak. All rights reserved.
//

#ifndef CodilityQuestion_h
#define CodilityQuestion_h


#endif /* CodilityQuestion_h */

///////// Question 1 FrogJmp

/*
 
 
 A small frog wants to get to the other side of the road. The frog is currently located at position X and wants to get to a position greater than or equal to Y. The small frog always jumps a fixed distance, D.
 
 Count the minimal number of jumps that the small frog must perform to reach its target.
 
 Write a function:
 
 int solution(int X, int Y, int D);
 
 that, given three integers X, Y and D, returns the minimal number of jumps from position X to a position equal to or greater than Y.
 
 For example, given:
 X = 10
 Y = 85
 D = 30
 
 the function should return 3, because the frog will be positioned as follows:
 
 after the first jump, at position 10 + 30 = 40
 after the second jump, at position 10 + 30 + 30 = 70
 after the third jump, at position 10 + 30 + 30 + 30 = 100
 
 Assume that:
 
 X, Y and D are integers within the range [1..1,000,000,000];
 X ≤ Y.
 
 Complexity:
 
 expected worst-case time complexity is O(1);
 expected worst-case space complexity is O(1).
 

*/




///////// Question 2 PreCheck

/*
 
 
 A non-empty zero-indexed array A consisting of N integers is given.
 
 A permutation is a sequence containing each element from 1 to N once, and only once.
 
 For example, array A such that:
 A[0] = 4
 A[1] = 1
 A[2] = 3
 A[3] = 2
 
 is a permutation, but array A such that:
 A[0] = 4
 A[1] = 1
 A[2] = 3
 
 is not a permutation, because value 2 is missing.
 
 The goal is to check whether array A is a permutation.
 
 Write a function:
 
 int solution(NSMutableArray *A);
 
 that, given a zero-indexed array A, returns 1 if array A is a permutation and 0 if it is not.
 
 For example, given array A such that:
 A[0] = 4
 A[1] = 1
 A[2] = 3
 A[3] = 2
 
 the function should return 1.
 
 Given array A such that:
 A[0] = 4
 A[1] = 1
 A[2] = 3
 
 the function should return 0.
 
 Assume that:
 
 N is an integer within the range [1..100,000];
 each element of array A is an integer within the range [1..1,000,000,000].
 
 Complexity:
 
 expected worst-case time complexity is O(N);
 expected worst-case space complexity is O(N), beyond input storage (not counting the storage required for input arguments).
 
 Elements of input arrays can be modified.

*/



///////// Question 3 TapeEqui
/*
 
 A non-empty zero-indexed array A consisting of N integers is given. Array A represents numbers on a tape.
 
 Any integer P, such that 0 < P < N, splits this tape into two non-empty parts: A[0], A[1], ..., A[P − 1] and A[P], A[P + 1], ..., A[N − 1].
 
 The difference between the two parts is the value of: |(A[0] + A[1] + ... + A[P − 1]) − (A[P] + A[P + 1] + ... + A[N − 1])|
 
 In other words, it is the absolute difference between the sum of the first part and the sum of the second part.
 
 For example, consider array A such that:
 A[0] = 3
 A[1] = 1
 A[2] = 2
 A[3] = 4
 A[4] = 3
 
 We can split this tape in four places:
 
 P = 1, difference = |3 − 10| = 7
 P = 2, difference = |4 − 9| = 5
 P = 3, difference = |6 − 7| = 1
 P = 4, difference = |10 − 3| = 7
 
 Write a function:
 
 int solution(int A[], int N);
 
 that, given a non-empty zero-indexed array A of N integers, returns the minimal difference that can be achieved.
 
 For example, given:
 A[0] = 3
 A[1] = 1
 A[2] = 2
 A[3] = 4
 A[4] = 3
 
 the function should return 1, as explained above.
 
 Assume that:
 
 N is an integer within the range [2..100,000];
 each element of array A is an integer within the range [−1,000..1,000].
 
 Complexity:
 
 expected worst-case time complexity is O(N);
 expected worst-case space complexity is O(N), beyond input storage (not counting the storage required for input arguments).
 
 Elements of input arrays can be modified.

*/

///////// Question 4  PermMissingElem

/*
 
 
 A zero-indexed array A consisting of N different integers is given. The array contains integers in the range [1..(N + 1)], which means that exactly one element is missing.
 
 Your goal is to find that missing element.
 
 Write a function:
 
 int solution(NSMutableArray *A);
 
 that, given a zero-indexed array A, returns the value of the missing element.
 
 For example, given array A such that:
 A[0] = 2
 A[1] = 3
 A[2] = 1
 A[3] = 5
 
 the function should return 4, as it is the missing element.
 
 Assume that:
 
 N is an integer within the range [0..100,000];
 the elements of A are all distinct;
 each element of array A is an integer within the range [1..(N + 1)].
 
 Complexity:
 
 expected worst-case time complexity is O(N);
 expected worst-case space complexity is O(1), beyond input storage (not counting the storage required for input arguments).
 
 Elements of input arrays can be modified.

*/



///////// Question 5  PermMissingElem
/*
 A small frog wants to get to the other side of a river. The frog is initially located on one bank of the river (position 0) and wants to get to the opposite bank (position X+1). Leaves fall from a tree onto the surface of the river.
 
 You are given a zero-indexed array A consisting of N integers representing the falling leaves. A[K] represents the position where one पत्ती falls at time K, measured in seconds.
 
 The goal is to find the earliest time when the frog can jump to the other side of the river. The frog can cross only when leaves appear at every position across the river from 1 to X (that is, we want to find the earliest moment when all the positions from 1 to X are covered by leaves). You may assume that the speed of the current in the river is negligibly small, i.e. the leaves do not change their positions once they fall in the river.
 
 For example, you are given integer X = 5 and array A such that:
 A[0] = 1
 A[1] = 3
 A[2] = 1
 A[3] = 4
 A[4] = 2
 A[5] = 3
 A[6] = 5
 A[7] = 4
 
 In second 6, a leaf falls into position 5. This is the earliest time when leaves appear in every position across the river.
 
 Write a function:
 
 int solution(int X, NSMutableArray *A);
 
 that, given a non-empty zero-indexed array A consisting of N integers and integer X, returns the earliest time when the frog can jump to the other side of the river.
 
 If the frog is never able to jump to the other side of the river, the function should return −1.
 
 For example, given X = 5 and array A such that:
 A[0] = 1
 A[1] = 3
 A[2] = 1
 A[3] = 4
 A[4] = 2
 A[5] = 3
 A[6] = 5
 A[7] = 4
 
 the function should return 6, as explained above.
 
 Assume that:
 
 N and X are integers within the range [1..100,000];
 each element of array A is an integer within the range [1..X].
 
 Complexity:
 
 expected worst-case time complexity is O(N);
 expected worst-case space complexity is O(X), beyond input storage (not counting the storage required for input arguments).
 

*/


///////// Question 6 MaxCounters

/*
 
 
 You are given N counters, initially set to 0, and you have two possible operations on them:
 
 increase(X) − counter X is increased by 1,
 max counter − all counters are set to the maximum value of any counter.
 
 A non-empty zero-indexed array A of M integers is given. This array represents consecutive operations:
 
 if A[K] = X, such that 1 ≤ X ≤ N, then operation K is increase(X),
 if A[K] = N + 1 then operation K is max counter.
 
 For example, given integer N = 5 and array A such that:
 A[0] = 3
 A[1] = 4
 A[2] = 4
 A[3] = 6
 A[4] = 1
 A[5] = 4
 A[6] = 4
 
 the values of the counters after each consecutive operation will be:
 (0, 0, 1, 0, 0)
 (0, 0, 1, 1, 0)
 (0, 0, 1, 2, 0)
 (2, 2, 2, 2, 2)
 (3, 2, 2, 2, 2)
 (3, 2, 2, 3, 2)
 (3, 2, 2, 4, 2)
 
 The goal is to calculate the value of every counter after all operations.
 
 Assume that the following declarations are given:
 
 struct Results {
 int * C;
 int L;
 };
 
 Write a function:
 
 struct Results solution(int N, int A[], int M);
 
 that, given an integer N and a non-empty zero-indexed array A consisting of M integers, returns a sequence of integers representing the values of the counters.
 
 The sequence should be returned as:
 
 a structure Results (in C), or
 a vector of integers (in C++), or
 a record Results (in Pascal), or
 an array of integers (in any other programming language).
 
 For example, given:
 A[0] = 3
 A[1] = 4
 A[2] = 4
 A[3] = 6
 A[4] = 1
 A[5] = 4
 A[6] = 4
 
 the function should return [3, 2, 2, 4, 2], as explained above.
 
 Assume that:
 
 N and M are integers within the range [1..100,000];
 each element of array A is an integer within the range [1..N + 1].
 
 Complexity:
 
 expected worst-case time complexity is O(N+M);
 expected worst-case space complexity is O(N), beyond input storage (not counting the storage required for input arguments).
 
 Elements of input arrays can be modified.

*/


///////// Question 7 MissingInteger


/*
 
 
 Write a function:
 
 int solution(NSMutableArray *A);
 
 that, given a non-empty zero-indexed array A of N integers, returns the minimal positive integer (greater than 0) that does not occur in A.
 
 For example, given:
 A[0] = 1
 A[1] = 3
 A[2] = 6
 A[3] = 4
 A[4] = 1
 A[5] = 2
 
 the function should return 5.
 
 Assume that:
 
 N is an integer within the range [1..100,000];
 each element of array A is an integer within the range [−2,147,483,648..2,147,483,647].
 
 Complexity:
 
 expected worst-case time complexity is O(N);
 expected worst-case space complexity is O(N), beyond input storage (not counting the storage required for input arguments).
 
 Elements of input arrays can be modified.

*/



///////// Question 8 PassingCars


/*
 A non-empty zero-indexed array A consisting of N integers is given. The consecutive elements of array A represent consecutive cars on a road.
 
 Array A contains only 0s and/or 1s:
 
 0 represents a car traveling east,
 1 represents a car traveling west.
 
 The goal is to count passing cars. We say that a pair of cars (P, Q), where 0 ≤ P < Q < N, is passing when P is traveling to the east and Q is traveling to the west.
 
 For example, consider array A such that:
 A[0] = 0
 A[1] = 1
 A[2] = 0
 A[3] = 1
 A[4] = 1
 
 We have five pairs of passing cars: (0, 1), (0, 3), (0, 4), (2, 3), (2, 4).
 
 Write a function:
 
 int solution(int A[], int N);
 
 that, given a non-empty zero-indexed array A of N integers, returns the number of pairs of passing cars.
 
 The function should return −1 if the number of pairs of passing cars exceeds 1,000,000,000.
 
 For example, given:
 A[0] = 0
 A[1] = 1
 A[2] = 0
 A[3] = 1
 A[4] = 1
 
 the function should return 5, as explained above.
 
 Assume that:
 
 N is an integer within the range [1..100,000];
 each element of array A is an integer that can have one of the following values: 0, 1.
 
 Complexity:
 
 expected worst-case time complexity is O(N);
 expected worst-case space complexity is O(1), beyond input storage (not counting the storage required for input arguments).

*/


///////// Question 8 GenomicRangeQuery


/*
 A DNA sequence can be represented as a string consisting of the letters A, C, G and T, which correspond to the types of successive nucleotides in the sequence. Each nucleotide has an impact factor, which is an integer. Nucleotides of types A, C, G and T have impact factors of 1, 2, 3 and 4, respectively. You are going to answer several queries of the form: What is the minimal impact factor of nucleotides contained in a particular part of the given DNA sequence?
 
 The DNA sequence is given as a non-empty string S = S[0]S[1]...S[N-1] consisting of N characters. There are M queries, which are given in non-empty arrays P and Q, each consisting of M integers. The K-th query (0 ≤ K < M) requires you to find the minimal impact factor of nucleotides contained in the DNA sequence between positions P[K] and Q[K] (inclusive).
 
 For example, consider string S = CAGCCTA and arrays P, Q such that:
 P[0] = 2    Q[0] = 4
 P[1] = 5    Q[1] = 5
 P[2] = 0    Q[2] = 6
 
 The answers to these M = 3 queries are as follows:
 
 The part of the DNA between positions 2 and 4 contains nucleotides G and C (twice), whose impact factors are 3 and 2 respectively, so the answer is 2.
 The part between positions 5 and 5 contains a single nucleotide T, whose impact factor is 4, so the answer is 4.
 The part between positions 0 and 6 (the whole string) contains all nucleotides, in particular nucleotide A whose impact factor is 1, so the answer is 1.
 
 Write a function:
 
 NSMutableArray * solution(NSString *S, NSMutableArray *P, NSMutableArray *Q);
 
 that, given a non-empty zero-indexed string S consisting of N characters and two non-empty zero-indexed arrays P and Q consisting of M integers, returns an array consisting of M integers specifying the consecutive answers to all queries.
 
 The sequence should be returned as:
 
 a Results structure (in C), or
 a vector of integers (in C++), or
 a Results record (in Pascal), or
 an array of integers (in any other programming language).
 
 For example, given the string S = CAGCCTA and arrays P, Q such that:
 P[0] = 2    Q[0] = 4
 P[1] = 5    Q[1] = 5
 P[2] = 0    Q[2] = 6
 
 the function should return the values [2, 4, 1], as explained above.
 
 Assume that:
 
 N is an integer within the range [1..100,000];
 M is an integer within the range [1..50,000];
 each element of arrays P, Q is an integer within the range [0..N − 1];
 P[K] ≤ Q[K], where 0 ≤ K < M;
 string S consists only of upper-case English letters A, C, G, T.
 
 Complexity:
 
 expected worst-case time complexity is O(N+M);
 expected worst-case space complexity is O(N), beyond input storage (not counting the storage required for input arguments).

*/

///////// Question 8 MinAvgTwoSlice

/*
 A non-empty zero-indexed array A consisting of N integers is given. A pair of integers (P, Q), such that 0 ≤ P < Q < N, is called a slice of array A (notice that the slice contains at least two elements). The average of a slice (P, Q) is the sum of A[P] + A[P + 1] + ... + A[Q] divided by the length of the slice. To be precise, the average equals (A[P] + A[P + 1] + ... + A[Q]) / (Q − P + 1).
 
 For example, array A such that:
 A[0] = 4
 A[1] = 2
 A[2] = 2
 A[3] = 5
 A[4] = 1
 A[5] = 5
 A[6] = 8
 
 contains the following example slices:
 
 slice (1, 2), whose average is (2 + 2) / 2 = 2;
 slice (3, 4), whose average is (5 + 1) / 2 = 3;
 slice (1, 4), whose average is (2 + 2 + 5 + 1) / 4 = 2.5.
 
 The goal is to find the starting position of a slice whose average is minimal.
 
 Write a function:
 
 int solution(int A[], int N);
 
 that, given a non-empty zero-indexed array A consisting of N integers, returns the starting position of the slice with the minimal average. If there is more than one slice with a minimal average, you should return the smallest starting position of such a slice.
 
 For example, given array A such that:
 A[0] = 4
 A[1] = 2
 A[2] = 2
 A[3] = 5
 A[4] = 1
 A[5] = 5
 A[6] = 8
 
 the function should return 1, as explained above.
 
 Assume that:
 
 N is an integer within the range [2..100,000];
 each element of array A is an integer within the range [−10,000..10,000].
 
 Complexity:
 
 expected worst-case time complexity is O(N);
 expected worst-case space complexity is O(N), beyond input storage (not counting the storage required for input arguments).
 
 Elements of input arrays can be modified.

*/



/*
 
*/