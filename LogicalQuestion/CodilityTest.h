//
//  CodilityTest.h
//  LogicalQuestion
//
//  Created by Deepak on 01/07/16.
//  Copyright © 2016 Deepak. All rights reserved.
//

/*
 Useful urls 
 https://codility.com/programmers/task/frog_river_one/
 https://www.martinkysel.com/codility-solutions/
 
 https://github.com/StefanLage/Codility-Training
 https://github.com/mgcm/codility-lessons
 */



#import <Foundation/Foundation.h>

@interface CodilityTest : NSObject
+(int)frogJump:(int)X Y:(int)Y D:(int)D; //100%
int permMissingElem(NSMutableArray *A); //Best way 100%
int premChek(NSMutableArray *A);  //Best way 100%
int tapeEquilibrium(NSMutableArray *A); //Best way 100%
int tapeEquilibrium1(NSMutableArray *A); //Best way 100%
int frogRiverOne(int X, NSMutableArray *A);//Best way 100%
NSMutableArray *MaxCounters(int N, NSMutableArray *A);//Best way 100%
int MissingInteger(NSMutableArray *A);//Best way 100%
int PassingCars(NSMutableArray *A);// 100%
NSMutableArray * GenomicRangeQuery(NSString *S, NSMutableArray *P, NSMutableArray *Q); //100
int MinAvgTwoSlice(NSMutableArray *A); // 0%

int linkListCount(NSMutableArray *A); // 0%
int weeksOfMonth(int Y, NSString *A, NSString *B, NSString *W);
int showIdenticalPairCount(NSMutableArray *A);
int weeksOfMonth(int Y, NSString *A, NSString *B, NSString *W);
@end
