//
//  STMainViewController.h
//  SheetTest
//
//  Created by David Bitton on 3/16/12.
//  Copyright (c) 2012 Code No Evil, LLC. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface STMainViewController : NSViewController

@property (weak) IBOutlet NSButton *openButton;

- (IBAction)open:(NSButton *)sender;

@end
