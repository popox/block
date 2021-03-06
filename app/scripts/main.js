require.config({
    paths: {
        jquery: '../bower_components/jquery/jquery',
        requirejs: '../bower_components/requirejs/require',
        backbone: '../bower_components/backbone/backbone',
        marionette: '../bower_components/marionette/lib/backbone.marionette',
        underscore: '../bower_components/underscore/underscore',
        handlebars: '../bower_components/handlebars/handlebars',
        'handlebars.runtime': '../bower_components/handlebars/handlebars.runtime',
        'cryptojs.sha1': '../bower_components/crypto-js/build/rollups/sha1',
        mustache: '../bower_components/mustache/mustache'
    },
    shim: {
        underscore: {
            exports: '_'
        },
        backbone: {
            deps: [
                'underscore',
                'jquery'
            ],
            exports: 'Backbone'
        },
        marionette: {
            deps: [
                'underscore',
                'jquery',
                'backbone'
            ],
            exports: 'Marionette'
        }
    }
});

require(['app'], function(App) {
    'use strict';
    App.start({});
});
