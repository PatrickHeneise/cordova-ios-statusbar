//
//  StatusBar.m
//
//  Copyright (c) 2013 by Patrick Heneise, @PatrickHeneise
//  License: Apache 2.0

#import "StatusBar.h"

@implementation StatusBar

@synthesize callbackId = _callbackId;

- (void)whiteTint:(CDVInvokedUrlCommand*)command {
  CDVPluginResult* pluginResult = nil;

    self.callbackId = command.callbackId;
  
  self.webView.backgroundColor = [UIColor whiteColor];

  [[UIApplication sharedApplication] setStatusBarHidden:NO withAnimation:YES];
  [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
  
	pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
  [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)blackTint:(CDVInvokedUrlCommand*)command {
  CDVPluginResult* pluginResult = nil;

	self.callbackId = command.callbackId;
  
  [[UIApplication sharedApplication] setStatusBarHidden:NO withAnimation:YES];
  [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleDefault];
  
	pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
  [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)hide:(CDVInvokedUrlCommand*)command {
  CDVPluginResult* pluginResult = nil;

	self.callbackId = command.callbackId;
  
  [[UIApplication sharedApplication] setStatusBarHidden:YES withAnimation:YES];
  
	pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
  [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)show:(CDVInvokedUrlCommand*)command {
  CDVPluginResult* pluginResult = nil;

	self.callbackId = command.callbackId;
  
  [[UIApplication sharedApplication] setStatusBarHidden:NO withAnimation:NO];
  [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleDefault animated:YES];
  
	pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
  [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end