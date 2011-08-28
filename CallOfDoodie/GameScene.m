//
//  GameScene.m
//  CallOfDoodie
//
//  Created by Denis Smirnov on 11-08-28.
//  Copyright 2011 Deesa Studio. All rights reserved.
//

#import "GameScene.h"

@implementation GameScene

- (id)init
{
    self = [super init];
    if (self) {
        bgSprite = [[CCSprite alloc] initWithFile:@"background_level_1.png"];
        [bgSprite setPosition:CGPointMake(240, 160)];
        [self addChild:bgSprite];
    }
    
    return self;
}


-(void)dealloc {
    [bgSprite release];
    [super dealloc];
}
@end
