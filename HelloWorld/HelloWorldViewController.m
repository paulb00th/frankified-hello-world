//
//  HelloWorldViewController.m
//  HelloWorld
//
//  Created by Paul Booth on 03/10/2012.
//  Copyright (c) 2012 Paul Booth. All rights reserved.
//

#import "HelloWorldViewController.h"

@interface HelloWorldViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation HelloWorldViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)changeGreeting:(id)sender
{
    self.userName = self.textField.text;
    
    NSString *nameString = self.userName;
    
    if ([nameString length] == 0) nameString = @"World";
    
    NSString *greeting = [[NSString alloc] initWithFormat:@"Hello, %@!", nameString];
    
    self.label.text = greeting;
}

- (BOOL)textFieldShouldReturn:(UITextField *)theTextField
{
    if (theTextField == self.textField) {
        [theTextField resignFirstResponder];
    }
    
    return YES;
}

@end