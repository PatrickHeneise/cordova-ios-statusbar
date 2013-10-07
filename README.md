# StatusBar for Cordova

by Patrick Heneise ([@PatrickHeneise](http://twitter.com/PatrickHeneise), [about.me/PatrickHeneise](http://about.me/PatrickHeneise)).

Addapted for ios7 by jota-v.

Change the style of the status bar in iOS, in any instance of your app. You can show it, hide it, change the tint to white or black. All transitions are animated. <strong>Cordova 3.0+ compatible.</strong>

## Installation

1. Within Xcode, copy StatusBar.m and StatusBar.h to your plugin directory
2. Copy StatusBar.js to your javascript directory
3. Add StatusBar.js to your index.html
4. Add ```<feature name="StatusBar">
        <param name="ios-package" value="StatusBar" />
    </feature>``` to your config.xml
5. In Xcode 5 edit your app plist file set UIViewControllerBasedStatusBarAppearance to NO

##How it works

    statusbar = window.plugins.statusBar;
    statusbar.hide();
    statusbar.show();
    statusbar.whiteTint();
    statusbar.blackTint();

It's as simple as that. Have fun.
