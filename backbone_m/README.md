Let us check the versions of the applications we want to use: (here `~$` represents the home dir)

    ~$ source .nvm/nvm.sh
    ~$ npm -v
    1.3.6
    ~$ nvm use 0.11
    ~$ node -v
    v0.11.5
    ~$ yo -v
    1.0.0-rc.1.4

If you do not have

At first, let us create a folder!

    mkdir yo_backbone
    cd yo_backbone

Dont forget to install generators we want to use.

    npm install -g generator-backbone

Ok, let us generate to project sceleton!
I would like to work with backbone, but you can find a lot of generators like angular or jasmine.

    yo backbone:all

In this way, yeoman generate all the belongings of backbone from view to routes, but we could specify it as `yo backbone:model` if we want to generate everything with the model. Without these options *yo* generates just the structure of the app.

> I press `y` on every questions.

Ok, it is generating a lot of boiler-plate code.

> yeoman automatically call `bower install` to install dependencies.

Let us run `grunt test` to check whether the tests are good or not!

    grunt test

> If it raised a warning or an error about `grunt-mocha` is not found, install it!
> `npm install grunt-contrib-mocha`
> Do not use `-g` option, because the package has to place in the local folder.

Ok, it raises me a warning that it needs Ruby and Compass gem.
My Ruby version is: `ruby 1.9.3p0 (2011-10-30 revision 33570)`

    sudo gem install compass

Ok, I installed the gem, let us run the test again!

    grunt test

Ok, I got the answer, `1 test complete (510 ms)` and `Done, without errors.`

Ok, let us run the server and check the result:

    grunt server

It opens the browser and direct us to *localhost:9000* where we get a greeting site! :D

Ok, let us see what we can modify or develop here! :D

Let us install handlebars:

    bower install --save handlerbars

And let us install backbone.localStorage:

    bower install --save backbone.localStorage

> To check what are the existing packages, check http://sindresorhus.com/bower-components

Just to check the builder:

    grunt

>If you got warnings, use the `--force` option.
    grunt --force

Before we go forward, let us see the dependencies. This command list the dependencies:

    bower list --map

And with `--path` option we get the path that we can use with require.js.

    bower list --path

Now, let us extend the `app/main.js` with backbone.localStorage. After this, my file looks like this:

``` javascript
/*global require*/
'use strict';

require.config({
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
        bootstrap: {
            deps: ['jquery'],
            exports: 'jquery'
        }
    },
    paths: {
        jquery: '../bower_components/jquery/jquery',
        backbone: '../bower_components/backbone/backbone',
        underscore: '../bower_components/underscore/underscore',
        bootstrap: 'vendor/bootstrap',
        backboneLocalStorage: "../bower_components/backbone.localStorage/backbone.localStorage"
    }
});

require([
    'jquery',
    'underscore',
    'backbone',
    'backboneLocalStorage'
], function ($, _, Backbone, backboneLocalStorage) {
    Backbone.history.start();
});
```

Let us run:

    grunt server



