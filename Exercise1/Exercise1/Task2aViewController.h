//
//  Task2aViewController.h
//  Exercise1
//
//  Created by Simen Skoglund on 13.01.14.
//  Copyright (c) 2014 Christian&Simen. All rights reserved.
//

#import <UIKit/UIKit.h>

int X;
int Y;
CGPoint startLocation;


@interface Task2aViewController : UIViewController{
    
    IBOutlet UIImageView *Helicopter;
    NSTimer *timer;
    
}
-(void)HelicopterMovement;

@end
