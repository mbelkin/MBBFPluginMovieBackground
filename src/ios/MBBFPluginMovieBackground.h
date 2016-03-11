#import <Cordova/CDV.h>

@interface MBBFPluginMovieBackground : CDVPlugin

- (void)addMovieBackgroundWithPath:(CDVInvokedUrlCommand *)command;
- (void)playMovie:(CDVInvokedUrlCommand *)command;
- (void)pauseMovie:(CDVInvokedUrlCommand *)command;
- (void)stopMovie:(CDVInvokedUrlCommand *)command;
- (void)removeMovieBackground:(CDVInvokedUrlCommand *)command;

@end