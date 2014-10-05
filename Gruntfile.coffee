module.exports = (grunt)->
  # Can work with coffeescript
  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-simple-mocha'

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
    simplemocha:
      options:
        globals: ['expect']
        timeout: 3000
        ignoreLeaks: false
        ui: 'bdd'
        reporter: 'tap'
      all: src: ['tests/*.coffee']

  # Declare tasks
  grunt.registerTask 'default', ["coffee"]
  grunt.registerTask 'test', ["simplemocha"]
