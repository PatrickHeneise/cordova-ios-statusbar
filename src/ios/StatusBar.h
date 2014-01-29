//
//  StatusBar.h
//
//  Copyright (c) 2013 by Patrick Heneise, @PatrickHeneise
//  License: Apache 2.0

#import <Cordova/CDV.h>
#import <Foundation/Foundation.h>

@interface StatusBar : CDVPlugin {
}

#pragma mark - Properties

@property (nonatomic, copy) NSString* callbackId;

#pragma mark - Instance methods

- (void)show:(CDVInvokedUrlCommand*)command;
- (void)blackTint:(CDVInvokedUrlCommand*)command;
- (void)whiteTint:(CDVInvokedUrlCommand*)command;
- (void)hide:(CDVInvokedUrlCommand*)command;

@end
