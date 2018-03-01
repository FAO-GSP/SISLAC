source 'https://rubygems.org'

gem 'rails', '4.2.10'
# FIXME Sacar con rails 5
gem 'thor', '0.19.1'

## DB
gem 'pg'

## Authentication, authorization, security
gem 'devise'
gem 'cancancan'
gem 'rolify', '~> 3.4'
gem 'rack-cors'
gem 'jwt'

## UI
gem 'dynamic_form'
gem 'haml-rails'
gem 'awesome_nested_fields'
gem 'kaminari'
gem 'draper'
gem 'ransack'
gem 'rails-jquery-autocomplete'

## Models
gem 'paperclip', '~> 5.2'
gem 'acts-as-taggable-on'
gem 'attribute_normalizer'
gem 'inflections', '0.0.5', require: 'inflections/es'
gem 'active_model_serializers', '~> 0.8.0'
gem 'squeel',
  git: 'https://github.com/activerecord-hackery/squeel.git'

## GIS
gem 'activerecord-postgis-adapter'
gem 'rgeo'
gem 'rgeo-geojson', require: 'rgeo/geo_json'
# FIXME IGN
# FIXME Extract to gem
gem 'rubyzip'

## Controllers
gem 'responders'
gem 'has_scope'
# FIXME No funciona la inclusión automática, asique la copié a vendor
# FIXME Deprecate
gem 'browser_detect'
gem 'rails-api'

## Assets
gem 'tinymce-rails'
gem 'sass-rails'
gem 'coffee-rails'
gem 'uglifier'
# FIXME Deprecate
gem 'multiselectjs_rails',
  git: 'https://github.com/mauriciopasquier/multiselectjs_rails.git'
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'select2-rails'
gem 'bootstrap', '~> 4.0'

# Bower packages
# FIXME Migrate to webpacker
source 'https://rails-assets.org' do
  # FIXME Congelados hasta incluir Leaflet.GoogleMutant acá
  gem 'rails-assets-leaflet', '1.2.0'
  gem 'rails-assets-leaflet-plugins', '3.0.1'
  gem 'rails-assets-fontawesome'
end

# Data
gem 'kiba'
gem 'countries'

# Administración
gem 'activeadmin'

# I18n
gem 'tolk'
gem 'rails-i18n'
gem 'devise-i18n'
gem 'kaminari-i18n'
# FIXME No está publicada la versión compatible con ActiveAdmin 1.0.0
gem 'activeadmin-globalize',
  git: 'https://github.com/mauriciopasquier/activeadmin-globalize.git',
  branch: 'sisar'

## Server
# TODO Review compression config
gem 'dalli'

## Development but we might need them in production
gem 'minitest-rails'
gem 'awesome_print'
gem 'pry-rails'
gem 'hirb'

group :test, :development do
  gem 'factory_girl_rails'
  gem 'binding_of_caller'
end

group :development do
  gem 'spring'
  gem 'bullet'
  gem 'better_errors'
  gem 'capistrano-rails'
  gem 'capistrano-rbenv'
  gem 'capistrano-passenger'
  gem 'capistrano-config_provider',
    git: 'https://github.com/mauriciopasquier/capistrano-config_provider.git',
    require: false
  gem 'capistrano-rails-collection'
  gem 'brakeman', require: false
end

group :test do
  gem 'database_cleaner'
  gem 'minitest-rails-capybara'
  gem 'selenium-webdriver'
end
