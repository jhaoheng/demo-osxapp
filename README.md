# demo-osxapp

NSStatusBar *statusBar
NSStatusItem *statusItem;
NSMenu *theMenu;


## launch 後，dock 不顯示 app
於 plist 中，設定 Application is agent (UIElement) = YES

## launch 不顯示 main window
storyboard -> select window controller -> attributes inspector -> 取消 is initial controller
