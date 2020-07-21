
Dine Well

Welcome to your new gem! This meal prep web application, Dine Well, initially created to keep track or store all of my 'workout' meals in one place. I had a fitness trainer who would send different meals to prep each week. That's a lot of meals in a lot of different places! I got tired of scrolling through pictures and emails to find the meal plans, so Dine Well was born. This application will allow users to create new meals, edit, and delete the ones you no longer want. Below, you will find a link demonstrating how to interact with Dine Well in the browser. 

https://screencast-o-matic.com/watch/cYi6Fx5dRY


Installation
Add this line to your application's Gemfile:

gem 'dinewell'
And then execute:

$ bundle install
Or install it yourself as:

$ gem install dinewell

Usage
Dine Well is easiest to use when the following gems are also installed: rubygems, sinatra, activerecord, shotgun.

gem install sinatra

Sinatra is a lightweight web framework mostly used for building smaller web applications. 

gem install activerecord 


This will allow you to obtain and use built-in methods, such as

has_secure_password -which avoids storing plain texted passwords in the database. It takes the string password and turns it into a salted and hashed version. 

attr_accessor (you don't have to type them in manually anymore)
.create
.save 


The shotgun gem will give you the ability to run the app from the terminal to view in the browser. 
To test that the application is running correctly, run shotgun in your terminal, clicking the HTTP address. You should be greeted with the Dine Well homepage. 


Development
After checking out the repo, run bin/setup to install dependencies. Then, run rake spec to run the tests. You can also run bin/console for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run bundle exec rake install. Then run bundle exec rake release, which will create a git tag for the version, push git commits and tags, and push the .gem file to rubygems.org.

Contributing
Bug reports and pull requests are welcome on GitHub at https://github.com/ShemaxCodes/DineWell.

License
The gem is available as open source under the terms of the MIT License.