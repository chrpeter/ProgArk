//
//  Task2aViewController.h
//  Exercise1
//
//  Created by Simen Skoglund on 13.01.14.
//  Copyright (c) 2014 Christian&Simen. All rights reserved.
//

#import <UIKit/UIKit.h>

CGPoint startLocation;


@interface Task2aViewController : UIViewController{
    IBOutlet UILabel *labelResult;
    IBOutlet UIButton *RotateButton;
    NSTimer *timer;
    float transform;
    
}
@property (strong, nonatomic) IBOutlet UIPinchGestureRecognizer *pinch;
-(IBAction)rotateButton:(id)sender;
- (IBAction)scaleChopper:(UIPinchGestureRecognizer *)sender;
@property (weak, nonatomic) IBOutlet UIImageView *helicopter;
- (IBAction)rotatepinch:(UIRotationGestureRecognizer *)sender;

@end
