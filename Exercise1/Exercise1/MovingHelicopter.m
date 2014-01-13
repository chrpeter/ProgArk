//
//  MovingHelicopter.m
//  Exercise1
//
//  Created by Christian Peter on 13.01.14.
//  Copyright (c) 2014 Christian&Simen. All rights reserved.
//

#import "MovingHelicopter.h"

@implementation MovingHelicopter{
    
    SKSpriteNode *_bear;
    NSArray *_bearWalkingFrames;
}

-(id)initWithSize:(CGSize)size
{
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */
        
        self.backgroundColor = [SKColor blackColor];
        
        // TODO...
        
    }
    return self;
}

-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}


@end
