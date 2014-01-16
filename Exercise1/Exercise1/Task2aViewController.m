//
//  Task2aViewController.m
//  Exercise1
//
//  Created by Simen Skoglund on 13.01.14.
//  Copyright (c) 2014 Christian&Simen. All rights reserved.
//

#import "Task2aViewController.h"
#include <math.h>
#import <cocos2d.h>
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


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (void)viewDidLoad
{
    [super viewDidLoad];
    UIPanGestureRecognizer *panRecognizer = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(dragSprite:)];
    [self.view addGestureRecognizer:panRecognizer];
}

- (IBAction)dragSprite:(UIPanGestureRecognizer *)sender {
    
    
    CGPoint point = [sender locationInView:self.view];
    self.helicopter.center = CGPointMake(point.x, point.y);
    self.helicopter.frame = CGRectMake(self.helicopter.center.x, self.helicopter.center.y, self.helicopter.frame.size.width, self.helicopter.frame.size.height);
    
    NSString *xCoord = [[NSNumber numberWithFloat:(self.helicopter.frame.origin.x / 2.0f)] stringValue];
    NSString *yCoord = [[NSNumber numberWithFloat:(self.helicopter.frame.origin.y / 2.0f)] stringValue];
    //   NSLog(@"TestMoved");
    NSString *d = [NSString stringWithFormat:@"x:%@, y:%@", xCoord, yCoord];
    //Setter textlabel til riktige coordinater.
    labelResult.text = d;
}



- (IBAction)scaleChopper:(UIPinchGestureRecognizer *)sender{
    int newWidth = arc4random() % 70;
    int newHeight = arc4random() % 30;
    newHeight += 50; //to make sure the helicopter isnt getting to small
    newWidth += 50;
    NSLog(@"TestPinch");
    self.helicopter.frame = CGRectMake(self.helicopter.frame.origin.x, self.helicopter.frame.origin.y, newWidth, newHeight);
}
//


//Roterer 90 grader per trykk
//Har ikke klart å lage hvordan man roterer om sitt eget imageview, kun startpointet.
-(IBAction)rotateButton:(id)sender{
    transform += M_PI/2;
    CGRect rect = self.helicopter.frame;
    [UIView animateWithDuration:0 animations:^{
        self.helicopter.hidden = YES;
        self.helicopter.transform = CGAffineTransformMakeRotation(transform);
    } completion:^(BOOL finished){
        self.helicopter.hidden = NO;
        if (rect.size.height > rect.size.width){
            self.helicopter.frame = CGRectMake(rect.origin.x, rect.origin.y, rect.size.height, rect.size.width);
        }
        else{
            self.helicopter.frame = CGRectMake(rect.origin.x, rect.origin.y, rect.size.height, rect.size.width);
        }    }];
    
}

@end
