//
//  ViewController.m
//  SampleiOSApp
//
//  Created by Matthew Brightbill on 2/2/15.
//  Copyright (c) 2015 Matthew Brightbill. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *textLabel;
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.textField.delegate = self;
}


- (NSString *)reverseString:(NSString *) originalString {
    NSUInteger length = originalString.length;
    NSMutableString *reversedString = [NSMutableString stringWithCapacity:length];
    
    for (int i = length - 1; i >= 0; i--) {
        [reversedString appendFormat:[NSString stringWithFormat:@"%c", [originalString characterAtIndex:i]]];
    }
    return reversedString;
    
}

- (IBAction)didPressReverseButton:(id)sender {
    
    NSString *newResult = [self reverseString:self.textField.text];
    
    self.textLabel.text = newResult;
    
}


@end
