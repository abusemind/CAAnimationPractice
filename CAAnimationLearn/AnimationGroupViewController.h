//
//  AnimationGroupViewController.h
//  CAAnimationLearn
//
//  Created by Fei, Michael (Enterprise Infrastructure) on 7/29/14.
//  Copyright (c) 2014 Morgan Stanley. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AnimationGroupViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIView *blue;
@property (strong, nonatomic) IBOutlet UIView *red;

- (IBAction)shuffle:(id)sender;

@end
