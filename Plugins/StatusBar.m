//
//  StatusBar.m
//
//  Copyright (c) 2013 by Patrick Heneise, @PatrickHeneise
//
//
//    Permission is hereby granted, free of charge, to any person obtaining a
//    copy of this software and associated documentation files (the
//    "Software"), to deal in the Software without restriction, including
//    without limitation the rights to use, copy, modify, merge, publish,
//    distribute, sublicense, and/or sell copies of the Software, and to permit
//    persons to whom the Software is furnished to do so, subject to the
//    following conditions:
//
//    The above copyright notice and this permission notice shall be included
//    in all copies or substantial portions of the Software.
//
//    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
//    OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
//    MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN
//    NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
//    DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
//    OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE
//    USE OR OTHER DEALINGS IN THE SOFTWARE.

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