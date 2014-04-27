# StatusBar for Cordova

Change the style of the status bar in iOS, in any instance of your app. You can show it, hide it, change the tint to white or black. All transitions are animated. <strong>Cordova 3.+ compatible.</strong>

## Installation

1. run 'cordova plugin add https://github.com/patrickheneise/cordova-ios-statusbar.git'
2. In Xcode 5 edit your app plist file set "View controller-based status bar appearance" to NO

##How it works

    statusbar = plugins.statusBar;
    statusbar.hide();
    statusbar.show();
    statusbar.whiteTint();
    statusbar.blackTint();

It's as simple as that. Have fun.

# License
copyright 2013-2014 patrick heneise

licensed under the apache license, version 2.0 (the "license"); you may not use this file except in compliance with the license. you may obtain a copy of the license at

http://www.apache.org/licenses/LICENSE-2.0.html
unless required by applicable law or agreed to in writing, software distributed under the license is distributed on an "as is" basis, without warranties or conditions of any kind, either express or implied. see the license for the specific language governing permissions and limitations under the license.

## Contributors
- Patrick Heneise [@PatrickHeneise](http://twitter.com/PatrickHeneise)
- Juan Vanni [jota-v](https://github.com/jota-v)
- Diana Liu [dianaliu](https://github.com/dianaliu)
- David Glivar [davidglivar](https://github.com/davidglivar)
