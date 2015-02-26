source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.8'
# Use sqlite3 as the database for Active Record Dev
# Use pg as the database for Active Record Production
# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'

gem 'yajl-ruby', require: 'yajl'

gem 'dotenv-rails'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby
group :development do
  gem 'sqlite3'
end

#For PDF generation

gem 'wicked_pdf'
gem 'wkhtmltopdf-binary'

gem 'figaro'

group :production do
  gem 'pg'
end
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem 'spring',        group: :development

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

gem 'rails_12factor', group: :production


gem 'spree_deliverymanager', github: 'jalsamn/spree_deliverymanager', branch: 'master'
#gem 'spree_lotus_warehouse_manager', :path => '../spree_lotus_warehouse_manager'
gem 'spree_lotus_warehouse_manager', github: 'jalsamn/spree_lotus_warehouse_manager', branch: 'master'

gem 'mail'
gem 'whenever', :require => false
gem 'sendgrid-ruby'
gem 'spree', '2.4.2'
gem 'spree_gateway', github: 'spree/spree_gateway', branch: '2-4-stable'
gem 'spree_auth_devise', github: 'spree/spree_auth_devise', branch: '2-4-stable'
gem 'spree_bootstrap_frontend', github: '200Creative/spree_bootstrap_frontend', branch: 'master'