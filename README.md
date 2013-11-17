# StatusBar for Cordova

by Patrick Heneise ([@PatrickHeneise](http://twitter.com/PatrickHeneise), [about.me/PatrickHeneise](http://about.me/PatrickHeneise)).

Addapted for ios7 by <strong>jota-v</strong>.
CLI support by <strong>dianaliu</strong>.

Change the style of the status bar in iOS, in any instance of your app. You can show it, hide it, change the tint to white or black. All transitions are animated. <strong>Cordova 3.+ compatible.</strong>

## Installation

cordova plugin add https://github.com/jota-v/cordova-ios-statusbar.git

##How it works

    statusbar = window.plugins.statusBar;
    statusbar.hide();
    statusbar.show();
    statusbar.whiteTint();
    statusbar.blackTint();

It's as simple as that. Have fun.
