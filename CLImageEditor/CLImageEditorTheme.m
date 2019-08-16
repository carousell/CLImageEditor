//
//  CLImageEditorTheme.m
//
//  Created by sho yakushiji on 2013/12/05.
//  Copyright (c) 2013年 CALACULU. All rights reserved.
//

#import "CLImageEditorTheme.h"

@implementation CLImageEditorTheme

#pragma mark - singleton pattern

static CLImageEditorTheme *_sharedInstance = nil;

+ (CLImageEditorTheme*)theme
{
    static dispatch_once_t  onceToken;
    dispatch_once(&onceToken, ^{
        _sharedInstance = [[CLImageEditorTheme alloc] init];
    });
    return _sharedInstance;
}

+ (id)allocWithZone:(NSZone *)zone
{
    @synchronized(self) {
        if (_sharedInstance == nil) {
            _sharedInstance = [super allocWithZone:zone];
            return _sharedInstance;
        }
    }
    return nil;
}

- (id)copyWithZone:(NSZone *)zone
{
    return self;
}

- (id)init
{
    self = [super init];
    if (self) {
        CGFloat totalFloat = 255.0;
        self.bundleName                     = @"CLImageEditor";
        self.backgroundColor                = [UIColor colorWithRed:178/totalFloat green:178/totalFloat blue:178/totalFloat alpha:1];
        self.toolbarColor                   = [UIColor whiteColor];
		self.toolIconColor                  = @"white";
        self.toolbarTextColor               = [UIColor whiteColor];
        self.toolbarSelectedButtonColor     = [UIColor darkGrayColor];
        self.toolbarTextFont                = [UIFont systemFontOfSize:10];
        self.statusBarHidden                = NO;
        self.statusBarStyle                 = UIStatusBarStyleDefault;
    }
    return self;
}

@end
