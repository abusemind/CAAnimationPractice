//
//  KeyFrameAniViewController.m
//  CAAnimationLearn
//
//  Created by Fei, Michael (Enterprise Infrastructure) on 7/29/14.
//  Copyright (c) 2014 Morgan Stanley. All rights reserved.
//

#import "KeyFrameAniViewController.h"

@interface KeyFrameAniViewController () <UITextFieldDelegate>

@end

@implementation KeyFrameAniViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.passwordBox.delegate = self;
}


- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    CAKeyframeAnimation *animation = [CAKeyframeAnimation animationWithKeyPath:@"position.x"];
    animation.values = @[@0, @15, @-15, @15, @0];
    animation.keyTimes = @[@0, @(1/6.0), @(3/6.0), @(5/6.0), @1];
    animation.duration = 0.2;
    animation.additive = YES;
    
    [self.passwordBox.layer addAnimation:animation forKey:@"shake"];
    
    return YES;
}


@end
