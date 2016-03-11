#import "MBBFPluginMovieBackground.h"

@implementation MBBFPluginMovieBackground

- (void)greet:(CDVInvokedUrlCommand*)command
{
	
	NSString* callbackId = [command callbackId];
	NSString* name = [[command arguments] objectAtIndex:0];
	NSString* msg = [NSString stringWithFormat: @"Michael Says Hello, %@", name];
	
	CDVPluginResult* result = [CDVPluginResult
							   resultWithStatus:CDVCommandStatus_OK
							   messageAsString:msg];
	
	[self.commandDelegate sendPluginResult:result callbackId:callbackId];
}

@end