// Generated on 2013-10-16 using generator-ember 0.3.1
'use strict';
var lrSnippet = require('grunt-contrib-livereload/lib/utils').livereloadSnippet;
var mountFolder = function (connect, dir) {
    return connect.static(require('path').resolve(dir));
};

// # Globbing
// for performance reasons we're only matching one level down:
// 'test/spec/{,*/}*.js'
// use this if you want to match all subfolders:
// 'test/spec/**/*.js'

module.exports = function (grunt) {
    // load all grunt tasks
    require('matchdep').filterDev('grunt-*').forEach(grunt.loadNpmTasks);

    // configurable paths
    var yeomanConfig = {
        app: 'app',
        dist: 'dist'
    };

    grunt.initConfig({
        yeoman: yeomanConfig,
        watch: {
            emberTemplates: {
                files: '<%= yeoman.app %>/templates/**/*.hbs',
                tasks: ['emberTemplates', 'livereload']
            },
            coffee: {
                files: ['<%= yeoman.app %>/scripts/{,*/}*.coffee'],
                tasks: ['coffee:dist']
            },
            coffeeTest: {
                files: ['test/spec/{,*/}*.coffee'],
                tasks: ['coffee:test']
            },
            less: {
                files: ['<%= yeoman.app %>/styles/{,*/}*.less'],
                tasks: ['less:server']
            },
            neuter: {
                files: ['.tmp/scripts/{,*/}*.js'],
                tasks: ['neuter', 'livereload']
            },
            livereload: {
                files: [
                    '<%= yeoman.app %>/*.html',
                    '{.tmp,<%= yeoman.app %>}/styles/{,*/}*.css',
                    '<%= yeoman.app %>/images/{,*/}*.{png,jpg,jpeg,gif,webp,svg}'
                ],
                tasks: ['livereload']
            }
        },
        connect: {
            options: {
                port: 9010,
                // change this to '0.0.0.0' to access the server from outside
                hostname: '0.0.0.0'
            },
            livereload: {
                options: {
                    middleware: function (connect) {
                        return [
                            lrSnippet,
                            mountFolder(connect, '.tmp'),
                            mountFolder(connect, 'app')
                        ];
                    }
                }
            },
            test: {
                options: {
                    middleware: function (connect) {
                        return [
                            mountFolder(connect, '.tmp'),
                            mountFolder(connect, 'test')
                        ];
                    }
                }
            },
            dist: {
                options: {
                    middleware: function (connect) {
                        return [
                            mountFolder(connect, 'dist')
                        ];
                    }
                }
            }
        },
        open: {
            server: {
                path: 'http://localhost:<%= connect.options.port %>'
            }
        },
        clean: {
            dist: {
                files: [{
                    dot: true,
                    src: [
                        '.tmp',
                        '<%= yeoman.dist %>/*',
                        '!<%= yeoman.dist %>/.git*'
                    ]
                }]
            },
            server: '.tmp'
        },
        jshint: {
            options: {
                jshintrc: '.jshintrc'
            },
            all: [
                'Gruntfile.js',
                '<%= yeoman.app %>/scripts/{,*/}*.js',
                '!<%= yeoman.app %>/scripts/vendor/*',
                'test/spec/{,*/}*.js'
            ]
        },
        mocha: {
            all: {
                options: {
                    run: true,
                    urls: ['http://localhost:<%= connect.options.port %>/index.html']
                }
            }
        },
        coffee: {
            dist: {
                files: [{
                    expand: true,
                    cwd: '<%= yeoman.app %>/scripts',
                    src: '{,*/}*.coffee',
                    dest: '.tmp/scripts',
                    ext: '.js'
                }]
            },
            test: {
                files: [{
                    expand: true,
                    cwd: 'test/spec',
                    src: '{,*/}*.coffee',
                    dest: '.tmp/spec',
                    ext: '.js'
                }]
            }
        },
        less: {
            options: {
            },
            dist: {
                files: {
                    '.tmp/styles/main.css': '<%= yeoman.app %>/styles/main.less'
                }
            },
            server: {
                files: {
                    '.tmp/styles/main.css': '<%= yeoman.app %>/styles/main.less'
                }
            }
        },
        // not used since Uglify task does concat,
        // but still available if needed
        /*concat: {
            dist: {}
        },*/
        // not enabled since usemin task does concat and uglify
        // check index.html to edit your build targets
        // enable this task if you prefer defining your build targets here
        /*uglify: {
            dist: {}
        },*/
        rev: {
            dist: {
                files: {
                    src: [
                        '<%= yeoman.dist %>/scripts/{,*/}*.js',
                        '<%= yeoman.dist %>/styles/{,*/}*.css',
                        //'<%= yeoman.dist %>/images/{,*/}*.{png,jpg,jpeg,gif,webp}',
                        '<%= yeoman.dist %>/styles/fonts/*'
                    ]
                }
            }
        },
        preprocess: {
            index: {
                options: {
                    context: {
                        PRODUCTION: true
                    }
                },
                files: {
                    '<%= yeoman.dist %>/index.html': '<%= yeoman.app %>/index.html'
                }
            }
        },
        useminPrepare: {
            html: '<%= yeoman.dist %>/index.html',
            options: {
                root: '<%= yeoman.app %>',
                dest: '<%= yeoman.dist %>'
            }
        },
        usemin: {
            html: ['<%= yeoman.dist %>/{,*/}*.html'],
            css: ['<%= yeoman.dist %>/styles/{,*/}*.css'],
            options: {
                dirs: ['<%= yeoman.dist %>']
            }
        },
        imagemin: {
            dist: {
                files: [{
                    expand: true,
                    cwd: '<%= yeoman.app %>/images',
                    src: '{,*/}*.{png,jpg,jpeg}',
                    dest: '<%= yeoman.dist %>/images'
                }]
            }
        },
        svgmin: {
            dist: {
                files: [{
                    expand: true,
                    cwd: '<%= yeoman.app %>/images',
                    src: '{,*/}*.svg',
                    dest: '<%= yeoman.dist %>/images'
                }]
            }
        },
        cssmin: {
            dist: {
                files: {
                    '<%= yeoman.dist %>/styles/main.css': [
                        '.tmp/styles/{,*/}*.css',
                        '<%= yeoman.app %>/styles/{,*/}*.css'
                    ]
                }
            }
        },
        htmlmin: {
            dist: {
                options: {
                    /*removeCommentsFromCDATA: true,
                    // https://github.com/yeoman/grunt-usemin/issues/44
                    //collapseWhitespace: true,
                    collapseBooleanAttributes: true,
                    removeAttributeQuotes: true,
                    removeRedundantAttributes: true,
                    useShortDoctype: true,
                    removeEmptyAttributes: true,
                    removeOptionalTags: true*/
                },
                files: [{
                    expand: true,
                    cwd: '<%= yeoman.app %>',
                    src: ['*.html', '!index.html'],
                    dest: '<%= yeoman.dist %>'
                }]
            }
        },
        // Put files not handled in other tasks here
        copy: {
            dist: {
                files: [{
                    expand: true,
                    dot: true,
                    cwd: '<%= yeoman.app %>',
                    dest: '<%= yeoman.dist %>',
                    src: [
                        '*.{ico,txt}',
                        '.htaccess',
                        'images/{,*/}*.{webp,gif}',
                        'styles/fonts/*'
                    ]
                }]
            }
        },
        concurrent: {
            server: [
                'emberTemplates',
                'coffee:dist',
                'less:server'
            ],
            test: [
                'coffee',
                'less'
            ],
            dist: [
                'emberTemplates',
                'coffee',
                'less:dist',
                'imagemin',
                'svgmin',
                'htmlmin'
            ]
        },
        emberTemplates: {
            options: {
                templateName: function (sourceFile) {
                    var templatePath = '.tmp/templates/';
                    return sourceFile.replace(templatePath, '');
                }
            },
            dist: {
                files: {
                    '.tmp/scripts/compiled-templates.js': '.tmp/templates/{,*/}*.hbs'
                }
            }
        },
        replace: {
            templateImagesBeforeBuild: {
                options: {
                    patterns: [{
                        match: /(\/images\/.+\.png)/g,
                        replacement: '//dn-gaiamagic.qbox.me$1'
                    }]
                },
                files: [{
                    expand: true,
                    cwd: '<%= yeoman.app %>/templates',
                    src: '**/*.hbs',
                    dest: '.tmp/templates'
                }]
            },
            assets: {
                options: {
                    patterns: [{
                        match: /href=\"(styles\/.+\.css)/g,
                        replacement: 'href=\"//dn-gaiamagic.qbox.me\/$1'
                    }, {
                        match: /<script\ src=\"(scripts\/.+\.js)/g,
                        replacement: '<script\ src=\"//dn-gaiamagic.qbox.me\/$1'
                    }]
                },
                files: [{
                    expand: true,
                    cwd: '<%= yeoman.dist %>',
                    dest: '<%= yeoman.dist %>',
                    src: '*.html'
                }]
            }
        },
        neuter: {
            app: {
                options: {
                    template: "{%= src %}",
                    filepathTransform: function (filepath) {
                        return '.tmp/' + filepath;
                    }
                },
                src: ['.tmp/scripts/app.js'],
                dest: '.tmp/scripts/combined-scripts.js'
            }
        }
    });

    grunt.registerTask('updateUseminPrepare', function () {
        // move vendors script from uglify to copy
        var copies = grunt.config.data.copy.dist.files;
        var uglifies = grunt.config.data.uglify.generated.files;
        for (var i = uglifies.length - 1; i > -1; i--) {
            if (uglifies[i].dest.indexOf('vendors') > -1) {
                var deleted = uglifies.splice(i, 1);
                copies.push(deleted);
            }
        }
    });

    grunt.renameTask('regarde', 'watch');

    grunt.registerTask('server', function (target) {
        if (target === 'dist') {
            return grunt.task.run(['build', 'open', 'connect:dist:keepalive']);
        }

        grunt.task.run([
            'clean:server',
            'concurrent:server',
            'neuter:app',
            'livereload-start',
            'connect:livereload',
            'open',
            'watch'
        ]);
    });

    grunt.registerTask('test', [
        'clean:server',
        'concurrent:test',
        'neuter:app',
        'connect:test',
        'mocha'
    ]);

    grunt.registerTask('build', [
        'clean:dist',
        'replace:templateImagesBeforeBuild',
        'preprocess',
        'useminPrepare',
        'updateUseminPrepare',
        'concurrent:dist',
        'neuter:app',
        'concat',
        'cssmin',
        'uglify',
        'copy',
        'rev',
        'usemin',
        'replace:assets'
    ]);

    grunt.registerTask('default', [
        'jshint',
        'test',
        'build'
    ]);
};
