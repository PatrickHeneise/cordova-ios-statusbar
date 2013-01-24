//
//  ActionSheet.js
//
// Created by Patrick Heneise, @PatrickHeneise
//
// Copyright 2013 Parick Heneise. All rights reserved.
// MIT Licensed

(function(cordova) {
	function StatusBar (){};
 
  StatusBar.prototype.show = function(callback) {
    cordova.exec(callback, null, 'StatusBar', 'show', []);
  };
 
  StatusBar.prototype.hide = function(callback) {
    cordova.exec(callback, null, 'StatusBar', 'hide', []);
  };
 
  StatusBar.prototype.translucent = function(callback) {
    cordova.exec(callback, null, 'StatusBar', 'translucent', []);
  };
 
  StatusBar.prototype.opaque = function(callback) {
    cordova.exec(callback, null, 'StatusBar', 'opaque', []);
  };

  cordova.addConstructor(function() {
    if(!window.plugins) window.plugins = {};
    window.plugins.statusBar = new StatusBar();
  });
 })(window.cordova || window.Cordova);