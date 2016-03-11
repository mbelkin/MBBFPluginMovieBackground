#import "MBBFPluginMovieBackground.h"
#import <MediaPlayer/MediaPlayer.h>

@interface MBBFPluginMovieBackground()

@property (strong, nonatomic) NSString * moviePath;
@property (strong, nonatomic) MPMoviePlayerController * moviePlayerController;

@end

@implementation MBBFPluginMovieBackground

- (void)addMovieBackgroundWithPath:(CDVInvokedUrlCommand *)command
{
	self.moviePath = command.arguments[0];
	[self.moviePlayerController prepareToPlay];
	[self.webView insertSubview:self.moviePlayerController.view atIndex:0];
	self.moviePlayerController.view.frame = self.webView.frame;
	
	[self.commandDelegate sendPluginResult:[CDVPluginResult resultWithStatus:CDVCommandStatus_OK] callbackId:[command callbackId]];
}

- (void)playMovie:(CDVInvokedUrlCommand *)command
{
	[self.moviePlayerController play];
	
	[self.commandDelegate sendPluginResult:[CDVPluginResult resultWithStatus:CDVCommandStatus_OK] callbackId:[command callbackId]];
}

- (void)pauseMovie:(CDVInvokedUrlCommand *)command
{
	[self.moviePlayerController pause];
	
	[self.commandDelegate sendPluginResult:[CDVPluginResult resultWithStatus:CDVCommandStatus_OK] callbackId:[command callbackId]];
}

- (void)stopMovie:(CDVInvokedUrlCommand *)command
{
	[self.moviePlayerController stop];
	
	[self.commandDelegate sendPluginResult:[CDVPluginResult resultWithStatus:CDVCommandStatus_OK] callbackId:[command callbackId]];
}

- (void)removeMovieBackground:(CDVInvokedUrlCommand *)command
{
	[self.moviePlayerController.view removeFromSuperview];
	self.moviePlayerController = nil;
	
	[self.commandDelegate sendPluginResult:[CDVPluginResult resultWithStatus:CDVCommandStatus_OK] callbackId:[command callbackId]];
}

#pragma mark - Getters
- (MPMoviePlayerController *)moviePlayerController
{
	if (!_moviePlayerController)
	{
		NSURL * contentUrl = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:[NSString stringWithFormat:@"www/video/%@", self.moviePath] ofType:@"mp4"]];
		_moviePlayerController = [[MPMoviePlayerController alloc] initWithContentURL:contentUrl];
		_moviePlayerController.controlStyle = MPMovieControlStyleNone;
		_moviePlayerController.repeatMode = MPMovieRepeatModeOne;
		_moviePlayerController.scalingMode = MPMovieScalingModeAspectFill;
		_moviePlayerController.shouldAutoplay = NO;
	}
	return _moviePlayerController;
}

#pragma mark - Setters
- (void)setMoviePath:(NSString *)moviePath
{
	_moviePath = moviePath;
	self.moviePlayerController.contentURL = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:[NSString stringWithFormat:@"www/video/%@", moviePath] ofType:@"mp4"]];
}

@end