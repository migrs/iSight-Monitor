//
//  iSight_MonitorAppDelegate.m
//  iSight Monitor
//
//  Created by Masato Igarashi on 10/06/11.
//  Copyright 2010 Masato Igarashi. All rights reserved.
//

#import "iSight_MonitorAppDelegate.h"

@implementation iSight_MonitorAppDelegate

@synthesize window;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    
	QTCaptureSession *session = [[QTCaptureSession alloc] init];
	
    QTCaptureDevice *iSight = [QTCaptureDevice defaultInputDeviceWithMediaType:QTMediaTypeVideo];
	[iSight open:nil];

	QTCaptureDeviceInput *myInput = [QTCaptureDeviceInput deviceInputWithDevice:iSight];
	[session addInput:myInput error:nil];
    
	[outputView setCaptureSession:session];
	
	[session startRunning]; 
}

@end
