//
//  HelloWorldViewController.h
//  HelloWorld
//
//  Created by Paul Booth on 03/10/2012.
//  Copyright (c) 2012 Paul Booth. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HelloWorldViewController : UIViewController <UITextFieldDelegate>

- (IBAction)changeGreeting:(id)sender;

@property (copy, nonatomic) NSString *userName;

@end
