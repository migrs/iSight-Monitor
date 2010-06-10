//
//  iSight_MonitorAppDelegate.h
//  iSight Monitor
//
//  Created by Masato Igarashi on 10/06/11.
//  Copyright 2010 Masato Igarashi. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <QTKit/QTKit.h>

@interface iSight_MonitorAppDelegate : NSObject <NSApplicationDelegate> {
    NSWindow *window;
	IBOutlet QTCaptureView *outputView;
}

@property (assign) IBOutlet NSWindow *window;

@end
