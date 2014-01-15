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
    IBOutlet UIImageView *Helicopter;
    IBOutlet UIButton *RotateButton;
    NSTimer *timer;
    float transform;
    
}
-(IBAction)rotateButton:(id)sender;
@end
