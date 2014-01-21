//
//  Task4ViewController.h
//  Exercise1
//
//  Created by Christian Peter on 17.01.14.
//  Copyright (c) 2014 Christian&Simen. All rights reserved.
//

#import <UIKit/UIKit.h>

int X;
int Y;
int machineY;

@interface Task4ViewController : UIViewController{
    IBOutlet UILabel *playerResult;
    IBOutlet UILabel *computerResult;
    bool hasStarted;
    IBOutlet UIImageView *ball;
    IBOutlet UIImageView *player;
    IBOutlet UIImageView *machine;
    IBOutlet UIButton *StartButton;
    int computerRes;
    int playerRes;
    
    
    
    NSTimer *timer;
    
    NSTimer *machineTimer;
    
}
-(IBAction)StartGame:(id)sender;

@property (weak, nonatomic) IBOutlet UIImageView *player;
@property (nonatomic,weak) IBOutlet UIButton *StartButton;
@property (weak, nonatomic) IBOutlet UIImageView *machine;



@end