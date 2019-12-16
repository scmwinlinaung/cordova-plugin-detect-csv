var exec = require('cordova/exec');

var PLUGIN_NAME = "detect_csv"; // This is just for code completion uses.

var detect_csv = function() {}; // This just makes it easier for
 // us to export all of the functions at once.
// All of your plugin functions go below this. 
// Note: We are not passing any options in the [] block for this, so make sure you include the empty [] block.
detect_csv.getFileUrl = function(onSuccess, onError) {
   exec(onSuccess, onError, PLUGIN_NAME, "getFileUrl", []);
};
module.exports = detect_csv;