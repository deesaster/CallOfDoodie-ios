//
//  AppDelegate.h
//  CallOfDoodie
//
//  Created by Denis Smirnov on 11-08-13.
//  Copyright Deesa Studio 2011. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RootViewController;

@interface AppDelegate : NSObject <UIApplicationDelegate> {
	UIWindow			*window;
	RootViewController	*viewController;
}

@property (nonatomic, retain) UIWindow *window;

@end
