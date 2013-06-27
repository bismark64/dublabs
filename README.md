dublabs
=======

Flickr Json API parser Rails app.

Simple Rails app that shows the most recent Flickr public feed. 
Can also fetch by tags.

Installation
------------

This app uses RVM, bundler, Ruby 1.9.3 and Rails 3.2.9

You need to have that installed in order to run the app.

When you're ready do:
          
    bundle install
          
    rake db:create
          
    rake db:migrate
          
    rake db:test:prepare

I've tested with Cucumber & Rspec so to run the tests:

    cucumber
          
    bundle exec rspec

Demo
----

visit: http://dublabs.herokuapp.com/