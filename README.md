LittleB Land Site
========================

Visit site [here](http://littleb.land)

## Installation
Install gem
```
bundle install
```
Run server on specific port [3000]
```
middleman --port 3000
```
That's it! try to visit `http://localhost:3000`


__NOTE:__ If you found `middleman` server hang locally so often, change `JS_RUNTIME` to `Node`
```
EXECJS_RUNTIME=Node bundle exec middleman
```
... don't forget to install `nodejs` first
```
brew install nodejs
```

##Preparation before deploy
First you have to clone project again as build folder
```
git clone git@github.com:boat-pathompon/boat-pathompon.github.io.git build
```
Then switch to `master` branch (inside _build_ folder)
```
cd build
git checkout master
```
Then back to _source_ folder and continue on deploy section ...

## Deploy
OK, let's middleman build static page for us (don't forget to do __Preparation before deploy__ first)
```
middleman build
```
then commit all changes
```
cd build
git add -A
git commit -m 'Some commit message'
```
... then make it live!!
``` 
git push origin master
```

## To implementation lists
Make deployment easier by creating some rake task for it
```
# Ideally
rake deploy:setup                                     # Preparing deployment process
rake deploy:publish MESSAGE='Some commit messages'    # Stage all changes commit and push
```
