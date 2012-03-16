//
//  STLoginSheet.m
//  SheetTest
//
//  Created by David Bitton on 3/16/12.
//  Copyright (c) 2012 Code No Evil, LLC. All rights reserved.
//

#import "STLoginSheetWindowController.h"

@interface STLoginSheetWindowController ()

@end

@implementation STLoginSheetWindowController

- (id)init {
    if((self = [super initWithWindowNibName:@"STLoginSheet" owner:self])){
        
    }
    return self;
}

- (id)initWithWindow:(NSWindow *)window
{
    self = [super initWithWindow:window];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

- (void)windowDidLoad
{
    [super windowDidLoad];
    
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
}

- (IBAction)done:(NSButton *)sender {
    [NSApp endSheet:[self window] returnCode:NSOKButton];
    [[self window] orderOut:nil];
}
@end
