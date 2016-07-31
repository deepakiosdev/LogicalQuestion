//
//  SecondVC.m
//  LogicalQuestion
//
//  Created by Deepak on 20/01/16.
//  Copyright © 2016 Deepak. All rights reserved.
//

#import "SecondVC.h"

@interface SecondVC ()

@end

@implementation SecondVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.frinds replaceObjectAtIndex:0 withObject:@"AAA"];
    self.name = @"Changed name Amit Mishra";
    self.firstName = @"Changed name Amit";
    NSLog(@"name:%@, firstName:%@",self.name, self.firstName);
    NSLog(@"frinds:%@",self.frinds);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
