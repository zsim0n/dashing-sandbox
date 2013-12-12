# Dashing sandbox

## Introduction

Sandbox project for *"The exceptionally handsome dashboard framework"* [Dashing](http://shopify.github.io/dashing/). 

The purpose of the project is making some handy widget and later trying to extend Dashing itself. 

This project includes an extended version of the [zsim0n/rails-dev-box](https://github.com/zsim0n/rails-dev-box) vagrant environment.

## Prerequisites

Check [the rails dev box](https://github.com/zsim0n/rails-dev-box) for system requirements

## How To Use
    host $ git clone https://github.com/zsim0n/dashing-sandbox.git
    host $ cd dashing-sandbox
    host $ vagrant up
    host $ vagrant ssh
    host $ dashing new dashing_sandbox
    host $ cd dashing_sandbox
    host $ bundle
    host $ dashing start
    
Point your browser at localhost:3030 and have fun!

## What's In The Box

See 
[Vagrantfile](http://github.com/zsim0n/dashing-sandbox/blob/master/Vagrantfile) 
and
[Puppetfile](https://github.com/zsim0n/dashing-sandbox/blob/master/puppet/Puppetfile) 
for details

## License

Released under the MIT License, Copyright (c) 2013–<i>ω</i> Zoltan Simon.
