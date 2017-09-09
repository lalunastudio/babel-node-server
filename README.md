# Node Server w. Babel
Example Node Server w. Babel, Eslint and Flow. Builds with Docker and CircleCI

## Features

 - [babel](http://babeljs.io) for ES6/ES7
 - compile to ES5 in `/dist`
 - [mocha](https://github.com/mochajs/mocha) testing 

## QuickStart

Create a new a folder then

```sh
mkdir new-project
cd new-project
curl -fsSL https://github.com/lalunastudio/babel-node-server/archive/1.0.0.tar.gz | tar -xz --strip-components=1 babel-node-server
yarn
yarn init
```

## Wokflow

- yarn run start
- Do a lot of awesome stuff with latest javascript

## Deploying

- Setup Dokku and server, change URLs in Circle CI files and push to github 
or
- yarn run build
- yarn run serve

## Author

Peter Nielsen <peter@laluna.io> http://github.com/lalunastudio

## License

 - **MIT** : http://opensource.org/licenses/MIT
