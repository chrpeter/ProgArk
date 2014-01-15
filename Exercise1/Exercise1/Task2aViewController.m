//
//  Task2aViewController.m
//  Exercise1
//
//  Created by Simen Skoglund on 13.01.14.
//  Copyright (c) 2014 Christian&Simen. All rights reserved.
//

#import "Task2aViewController.h"
#include <math.h>

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

-(void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [[event allTouches] anyObject];
    CGPoint location = [touch locationInView:touch.view];
    Helicopter.center = location;


}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    //Change the constants to make the randomization higher.
    int newWidth = arc4random() % 70;
    int newHeight = arc4random() % 30;
    newHeight += 50; //to make sure the helicopter isnt getting to small
    newWidth += 50;
    
    NSString *xCoord = [[NSNumber numberWithFloat:Helicopter.frame.origin.x] stringValue];
    NSString *yCoord = [[NSNumber numberWithFloat:Helicopter.frame.origin.y] stringValue];
    
    NSString *d = [NSString stringWithFormat:@"x:%@, y:%@", xCoord, yCoord];
    //Setter textlabel til riktige coordinater.
    labelResult.text = d;
    //Random size
    Helicopter.frame = CGRectMake(0, 0, newHeight, newWidth);

    [self touchesBegan:touches withEvent:event];
    
}

//Roterer 90 grader per trykk
//Har ikke klart å lage hvordan man roterer om sitt eget imageview, kun startpointet.
-(IBAction)rotateButton:(id)sender{
    transform += M_PI/2;
    Helicopter.transform = CGAffineTransformMakeRotation(transform);

}
@end
