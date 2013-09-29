// StatusBar.js
//
// Created by Patrick Heneise, @PatrickHeneise
//
// Copyright 2013 Parick Heneise. All rights reserved.
// MIT Licensed

var exec = require('cordova/exec');

var statusbar = {
  show: function(callback) {
    exec(callback, null, 'StatusBar', 'show', []);
  },

  hide: function(callback) {
    exec(callback, null, 'StatusBar', 'hide', []);
  },

  whiteTint: function(callback) {
    exec(callback, null, 'StatusBar', 'whiteTint', []);
  },

  blackTint: function(callback) {
    exec(callback, null, 'StatusBar', 'blackTint', []);
  }
};

module.exports = statusbar;
