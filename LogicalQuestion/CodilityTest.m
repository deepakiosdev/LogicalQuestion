//
//  CodilityTest.m
//  LogicalQuestion
//
//  Created by Deepak on 01/07/16.
//  Copyright © 2016 Deepak. All rights reserved.
//

#import "CodilityTest.h"

@implementation CodilityTest

int solution(int X, int Y, int D) {
    // write your code in Objective-C 2.0
    int jumpCount = 0;
    while (X < Y) {
        X = X + D;
        ++jumpCount;
    }
    return jumpCount;
}

+(int)frogJump:(int)X Y:(int)Y D:(int)D {
    // write your code in Objective-C 2.0
    
    if (Y < X || D <= 0) {
        NSLog(@"Invalid argument(s)");
        return 0;
    }
    
    int result = 0;
    int distance = Y - X;
    int rest = 0;
    
    result = distance / D;
    rest = distance % D;
    
    if (rest != 0) {
        result++;
    }
    
    return result;

}

int permMissingElem(NSMutableArray *A) {
    
    unsigned long length = [A count] + 1;
    unsigned long sum1 = 0;
    unsigned long sum2 = 0;
    
    for (int i=0; i < [A count]; i++) {
        sum1 += [[A objectAtIndex:i] longValue];
    }
    
    sum2 = ((((length+1)*length)/2) - sum1);
    
    return (int)sum2;
}

int premChek(NSMutableArray *A) {
   
    NSArray * AA = [A sortedArrayUsingSelector:@selector(compare:)];
    
    NSMutableArray *array = [NSMutableArray array];
    for (int i = 1; i <= [A count]; i++) {
        [array addObject:[NSNumber numberWithUnsignedInteger:i]];
    }
    
    if ([AA isEqualToArray:array]) {
        return 1;
    } else {
        return 0;
    }
}


int tapeEquilibrium(NSMutableArray *A) {
    
    int right = 0;
    int left = [[A objectAtIndex:0] intValue];
    NSMutableArray *ar = [[NSMutableArray alloc] init];
    
    
    for (int i=1; i < [A count]; i++) {
        right += [[A objectAtIndex:i] intValue];
    }
    
    for (int i=1; i < [A count]; i++) {
        NSNumber *check = [NSNumber numberWithInteger:(abs(left - right))];
        [ar insertObject:check atIndex:(i-1)];
        left += [[A objectAtIndex:i] intValue];
        right -= [[A objectAtIndex:i] intValue];
        
    }
    
    //int find = [[ar valueForKeyPath:@"@min.intValue"] intValue];
    
    int find = [[ar objectAtIndex:0] intValue];
    for (int i = 1; i < [ar count]; i++) {
        if ([[ar objectAtIndex:i] intValue] < find) {
            find = [[ar objectAtIndex:i] intValue];
        }
        
    }
    
    
    if ([A count] == 2) {
        find = abs([[A objectAtIndex:0] intValue] - [[A objectAtIndex:1] intValue]);
    }
    
    return find;
}

int tapeEquilibrium1(NSMutableArray *A) {
    
    int left = 0;
    int right = 0;
    int result = 1000;
    
    for (int i=0; i < [A count]; i++) {
        right += [[A objectAtIndex:i] intValue];
    }
    
    for (int i=0; i < [A count]-1; i++) {
        
        left += [[A objectAtIndex:i] intValue];
        right -= [[A objectAtIndex:i] intValue];
        int check = abs(left - right);
        if (check < result) { result = check; }
        
    }
    
    if ([A count] == 2) {
        result = abs([[A objectAtIndex:0] intValue]
                     - [[A objectAtIndex:1] intValue]);
    }
    
    return result;
    
}

int frogRiverOne(int X, NSMutableArray *A) {
    // write your code in Objective-C 2.0
    int steps = X;
    NSMutableArray *count = [[NSMutableArray alloc] init];
    for(int i = 0; i < steps+1; i++)
        [count addObject:[NSNumber numberWithBool:NO]];
    
    int i = 0;
    for (NSNumber *N in A){
        if(![[count objectAtIndex:N.intValue] boolValue]){
            [count replaceObjectAtIndex:N.intValue withObject:[NSNumber numberWithBool:YES]];
            steps--;
        }
        if(steps==0)
            return i;
        i++;
    }
    return -1;
}

NSMutableArray * MaxCounters(int N, NSMutableArray *A) {
    NSMutableArray *counters = [[NSMutableArray alloc] initWithCapacity:N];
    int max, currentMax, indexMax;
    max = currentMax = indexMax = 0;
    for(int i=0; i<N; i++)
        [counters addObject:@0];
    for(NSNumber *X in A){
        if(X.intValue == N+1)
            max = currentMax;
        else{
            NSNumber *c = [counters objectAtIndex:X.intValue-1];
            if(c.intValue < max)
                c = @(max+1);
            else
                c = @(c.intValue+1);
            [counters replaceObjectAtIndex:X.intValue-1 withObject:c];
            if(c.intValue > currentMax)
                currentMax = c.intValue;
        }
    }
    for(int i=0; i<N; i++){
        NSNumber *c = [counters objectAtIndex:i];
        if(c.intValue < max){
            c = @(max);
            [counters replaceObjectAtIndex:i withObject:c];
        }
    }
    return counters;
}

int MissingInteger(NSMutableArray *A) {
    
    NSMutableArray *B = [[NSMutableArray alloc] init];
    
    for (int i=0; i < [A count]; i++) {
        
        NSNumber *zero = [NSNumber numberWithInteger:0];
        [B addObject:zero];
    }
    
    for (int i=0; i < [A count]; i++) {
        
        if ([[A objectAtIndex:i] intValue] >= 1 &&
            [[A objectAtIndex:i] intValue] <= [A count]) {
            
            int minusOne = [[A objectAtIndex:i] intValue] - 1;
            [B replaceObjectAtIndex:minusOne withObject:[A objectAtIndex:i]];
            
        }
        
    }
    
    for (int i=0; i < [A count]; i++) {
        if ([[B objectAtIndex:i] intValue] == 0) {
            return i+1;
        }
    }
    
    return [A count] + 1;
    
    
}

int PassingCars(NSMutableArray *A) {
    
    unsigned long int west = 0;
    unsigned long int east = 0;
    
    for (int i=0; i < [A count]; i++) {
        if ([[A objectAtIndex:i] longValue]== 0) { east += 1; }
        if ([[A objectAtIndex:i] longValue]== 1) { west += east; }
    }
    
    //NSLog(@"%d", west);
    
    if (west > 1e9) { return -1; }
    return (int)west;
    
}

NSMutableArray * GenomicRangeQuery(NSString *S, NSMutableArray *P, NSMutableArray *Q) {
    NSMutableArray *result = [[NSMutableArray alloc] init];
    NSDictionary *dna = @{@"A": @1, @"C": @2, @"G":@3, @"T": @4};
    int prefSumA[S.length+1], prefSumC[S.length+1], prefSumG[S.length+1], a, c, g;
    prefSumA[0]=prefSumC[0]=prefSumG[0] = 0;
    for(int i = 0; i < S.length; i++){
        a=c=g=0;
        NSString *str = [NSString stringWithFormat: @"%C", [S characterAtIndex:i]];
        int curChar = [[dna objectForKey:str] intValue];
        switch (curChar) {
            case 1:
                a=1;
                break;
            case 2:
                c=1;
                break;
            case 3:
                g=1;
                break;
        }
        prefSumA[i+1] = prefSumA[i]+a;
        prefSumC[i+1] = prefSumC[i]+c;
        prefSumG[i+1] = prefSumG[i]+g;
    }
    for(int i = 0; i < P.count; i++){
        int minNucleotide = 4;
        int min = [[P objectAtIndex:i] intValue];
        int max = [[Q objectAtIndex:i] intValue]+1;
        if(prefSumA[max] - prefSumA[min] > 0)
            minNucleotide = 1;
        else if(prefSumC[max] - prefSumC[min] > 0)
            minNucleotide = 2;
        else if(prefSumG[max] - prefSumG[min] > 0)
            minNucleotide = 3;
        [result addObject:@(minNucleotide)];
    }
    return result;
}

int MinAvgTwoSlice(NSMutableArray *A) {
    NSUInteger length = A.count;
    NSUInteger min_average = ([A[0] integerValue] + [A[1] integerValue] ) / 2.0;
    NSUInteger position = 0;
    
    if (length==2) return 0;
    
    for (int i=2 ; i < length; i++) {
        
        NSUInteger temp1 = ([A[i-1] integerValue] + [A[i] integerValue]) / 2.0;
        NSUInteger temp2 = ([A[i-2] integerValue] +[A[i-1] integerValue] + [A[i] integerValue]) / 3.0;
        
        if (temp1 < min_average) {
            position = i - 1;
            min_average = temp1;
        }
        
        if (temp2 < min_average) {
            position = i - 2;
            min_average = temp2;
        }
        
    }
    
    return (int)position;
}


int linkListCount(NSMutableArray *A) {
    int index = 0;
    int linkListLength  = 0;
    
    while (index != -1) {
        index = [[A objectAtIndex:index] intValue];
        ++linkListLength;
    }
    return linkListLength;
}

int weeksOfMonth(int Y, NSString *A, NSString *B, NSString *W) {
    
    NSArray *months = @[@"January",@"February", @"March", @"April", @"May", @"June", @"July", @"August", @"September", @"October", @"November",@"December"];
    
    int indexOfStartMonth = (int)[months indexOfObject:A]  + 1;
    int indexOfEndMonth = (int)[months indexOfObject:B]  + 1;

    NSDateFormatter *dateFormatterMMddyyyy=[NSDateFormatter new];
    [dateFormatterMMddyyyy setDateFormat:@"yyyy/MM/dd"];
    NSCalendar *calender = [NSCalendar currentCalendar];

    NSString *startDateString = [NSString stringWithFormat:@"%4d/%d/1",Y,indexOfStartMonth];
    NSDate *startDate = [dateFormatterMMddyyyy dateFromString:startDateString];

    NSString *endDateString = [NSString stringWithFormat:@"%4d/%d/1",Y,indexOfEndMonth];
    NSDate *endDate = [dateFormatterMMddyyyy dateFromString:endDateString];

    NSDateComponents *dateComponents = [calender components:NSCalendarUnitWeekOfMonth fromDate:startDate  toDate:endDate options:0];
    
    return (int)[dateComponents weekOfMonth];
}


int showIdenticalPairCount(NSMutableArray *A){
    int identicalPairCount = 0;
    int firstIndex  = 0;
    NSUInteger totalLenth = A.count;
    while (firstIndex < totalLenth) {
        int nextIndex = firstIndex + 1;
        while (nextIndex < totalLenth) {
            if (A[firstIndex] == A[nextIndex]) {
                identicalPairCount += 1;
            }
            nextIndex += 1;
        }
        firstIndex += 1;
    }
    return identicalPairCount;
}

@end
