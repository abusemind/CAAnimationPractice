//
//  BasicAniViewController.m
//  CAAnimationLearn
//
//  Created by Fei, Michael (Enterprise Infrastructure) on 7/29/14.
//  Copyright (c) 2014 Morgan Stanley. All rights reserved.
//

#import "BasicAniViewController.h"

@interface BasicAniViewController ()

@end

@implementation BasicAniViewController



- (IBAction)doBasic:(id)sender
{
    
    NSLog(@"Before Basic animation:");
    NSLog(@"%@", NSStringFromCGPoint(self.rocket.center));
    NSLog(@"%@", NSStringFromCGPoint(self.rocket2.center));
    
    CABasicAnimation *animation = [CABasicAnimation animation];
    animation.keyPath = @"position.x";
    animation.byValue   = @320;
    animation.duration  = 1;
    animation.fillMode  = kCAFillModeForwards;
    animation.removedOnCompletion = NO;
    animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn];
    
    [self.rocket.layer addAnimation:animation forKey:@"yangyif-slide"]; //animation object is here copied
    
    
    //animation.beginTime = CACurrentMediaTime() + 0.5;
    animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
    [self.rocket2.layer addAnimation:animation forKey:@"yangyif-slide"]; //animation object is here copied
    
    
    NSLog(@"After Basic animation:");
    NSLog(@"%@", NSStringFromCGPoint(self.rocket.center));
    NSLog(@"%@", NSStringFromCGPoint(self.rocket2.center));
    
    //Animation only changes the presentation layer, not the model layer
}
@end
