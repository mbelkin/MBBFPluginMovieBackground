/*global cordova, module*/

module.exports = {
    greet: function (name, successCallback, errorCallback) {
        cordova.exec(successCallback, errorCallback, "Hello", "greet", [name]);
    },
	addMovieBackgroundWithPath: function (moviePath, successCallback, errorCallback) {
		cordova.exec(successCallback, errorCallback, "MBBFPluginMovieBackground", "addMovieBackgroundWithPath", [moviePath]);
	},
	playMovie: function (null, successCallback, errorCallback) {
		cordova.exec(successCallback, errorCallback, "MBBFPluginMovieBackground", "playMovie", nill);
	},
	pauseMovie: function (null, successCallback, errorCallback) {
		cordova.exec(successCallback, errorCallback, "MBBFPluginMovieBackground", "pauseMovie", nill);
	},
	stopMovie: function (null, successCallback, errorCallback) {
		cordova.exec(successCallback, errorCallback, "MBBFPluginMovieBackground", "stopMovie", nill);
	},
	removeMovieBackground: function (null, successCallback, errorCallback) {
		cordova.exec(successCallback, errorCallback, "MBBFPluginMovieBackground", "removeMovieBackground", nill);
	}
};
