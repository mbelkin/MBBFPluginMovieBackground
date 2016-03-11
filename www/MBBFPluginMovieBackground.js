/*global cordova, module*/

module.exports = {
    greet: function (name, successCallback, errorCallback) {
        cordova.exec(successCallback, errorCallback, "Hello", "greet", [name]);
    },
	playMoviePath: function (moviePath, successCallback, errorCallback) {
		cordova.exec(successCallback, errorCallback, "MBBFPluginMovieBackground", "playMoviePath", [moviePath]);
	}
};
