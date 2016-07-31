//
//  ViewController.m
//  LogicalQuestion
//
//  Created by Deepak on 20/05/16.
//  Copyright © 2016 Deepak. All rights reserved.
//


//http://javarevisited.blogspot.in/2011/06/top-programming-interview-questions.html
#import "ViewController.h"
#import "Star.h"
#import "SecondVC.h"
#import "CodilityTest.h"

@interface ViewController ()
@property (copy) NSString *strCopyName;
@property (strong) NSString *strStrongFirstName;
//@property (strong ) NSArray *frindsName;
@property (strong) NSMutableArray *frindsName;


@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    NSLog(@"weeksOfMonth%d",weeksOfMonth(2014, @"April", @"May", @"Wednesday"));
    
   // NSMutableArray *A = [NSMutableArray arrayWithObjects:@3, @5, @6, @3, @3, @5, nil];
    //showIdenticalPairCount(A);
    
   // NSMutableArray *array = [NSMutableArray arrayWithObjects:@1, @4, @-1, @3,@2, nil];
   // NSLog(@"linkListCount %d",linkListCount(array));
    
   /* NSLog(@"frogJump count:%d",[CodilityTest frogJump:10 Y:85 D:0]);
    NSMutableArray *arr= [NSMutableArray arrayWithObjects:[NSNumber numberWithInt:4],[NSNumber numberWithInt:1],[NSNumber numberWithInt:2],nil];
    NSLog(@"permMissingElem:%d",permMissingElem(arr));

    NSLog(@"premChek:%d",premChek(arr));
    
    //NSMutableArray *array = [NSMutableArray arrayWithObjects:@3, @1, @2, @4, @3, nil];
   // A[0]=-7 A[1]=1 A[2]=5 A[3]=2 A[4]=-4 A[5]=3 A[6]=0
    NSMutableArray *array = [NSMutableArray arrayWithObjects:@-7, @1, @5, @2, @-4, @3, @0, nil];
    NSLog(@"tapeEquilibrium %d",tapeEquilibrium(array));
    NSLog(@"tapeEquilibrium1 %d",tapeEquilibrium1(array));
    */
    
   // NSMutableArray *array = [NSMutableArray arrayWithObjects:@-7, @1, @5, @2, @-4, @3, @0, nil];
   // NSLog(@"tapeEquilibrium %d",tapeEquilibrium(array));

    return;
    // Do any additional setup after loading the view, typically from a nib.
    NSString *palindromeSring = @" AB  bA";
    NSLog(@"isPalindrome:%d",[self isPalindrome:palindromeSring]);
    
    NSString *sring = @"AB fffsdfsdf z bA";
    NSLog(@"Remove :%@",[self removeChar:@"ff" fromString:sring]);

    [Star star1];
    [Star star2];
    [Star star3];
    [Star star4];
    [self checkStringEquality];
    
    [self copyTest];
    [self dispatch_ApplyTest];
    
    [Star secondLargestNumberInArray];

    
    NSLog(@"fooFunction():%d",fooFunction());
    NSArray *makes = @[@"Honda", @"Ford", @"Nissan", @"Porsche"];
    NSLog(@"Selected a %@", getRandomMake(makes));
    
    NSLog(@"31 isPrimeNumber:  %d", [Star isPrimeNumber:31]);
    NSLog(@"32 isPrimeNumber:  %d", [Star isPrimeNumber:32]);
    
    dispatch_queue_t que = dispatch_queue_create("com.xyx.ere", NULL);
    dispatch_async(que, ^{
        //Do something
        NSLog(@"Add:%d",add(4,7));
        
    });
    
    

    
    [self beginTaskWithCallbackBlock:^{
        ///
        NSLog(@"The task is complete");

    }];
    //    self.frindsName =  @[@"A",@"B", @"C", @"D"];

    self.frindsName = [[NSMutableArray alloc] initWithArray:@[@"A",@"B", @"C", @"D"]];

    self.strCopyName = @"Deepak Pandey";
    self.strStrongFirstName = @"Deepak";
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    NSLog(@"strCopyName:%@, strStrongFirstName:%@",self.strCopyName, self.strStrongFirstName);
}

int (^add)(int,int) = ^(int number1, int number2){
    return number1+number2;
};

int (^multiply)(int, int) = ^(int a, int b)
{
    return a*b;
};

- (void)beginTaskWithCallbackBlock:(void (^)(void))callbackBlock {
    
    NSLog(@"I am method with block");

    callbackBlock();
}


- (void)beginTaskWithCallbackMutipleBlock:(int (^)(int, int))multiply {
    
    NSLog(@"I am method with block");
    
    multiply(2,4);
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



//https://www.quora.com/What-is-the-difference-between-strong-retain-nonatomic-etc-in-the-Objective-C-iOS-property
- (void)copyTest {
    NSMutableString *nameString = [NSMutableString stringWithString:@"Liza"];
    self.strCopyName = nameString;
    NSLog(@"strCopyName:%@",self.strCopyName);

    [nameString appendString:@"Pizza"];
    NSLog(@"strCopyName:%@",self.strCopyName);  //Output :
    self.strCopyName = @"Deepak";
    NSLog(@"strCopyName:%@",self.strCopyName);
}



-(void)dispatch_ApplyTest {
    NSLog(@"Start  ASync");
//
//    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0), ^{
//        dispatch_apply(10, dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0), ^(size_t size) {
//            NSLog(@"ASync:%lu", size);
//        });
//    });
//    
//        NSLog(@"Start  Sync");
//     dispatch_sync(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0), ^{
//        dispatch_apply(10, dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0), ^(size_t size) {
//            NSLog(@"Sync:%lu", size);
//        });
//    });
    NSLog(@"End Sync");
    
    dispatch_apply(10, dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0), ^(size_t size) {
        NSLog(@"OUT of block sync:%lu", size);
    });
    NSLog(@"End OUT of block");

}

- (BOOL)isValidString:(NSString *)string

{
    if ([string isKindOfClass:[NSString class]] &&  ([string isKindOfClass:[NSNull class]] || string.length == 0 || [string isEqualToString:@"null"] || [string isEqualToString:@"<null>"] || [string isEqualToString:@"(null)"]))
        return NO;
    return YES;
}

- (NSString*)getValidString:(NSString *)string
{
    if ([self isValidString:string] && string.length > 0) {
        string = [string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    } else {
        string = @"";
    }
    return string;
}

//1) Write code to check a String is palindrome or not
-(BOOL)isPalindrome:(NSString*)string {
    string = [self getValidString:string];
    string = [string uppercaseString];
    NSUInteger length = [string length];
    
    if (length < 1)
        return NO;
    
    for(int i=0; i<length/2; i++){
        if ([string characterAtIndex:i] != [string characterAtIndex:(length - 1 - i)]){
            return NO;
        }
    }
    return YES;
}

//2) Write a method which will remove any given character from a String?
-(NSString *)removeChar:(NSString*)chara fromString:(NSString *)str {
    if ([self isValidString:chara] && [self isValidString:str]){
        NSString *resultStr = [str stringByReplacingOccurrencesOfString:chara withString:@""];
        return resultStr;
    }
     return nil;
}

//3) Check String equality
-(void)checkStringEquality {
    
    NSString *firstUserName = @"nick";
    NSString *secondUserName = @"nick";
    //NSString *secondUserName = [NSString stringWithFormat:@"%@",firstUserName];
//Result are equal
    if (firstUserName == secondUserName)
    {
        NSLog(@"Are Equal");
    }
    else
    {
        NSLog(@"Are Not Equal");
    }
    
    //Case 2nd Result - Are Not Equal
    NSString *newString = [[NSString alloc] initWithFormat:@"nick"];
    if (firstUserName == newString)
    {
        NSLog(@"Are Equal");
    }
    else
    {
        NSLog(@"Are Not Equal");
    }
    //Case 3rd Result - Are  Equal
    NSString *testString = [NSString stringWithString:firstUserName];
    if (firstUserName == testString)
    {
        NSLog(@"Are Equal");
    }
    else
    {
        NSLog(@"Are Not Equal");
    }
 // print value on console with p- you can see output as well as memory address.
    
    //e.g.
    
  /*  (lldb) p firstUserName
    (__NSCFConstantString *) $4 = 0x00000001034186a0 @"nick"
    (lldb) p secondUserName
    (__NSCFConstantString *) $5 = 0x00000001034186a0 @"nick"
    (lldb) p newString
    (NSTaggedPointerString *) $6 = 0xa0000006b63696e4 @"nick"
   
   (lldb) p testString
   (__NSCFConstantString *) $7 = 0x00000001034186a0 @"nick"
   */
}


- (IBAction)btnClick_Action:(id)sender {
    
    SecondVC *controller = [self.storyboard instantiateViewControllerWithIdentifier:@"SecondVC"];
  //  controller.frinds = self.frindsName; //Changed |self.frindsName| if SecondVC make changes in |frinds|
   // controller.frinds = [self.frindsName copy]; // App crashed when secondVC trying to change in |friends|
    //controller.frinds = [self.frindsName mutableCopy]; //No change in |self.frindsName| while SecondVC make changes in |frinds|
    controller.frinds = [[NSMutableArray alloc] initWithArray:self.frindsName]; //No change in |self.frindsName| while SecondVC make changes in |frinds|


    controller.name = self.strCopyName;
    controller.firstName = self.strStrongFirstName;
    [self.navigationController pushViewController:controller animated:YES];
}

@end
