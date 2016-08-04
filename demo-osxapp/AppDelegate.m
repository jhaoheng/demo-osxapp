//
//  AppDelegate.m
//  demo-osxapp
//
//  Created by max on 2016/8/4.
//  Copyright © 2016年 max hu. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate (){
    NSStatusItem *statusItem;
    NSMenu *theMenu;
}

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    
    
    NSMenuItem *tItem = nil;
    
    theMenu = [[NSMenu alloc] initWithTitle:@""];
    [theMenu setAutoenablesItems:NO];
    
    [theMenu addItemWithTitle:@"Start" action:@selector(itemAction:) keyEquivalent:@"start"];
    [theMenu addItemWithTitle:@"Stop" action:@selector(itemAction:) keyEquivalent:@"stop"];
    
    [theMenu addItem:[NSMenuItem separatorItem]];
    
    tItem = [theMenu addItemWithTitle:@"Quit" action:@selector(terminate:) keyEquivalent:@"q"];
    [tItem setKeyEquivalentModifierMask:NSCommandKeyMask];
    
    NSStatusBar *statusBar = [NSStatusBar systemStatusBar];
    statusItem = [statusBar statusItemWithLength:NSVariableStatusItemLength];
    [statusItem setImage:[NSImage imageNamed:@"orbweb_size-22.png"]];
    [statusItem setToolTip:@"This is our tool tip text"];
    [statusItem setHighlightMode:YES];
    [statusItem setMenu:theMenu];
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

- (void)itemAction:(id)sender{
    NSMenuItem *item = sender;
    NSLog(@"%@",item.keyEquivalent);
    
}

@end
