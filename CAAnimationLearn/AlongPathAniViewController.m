//
//  AlongPathAniViewController.m
//  CAAnimationLearn
//
//  Created by Fei, Michael (Enterprise Infrastructure) on 7/29/14.
//  Copyright (c) 2014 Morgan Stanley. All rights reserved.
//

#import "AlongPathAniViewController.h"

@interface AlongPathAniViewController ()

@end

@implementation AlongPathAniViewController

- (void) viewDidAppear:(BOOL)animated
{
    CGRect boundingRect = CGRectMake(-100, -100, 200, 200);
    
    CAKeyframeAnimation *orbit = [CAKeyframeAnimation animationWithKeyPath:@"position"];
    orbit.path = CFAutorelease(CGPathCreateWithEllipseInRect(boundingRect, NULL));
    orbit.duration = 4;
    orbit.additive = YES;
    orbit.repeatCount = HUGE_VALF;
    orbit.calculationMode = kCAAnimationPaced;
    orbit.rotationMode = kCAAnimationRotateAuto;
    
    [self.sate.layer addAnimation:orbit forKey:@"orbit"];
}


@end
