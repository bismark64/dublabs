source 'https://rubygems.org'

ruby "1.9.3"

gem 'rails', '3.2.9'
gem 'pg'
gem 'slim'
gem 'will_paginate', '~> 3.0.0'
gem 'will_paginate-bootstrap'

gem 'sass-rails',   '~> 3.2.3'
gem 'coffee-rails', '~> 3.2.1'
gem 'therubyracer', :platforms => :ruby
gem "less-rails"
gem "twitter-bootstrap-rails", :git => 'git://github.com/seyhunak/twitter-bootstrap-rails.git'
gem 'uglifier', '>= 1.0.3'
gem 'jquery-rails'
gem 'masonry-rails'

group :development do
  gem 'thin'
  gem 'sqlite3'
end

group :test do
  gem 'cucumber-rails', :require => false
  gem "rspec-rails"
  gem 'factory_girl_rails'
  gem 'database_cleaner'
  gem "selenium-webdriver"
end

group :production do
  gem 'unicorn' 
  gem 'unicorn-worker-killer'
end