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
@synthesize webView;
@synthesize spinner;
@synthesize doneButton;

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
    [[self window] setDefaultButtonCell:[doneButton cell]];
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    [webView setFrameLoadDelegate:self];
    [spinner startAnimation:self];
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"https://m.facebook.com/dialog/oauth?client_id=275831095827203&sdk=ios&redirect_uri=fbconnect%3A%2F%2Fsuccess&display=touch&type=user_agent&scope=offline_access"]];
    [[webView mainFrame] loadRequest:request];
}

- (IBAction)done:(NSButton *)sender {
    [NSApp endSheet:[self window] returnCode:NSOKButton];
    [[self window] orderOut:nil];
}

-(void)webView:(WebView *)sender didFinishLoadForFrame:(WebFrame *)frame {
    [spinner stopAnimation:self];
}

-(void)webView:(WebView *)sender didReceiveTitle:(NSString *)title forFrame:(WebFrame *)frame {
    NSLog(@"Frame title: %@", title);
}

-(void)webView:(WebView *)sender willPerformClientRedirectToURL:(NSURL *)URL delay:(NSTimeInterval)seconds fireDate:(NSDate *)date forFrame:(WebFrame *)frame {
    NSLog(@"Redirect URL: %@", URL);
}

@end
