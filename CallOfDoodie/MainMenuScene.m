//
//  MainMenuScene.m
//  CallOfDoodie
//
//  Created by Denis Smirnov on 11-08-28.
//  Copyright 2011 Leetr. All rights reserved.
//

#import "MainMenuScene.h"
#import "GameScene.h"
#import "cocos2d.h"

@implementation MainMenuScene

- (id)init {
    self = [super init];
    if (self) {
        bgSprite = [[CCSprite alloc] initWithFile:@"background_paper.png"];
        [bgSprite setPosition:CGPointMake(240, 160)];
        [self addChild:bgSprite];
        [self addChild:[MainMenuLayer node]];
    }
    
    return self;
}

- (void)dealloc {
    [bgSprite release];
    
    [super dealloc];
}

@end

@implementation MainMenuLayer

- (id)init {
    self = [super init];
    if (self) {
        self.isTouchEnabled = YES;
        [self makeMenu];
    }
    
    return self;
}

- (void)makeMenu {
    CCMenuItemImage *startGameBtn = [CCMenuItemImage itemFromNormalImage:@"Icon.png" selectedImage:@"Icon.png" target:self selector:@selector(startGame:)];
    
    CCMenu *menu = [CCMenu menuWithItems:startGameBtn, nil];
    [self addChild:menu];
}

- (void)startGame:(id)sender {
    [[CCDirector sharedDirector] replaceScene:[GameScene node]];
}
@end