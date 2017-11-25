---
layout: post
title:  Setting up React, Hot Reloader, and all that jazz
date:   2017-11-25 9:11:00 -0700
categories: [react, hot-reloader, babel, loaders, express, es2015]
---

npm init
  => fill out the items for your app

---

```
npm install --save react
  => This is the react framework
npm install --save react-dom
  => ???
  => The react-dom package provides DOM-specific methods that can be used at the top level of your app and as an escape hatch to get outside of the React model if you need to. Most of your components should not need to use this module.
npm install --save-dev babel-core
  =>
npm install --save-dev babel-cli
  =>
npm install --save-dev babel-loader
  =>
npm install --save-dev babel-preset-es2015
  =>
npm install --save-dev babel-preset-react
  =>
npm install --save-dev react-hot-loader
  =>
npm install --save-dev webpack
  => Pack up all of our stuff!
//npm install --save-dev webpack-dev-middleware
//npm install --save-dev webpack-hot-middleware
npm install --save webpack-dev-server
  =>
npm install css-loader --save-dev
  =>
npm install style-loader --save-dev
  =>
npm install sass-loader --save-dev
```

---

my `package.json` should look like this:

```
{
  "name": "weebly_online_commerce",
  "version": "0.0.1",
  "description": "Weebly Trial Project",
  "main": "index.js",
  "scripts": {
    "start": "webpack-dev-server --config webpack.config.js",
    "build": "webpack --config ./webpack.deployment.config.js --progress --colors"
  },
  "author": "Smith Suth",
  "license": "ISC",
  "dependencies": {
    "express": "^4.15.4",
    "react": "^15.6.1",
    "react-dom": "^15.6.1",
    "webpack-dev-server": "^2.7.1"
  },
  "devDependencies": {
    "babel-cli": "^6.26.0",
    "babel-core": "^6.26.0",
    "babel-loader": "^7.1.2",
    "babel-preset-es2015": "^6.24.1",
    "babel-preset-react": "^6.24.1",
    "react-hot-loader": "^1.3.1",
    "webpack": "^3.5.5",
    "webpack-dev-middleware": "^1.12.0",
    "webpack-hot-middleware": "^2.18.2"
  }
}
 ```

 ---

 add the following `script`:

 ```
  "scripts": {
    "start": "npm build && node dist/bundle.js",
    "dev-start": "node dist/bundle.js",
    "build": "webpack --config ./webpack.deployment.config.js --progress --colors"
  },
 ```

 ---

mkdir app
touch app/index.js
touch index.html
touch webpack.config.js
touch webpack.deployment.config.js

 ---

my `webpack.config.js` should look like this:


```
var path = require('path');
var webpack = require('webpack');

module.exports = {
  entry: [
    './app/index.js'
  ],
  output: {
    path: __dirname,
    filename: 'app.js',
    publicPath: '/app/assets/'
  },
  module: {
    loaders: [
      {
        test: /.jsx?$/,
        loader: 'babel-loader',
        include: path.join(__dirname, 'app'),
        exclude: /node_modules/,
        query: {
          presets: ['es2015', 'react']
        }
      },
      {
        test: /\.scss$/,
        loader: 'style-loader!css-loader!sass-loader'
      }
    ]
  },
};

```

---

my `webpack.deployment.config.js` should look like this:

```
const path = require('path');
const webpack = require('webpack');

module.exports = {
  devtool: 'source-map',

  entry: [
    './app/index.js'
  ],
  output: {
    path: path.join(__dirname, 'dist'),
    filename: 'app.js',
    publicPath: '/dist/'
  },
  plugins: [
    new webpack.optimize.UglifyJsPlugin({
      minimize: true,
      compress: {
        warnings: false
      }
    })
  ],
  module: {
    loaders: [{
      test: /.jsx?$/,
      loader: 'babel-loader',
      include: path.join(__dirname, 'app'),
      exclude: /node_modules/,
      query: {
        presets: ['es2015', 'react']
      }
    }]
  },
};
```

---

my `app/index.js` should looke like this:

```
import React from 'react';
import ReactDOM from 'react-dom';

import Component from './Component.jsx';

ReactDOM.render(<Component/>, document.getElementById('root'));

```

---

my `app/Component.jsx` should looke like this:

```
import React, { Component } from 'react';

export default class MyComponent extends Component {
  constructor(props) {
    super(props);
    this.state = {}
  }

  render() {
    return (
      <div>
        Hello, Harry!
      </div>
    )
  }
};
```

---

my `index.html` should look like this:

```
<!DOCTYPE html>
<html>
  <head>
    <title>Weebly Trail Project</title>
    <meta charset="utf-8">
    <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
    <meta content="width=device-width, initial-scale=1" name="viewport" />
    <!-- <link rel="stylesheet" href="dist/bundle.css"> -->
  </head>
  <body>
    <div id='root'></div>
    <script src="http://localhost:8080/app/assets/app.js"></script>
  </body>
</html>
```
