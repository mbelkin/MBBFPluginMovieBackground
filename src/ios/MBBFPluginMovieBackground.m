#import "MBBFPluginMovieBackground.h"
#import <MediaPlayer/MediaPlayer.h>

@interface MBBFPluginMovieBackground()

@property (strong, nonatomic) NSString * moviePath;
@property (strong, nonatomic) MPMoviePlayerController * moviePlayerController;

@end

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

- (void)playMoviePath:(CDVInvokedUrlCommand *)command
{
	self.moviePath = command.arguments[0];
	[self.moviePlayerController prepareToPlay];
	[self.webView insertSubview:self.moviePlayerController.view atIndex:0];
	self.moviePlayerController.view.frame = self.webView.frame;
	[self.moviePlayerController play];
	
	CDVPluginResult * result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
	[self.commandDelegate sendPluginResult:result callbackId:[command callbackId]];
}

- (void)pauseCurrentMovie:(CDVInvokedUrlCommand *)command
{
	
}

- (void)stopCurrentMovie:(CDVInvokedUrlCommand *)command
{
	
}

#pragma mark - Getters
- (MPMoviePlayerController *)moviePlayerController
{
	if (!_moviePlayerController)
	{
		NSURL * contentUrl = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"booster" ofType:@"mp4"]];
		//_moviePlayerController = [[MPMoviePlayerController alloc] initWithContentURL:[NSURL URLWithString:self.contentUrlString]];
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
	self.moviePlayerController.contentURL = [NSURL URLWithString:moviePath];
}

@end