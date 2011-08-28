//
//  MainMenuScene.h
//  CallOfDoodie
//
//  Created by Denis Smirnov on 11-08-28.
//  Copyright 2011 Leetr. All rights reserved.
//

#import "cocos2d.h"

@interface MainMenuScene : CCScene {
    CCSprite *bgSprite;
}


@end

@interface MainMenuLayer :CCLayer {

}
- (void)makeMenu;
- (void)startGame:(id)sender;
@end
