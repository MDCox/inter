module.exports = (grunt)->
  # Can work with coffeescript
  grunt.loadNpmTasks 'grunt-contrib-coffee'

  # Configuration of tasks
  grunt.initConfig
    # coffeescript compilation
    coffee:
      compile:
        expand: true
        flatten: true
        # Compile .coffee files in the src/ folder
        src: 'src/*.coffee'
        # Make them javascript files in the dist/ folder
        dest: 'dist/'
        ext: '.js'

    # Task to run tests
    test:{}

  # Declare tasks
  grunt.registerTask 'default', ["coffee"]
  grunt.registerTask 'test', []
