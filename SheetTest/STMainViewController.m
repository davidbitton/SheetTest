//
//  STMainViewController.m
//  SheetTest
//
//  Created by David Bitton on 3/16/12.
//  Copyright (c) 2012 Code No Evil, LLC. All rights reserved.
//

#import "STMainViewController.h"
#import "STLoginSheetWindowController.h"

@interface STMainViewController ()

@end

@implementation STMainViewController {
    STLoginSheetWindowController *_sheet;
}

@synthesize openButton;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

- (void)sheetDidEnd:(NSWindow *)sheet returnCode:(NSInteger)returnCode contextInfo:(void *)contextInfo {
    if (returnCode == NSOKButton)
		NSBeep();
    [sheet orderOut:self];
}

- (IBAction)open:(NSButton *)sender {

    _sheet = [[STLoginSheetWindowController alloc] init];
    NSWindow* window = [NSApplication sharedApplication].keyWindow;	
    if (!window) {	
        window = [[NSApplication sharedApplication].windows objectAtIndex:0];	
    }	

    [NSApp beginSheet:[_sheet window] 
       modalForWindow:window 
        modalDelegate:self 
       didEndSelector:@selector(sheetDidEnd:returnCode:contextInfo:) 
          contextInfo:nil];
}

@end
