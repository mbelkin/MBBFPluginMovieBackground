#import <Cordova/CDV.h>

@interface MBBFPluginMovieBackground : CDVPlugin

- (void)greet:(CDVInvokedUrlCommand*)command;
- (void)playMoviePath:(CDVInvokedUrlCommand *)command;
- (void)pauseCurrentMovie:(CDVInvokedUrlCommand *)command;
- (void)stopCurrentMovie:(CDVInvokedUrlCommand *)command;

@end