//
//  Utility.h
//  LogicalQuestion
//
//  Created by Deepak on 20/05/16.
//  Copyright © 2016 Deepak. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Utility : NSObject

+ (BOOL)isValidateUrl: (NSString *)url;
+ (BOOL)isValidString:(NSString *)string;

+ (BOOL) NSStringIsValidEmail:(NSString *)checkString;
+ (BOOL) NSStringIsValidName:(NSString *)checkString;
+ (NSString*)getValidString:(NSString *)string;
+ (NSString *)getUrlStringWithHttpVerb:(NSString *)url;
+ (void)showAlertMessage:(NSString *)message withTitle:(NSString *)title;
+ (void)showNetWorkAlert;

+ (NSDate *)getUTCFormateDate:(double)timeInSeconds;
extern id ObjectOrBlank(id object);

+ (NSString *)appVersion;
+ (NSString *)build;

+ (NSString *)extractComponentsInString:(NSDate *)date;

+ (NSString *)stringWithoutNilOrNull :(NSString *)checkString;

+ (NSString*)base64forData:(NSData*) theData;

+(NSString *)imageToNSString:(UIImage *)image;

+(void)setRoundedImage:(id)roundedView toDiameter:(float)newSize;
@end
