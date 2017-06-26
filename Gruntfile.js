'use strict';
// Original code: https://github.com/r-hub/sysreqsdb/blob/master/Gruntfile.js

module.exports = function (grunt) {

  grunt.loadNpmTasks('grunt-jsonlint');

  grunt.initConfig({

    jsonlint: {
      sample: {
        src: [ '*.geojson' ]
      }
    }

  });

  // Default task.
  grunt.registerTask('default', 'jsonlint');

  // Travis CI task.
  grunt.registerTask('travis', 'jsonlint');

};