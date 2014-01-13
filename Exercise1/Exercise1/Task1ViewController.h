//
//  Task1ViewController.h
//  Exercise1
//
//  Created by Christian Peter on 13.01.14.
//  Copyright (c) 2014 Christian&Simen. All rights reserved.
//

#import <UIKit/UIKit.h>

int Y;
int X;

@interface Task1ViewController : UIViewController{
    IBOutlet UIImageView *Helicopter;
    IBOutlet UIButton *StartButton;
    bool hasStarted;
    
    NSTimer *timer;
}

-(IBAction)StartButton:(id)sender;
-(void)HelicopterMovement;

@end
