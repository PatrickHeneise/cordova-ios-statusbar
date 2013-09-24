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
 
  StatusBar.prototype.whiteTint = function(callback) {
    cordova.exec(callback, null, 'StatusBar', 'whiteTint', []);
  };
 
  StatusBar.prototype.blackTint = function(callback) {
    cordova.exec(callback, null, 'StatusBar', 'blackTint', []);
  };

  cordova.addConstructor(function() {
    if(!window.plugins) window.plugins = {};
    window.plugins.statusBar = new StatusBar();
  });
 })(window.cordova || window.Cordova);