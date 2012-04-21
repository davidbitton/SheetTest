//
//  STLoginSheet.h
//  SheetTest
//
//  Created by David Bitton on 3/16/12.
//  Copyright (c) 2012 Code No Evil, LLC. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <WebKit/WebKit.h>

@interface STLoginSheetWindowController : NSWindowController

@property (strong) IBOutlet WebView *webView;
@property (strong) IBOutlet NSProgressIndicator *spinner;
@property (strong) IBOutlet NSButton *doneButton;

- (IBAction)done:(NSButton *)sender;

@end
