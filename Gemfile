source "https://rubygems.org"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem "rails", "~> 5.1.4"

gem "puma", "~> 3.7"

gem "sass-rails", "~> 5.0"

gem "uglifier", ">= 1.3.0"

gem "coffee-rails", "~> 4.2"

gem "turbolinks", "~> 5"

gem "jbuilder", "~> 2.5"

gem "bcrypt", "~> 3.1"

gem "bootstrap-sass", "3.3.7"

gem "mysql2", ">= 0.3.18", "< 0.5"

gem "i18n", "~> 0.7.0"

gem "jquery-rails", "~> 4.3", ">= 4.3.1"

gem "jquery-ui-rails"

gem "font-awesome-rails"

gem "will_paginate"

gem "bootstrap-will_paginate"

gem "config"

gem "faker", :git => "https://github.com/stympy/faker.git", :branch => "master"

gem "carrierwave",             "1.1.0"

gem 'mini_magick',             '4.7.0'

gem "i18n-js"

gem "serviceworker-rails"

gem "webpush"

gem "closure-compiler", "~> 1.1", ">= 1.1.12"

group :development, :test do

  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  gem "capybara", "~> 2.13"
  gem "selenium-webdriver"
end

group :development do

  gem "web-console", ">= 3.3.0"
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
end

group :production do
  gem "pg", "0.20.0"
end

gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]