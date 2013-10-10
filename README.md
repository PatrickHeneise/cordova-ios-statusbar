# StatusBar for Cordova

by Patrick Heneise ([@PatrickHeneise](http://twitter.com/PatrickHeneise), [about.me/PatrickHeneise](http://about.me/PatrickHeneise))

Various controls for the iPhone status bar (show, hide, translucent, opaque).

## Installation

1. Within Xcode, copy StatusBar.m and StatusBar.h to your plugin directory
2. Copy StatusBar.js to your javascript directory
3. Add StatusBar.js to your index.html
4. Add '<plugin name="StatusBar" value="StatusBar" />' to your config.xml

##How it works

    statusbar = navigator.statusBar;
    statusbar.hide();

It's as simple as that. Have fun.
