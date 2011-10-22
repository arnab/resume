# Arnab's Resume

This repo contains the content, styling and small pieces of code needed to generate [my resume](http://arnab-deka.com/posts/resume/) 

## Getting Started

* git clone this repo
* cd out and then back in - you may need to create a rvm gemset if you don't have one already
* bundle install
* rake haml:watch
* and keep editing the arnab-resume.haml file

## Pushing changes
* First get started, as above
* Once you are done with the changes, git push origin master
* git co gh-pages
* git co master arnab-resume.html
* git co master *.css
* cp arnab-resume.html index.html
* git add .
* git commit
* git push origin gh-pages

## About
[http://www.arnab-deka.com/posts/about/](http://www.arnab-deka.com/posts/about/)
