//
//  Task1ViewController.m
//  Exercise1
//
//  Created by Christian Peter on 13.01.14.
//  Copyright (c) 2014 Christian&Simen. All rights reserved.
//

#import "Task1ViewController.h"

@interface Task1ViewController ()

@end

@implementation Task1ViewController


-(IBAction)StartButton:(id)sender{
    Y = arc4random() % 11;
    Y = Y - 5;
    
    X = arc4random() % 11;
    X = X - 5;
    
    if(Y == 0){
        Y = 1;
    }
    if(X == 0){
        X = 1;
    }
    
    timer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(HelicopterMovement)
                                           userInfo:nil repeats:YES];
}
-(void)HelicopterMovement{
    
    Helicopter.center = CGPointMake(Helicopter.center.x + X, Helicopter.center.y + Y);
    
    if(Helicopter.center.x < 40){
        X = 0 - X;
    }
    if(Helicopter.center.x > 283){
        X = 0 - X;
    }
    if(Helicopter.center.y < 29.5){
        Y = 0 - Y;
    }
    if(Helicopter.center.y > 283){
        Y = 0 - Y;
    }
}

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
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
