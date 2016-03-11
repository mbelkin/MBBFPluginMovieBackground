/*global cordova, module*/

module.exports = {
	addMovieBackgroundWithPath: function (moviePath, successCallback, errorCallback) {
		cordova.exec(successCallback, errorCallback, "MBBFPluginMovieBackground", "addMovieBackgroundWithPath", [moviePath]);
	},
	playMovie: function (args, successCallback, errorCallback) {
		cordova.exec(successCallback, errorCallback, "MBBFPluginMovieBackground", "playMovie", [args]);
	},
	pauseMovie: function (args, successCallback, errorCallback) {
		cordova.exec(successCallback, errorCallback, "MBBFPluginMovieBackground", "pauseMovie", [args]);
	},
	stopMovie: function (args, successCallback, errorCallback) {
		cordova.exec(successCallback, errorCallback, "MBBFPluginMovieBackground", "stopMovie", [args]);
	},
	removeMovieBackground: function (args, successCallback, errorCallback) {
		cordova.exec(successCallback, errorCallback, "MBBFPluginMovieBackground", "removeMovieBackground", [args]);
	}
};
