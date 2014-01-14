//
//  Task2aViewController.m
//  Exercise1
//
//  Created by Simen Skoglund on 13.01.14.
//  Copyright (c) 2014 Christian&Simen. All rights reserved.
//

#import "Task2aViewController.h"

@interface Task2aViewController ()

@end

@implementation Task2aViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [[event allTouches] anyObject];
    CGPoint location = [touch locationInView:touch.view];
    Helicopter.center = location;
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self touchesBegan:touches withEvent:event];
    
    
}

-(void)HelicopterMovement{
    
    Helicopter.center = CGPointMake(Helicopter.center.x + X, Helicopter.center.y + Y);
    
    if(Helicopter.center.x < 60){
        X = 0 - X;
    }
    if(Helicopter.center.x > 260){
        X = 0 - X;
    }
    if(Helicopter.center.y < 50){
        Y = 0 - Y;
    }
    if(Helicopter.center.y > 550){
        Y = 0 - Y;
        
    }
}

@end
