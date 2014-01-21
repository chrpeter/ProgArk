//
//  Task4ViewController.m
//  Exercise1
//
//  Created by Christian Peter on 17.01.14.
//  Copyright (c) 2014 Christian&Simen. All rights reserved.
//

#import "Task4ViewController.h"

@interface Task4ViewController ()

@end

@implementation Task4ViewController
@synthesize StartButton = _startButton;


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
    X = 0;
    Y = 0;
    machineY = 0;
    
    
    UIPanGestureRecognizer *panRecognizer = [[UIPanGestureRecognizer alloc] initWithTarget:self
                                                                                    action:@selector(dragSprite:)];
    [self.view addGestureRecognizer:panRecognizer];
    
}

- (BOOL)prefersStatusBarHidden {
    return YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)StartGame:(id)sender{
    _startButton.hidden = YES;
    if(!hasStarted){
        Y = -1;
        X = 1;
        machineY = 2;
        hasStarted = TRUE;
        
        
        machineTimer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(moveMachinePlayer)
                                               userInfo:nil repeats:YES];
        
        timer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(BallMovement)
                                               userInfo:nil repeats:YES];
    }
    
}

-(void)moveMachinePlayer{
    NSLog(@"Test3");
    self.machine.center = CGPointMake(self.machine.center.x, self.machine.center.y + machineY);

 
    
    
    if(self.machine.center.y < 0){
        machineY = 0 - machineY;
        NSLog(@"Test566");

    }
    if(self.machine.center.y > 300){
        NSLog(@"Test3333");

        machineY = 0 - machineY;
    }
}


-(void)BallMovement{
    
    
    ball.center = CGPointMake(ball.center.x + X, ball.center.y + Y);
    if(ball.center.y < 0){
        Y = 0 - Y;
    }
    if(ball.center.y > 300){
        Y = 0 - Y;
    }
    
    if (CGRectIntersectsRect(ball.frame, self.player.frame)) {
        if(ball.center.x > 37){
            X = 0 - X;
            Y = 0 - Y;

        }
        else{
        }


    }
    if(ball.center.x < -1){
        ball.center = CGPointMake(261, 145);
        timer.invalidate;
        _startButton.hidden = NO;
        hasStarted = NO;
        computerRes = [computerResult.text integerValue];
        computerRes+=1;
        NSString* myNewString = [NSString stringWithFormat:@"%i", computerRes];
        computerResult.text = myNewString;
        
        
    }else if (ball.center.x > 553){
        ball.center = CGPointMake(261, 145);
        timer.invalidate;
        _startButton.hidden = NO;
        hasStarted = NO;
        playerRes = [playerResult.text integerValue];
        playerRes+=1;
        NSString* myNewString = [NSString stringWithFormat:@"%i", playerRes];
        playerResult.text = myNewString;
    }
    
    
    
    if (CGRectIntersectsRect(ball.frame, self.machine.frame)) {

        if(ball.center.x < 531){

            X = 0 - X;
            Y = 0 - Y;
        }
        else{
            
        }
       

    }
    
    
}
- (IBAction)dragSprite:(UIPanGestureRecognizer *)sender {
    
    
    CGPoint point = [sender locationInView:self.view];
    
    if(point.y>0 && point.y < 242 ){
        self.player.center = CGPointMake(self.player.frame.origin.x, point.y);
        self.player.frame = CGRectMake(self.player.center.x, self.player.center.y, self.player.frame.size.width, self.player.frame.size.height);
    }
    
    NSString *xCoord = [[NSNumber numberWithFloat:(self.player.frame.origin.x / 2.0f)] stringValue];
    NSString *yCoord = [[NSNumber numberWithFloat:(self.player.frame.origin.y / 2.0f)] stringValue];
    //   NSLog(@"TestMoved");
    NSString *d = [NSString stringWithFormat:@"x:%@, y:%@", xCoord, yCoord];
    //Setter textlabel til riktige coordinater.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return UIInterfaceOrientationIsLandscape(interfaceOrientation);
}

- (NSUInteger)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskLandscapeLeft | UIInterfaceOrientationMaskLandscapeRight;
}

- (BOOL)shouldAutorotate {
    return YES;
}
-(IBAction) stopGame:(id)sender{
    timer.invalidate;
}

@end
