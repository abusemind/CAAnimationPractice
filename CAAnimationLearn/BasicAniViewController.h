//
//  BasicAniViewController.h
//  CAAnimationLearn
//
//  Created by Fei, Michael (Enterprise Infrastructure) on 7/29/14.
//  Copyright (c) 2014 Morgan Stanley. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BasicAniViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIView *rocket;
@property (strong, nonatomic) IBOutlet UIView *rocket2;

- (IBAction)doBasic:(id)sender;

@end
