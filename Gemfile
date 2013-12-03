source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'

# Use sqlite3 as the database for Active Record
group :development do
  gem 'mysql2'
end
group :production do
  gem 'pg'
  gem 'rails_12factor'
end


#User authentication
gem "devise", "~> 3.0.0.rc"
gem 'omniauth-twitter'


#File Attachments
gem "paperclip", :git => "git://github.com/thoughtbot/paperclip.git"

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

gem "less-rails"
gem "twitter-bootstrap-rails"

gem 'rubyzip'
gem 'progress_bar'

#gem 'sunspot_rails'
#group :development do
#    gem 'sunspot_solr'
#  end



# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby

# multiple file uploads with jquery
gem "jquery-fileupload-rails"

# Use jquery as the JavaScript library
gem 'jquery-rails'
gem 'fancybox-rails'

# Use will_paginate for adding pagination
gem 'will_paginate', '~> 3.0'


# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
#gem 'turbolinks'

gem 'jquery-turbolinks'
gem "cancan"


# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :development, :test do
  gem "rspec-rails", ">= 2.0.0"
  gem "cucumber-rails", ">= 0.3.2",:require => false
  gem "webrat", ">= 0.7.2"
end



# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
