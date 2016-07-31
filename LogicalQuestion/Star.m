//
//  Star.m
//  LogicalQuestion
//
//  Created by Deepak on 20/12/15.
//  Copyright © 2015 Deepak. All rights reserved.
//
//http://www.programmingsimplified.com/c-program-print-stars-pyramid
#import "Star.h"

int fooFunction() {
    NSLog(@"%s",__FUNCTION__);
    return 5;
}


@implementation Star
NSString *getRandomMake(NSArray *makes) {
    int maximum = (int)[makes count];
    int randomIndex = arc4random_uniform(maximum);
    return makes[randomIndex];
}


+(BOOL)isPrimeNumber:(int)number {
    BOOL isPrime = true;
    
    for( int i=2; i<=number/2; ++i)
    {
        if(number%i == 0)
        {
            isPrime = false;
            break;
        }
    }
    if (isPrime)
        NSLog(@"%d is a prime number.",number);
    else
        NSLog(@"%d is not a prime number.",number);
    
    return isPrime;
    
}

int row, col, space, rowCount;
/*///

////*/

/*///
 
*
* *
* * *
* * * *
* * * * *
 
////*/
+(void)star1 {
    NSLog(@"%s Printing Star",__FUNCTION__);
    for (row=1; row<= 5; ++row) {
       // NSLog(@"print:%d ",i);
       
        for (col=1; col<=row; col++) {
         printf("* ");
        }
        //NSLog(@"\n");
        printf("\n");

    }
}

/*///
     *
    ***
   *****
  *******
 *********
 
 ////*/
+(void)star2 {
    rowCount = 5;
    NSLog(@"%s Printing Star",__FUNCTION__);
    for (row=1; row<= rowCount; row++) {
        
        for (space = rowCount -row; space > 0; space--) {
            printf(" ");
        }
        
        for (col = 1; col<=2*row -1; col++) {
            printf("*");
        }
        printf("\n");
        
    }
}

/*///
   *
  *A*
 *A*A*
*A*A*A*

 ////*/
+(void)star3{
    rowCount = 4;
    NSLog(@"%s Printing Star",__FUNCTION__);
    for (row=1; row<= rowCount; row++) {
        
        for (space = rowCount -row; space > 0; space--) {
            printf(" ");
        }
        
        for (col = 1; col<=2*row -1; col++) {
            if (col %2 == 0){
                printf("A");

            } else {
                printf("*");
            }
        }
        printf("\n");
        
    }
}

/*///
    1
   232
  34543
 4567654
567898765
 ////*/
////*/
+(void)star4 {
    rowCount = 5;
    NSLog(@"%s Printing Star",__FUNCTION__);
    for (row=1; row <= rowCount; row++) {
        
        for (space = rowCount -row; space > 0; space--) {
            printf(" ");
        }
        int numb = row;
        int rightNumb = 0;

        for (col = 1; col<=2*row-1; col++) {
            
            if (numb <= 2*row-1) {
                printf("%d",numb);
                rightNumb = numb;
                ++numb;
            } else {
                --rightNumb;
                printf("%d",rightNumb);
            }
        }
        printf("\n");
        
    }
}

+(void)secondLargestNumberInArray {
    NSArray *arry = @[[NSNumber numberWithInt:41], [NSNumber numberWithInt:6], [NSNumber numberWithInt:2], [NSNumber numberWithInt:95] ,[NSNumber numberWithInt:24], [NSNumber numberWithInt:26], [NSNumber numberWithInt:26], [NSNumber numberWithInt:21], [NSNumber numberWithInt:12],[NSNumber numberWithInt:95], [NSNumber numberWithInt:17],[NSNumber numberWithInt:6]];
    
    int largest = [[arry objectAtIndex:1] intValue];
    int secondLargest = [[arry objectAtIndex:0] intValue];
    
    if (secondLargest > largest) {
        largest = secondLargest;
        secondLargest = [[arry objectAtIndex:1] intValue];
    }
    
    for (NSNumber *numb in arry) {
        
        if ([numb intValue] >= largest) {
            secondLargest = largest;
            largest =  [numb intValue];
        }
    }
    
    NSLog(@"largest:%d\n secondLargest:%d",largest,secondLargest);
}

//+ (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType {
//    if ([request.URL.scheme isEqualToString:@"inapp"]) {
//        if ([request.URL.host isEqualToString:@"capture"]) {
//            // do capture action
//        }
//        return NO;
//    }
//    return YES;
//}
@end
