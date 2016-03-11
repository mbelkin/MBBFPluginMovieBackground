/*global cordova, module*/

module.exports = {
    greet: function (name, successCallback, errorCallback) {
        cordova.exec(successCallback, errorCallback, "Hello", "greet", [name]);
    },
	addMovieBackgroundWithPath: function (moviePath, successCallback, errorCallback) {
		cordova.exec(successCallback, errorCallback, "MBBFPluginMovieBackground", "addMovieBackgroundWithPath", [moviePath]);
	},
	playMovie: function ("", successCallback, errorCallback) {
		cordova.exec(successCallback, errorCallback, "MBBFPluginMovieBackground", "playMovie", "");
	},
	pauseMovie: function ("", successCallback, errorCallback) {
		cordova.exec(successCallback, errorCallback, "MBBFPluginMovieBackground", "pauseMovie", "");
	},
	stopMovie: function ("", successCallback, errorCallback) {
		cordova.exec(successCallback, errorCallback, "MBBFPluginMovieBackground", "stopMovie", "");
	},
	removeMovieBackground: function ("", successCallback, errorCallback) {
		cordova.exec(successCallback, errorCallback, "MBBFPluginMovieBackground", "removeMovieBackground", "");
	}
};
