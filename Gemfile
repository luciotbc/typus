source 'https://rubygems.org'

# Declare your gem's dependencies in typus.gemspec.
# Bundler will treat runtime dependencies like base dependencies, and
# development dependencies will be added by default to the :development group.
gemspec

group :assets do
  gem 'sass-rails' #,   '~> 4.0.0.beta1'
  gem 'coffee-rails' #, '~> 4.0.0.beta1'
  gem 'uglifier' #, '~> 1.3.0'
end

platforms :jruby do
  gem 'activerecord-jdbcmysql-adapter'
  gem 'activerecord-jdbcpostgresql-adapter'
  gem 'activerecord-jdbcsqlite3-adapter'
end

platforms :ruby do
  gem 'mysql2' #, '~> 0.3.11'
  gem 'pg' #, '~> 0.18.0'
  gem 'sqlite3' #, '~> 1.3.7'
end

# Typus can manage lists, trees, trashes, so we want to enable this stuff
# on the demo.
# gem 'acts_as_list', :git => 'git://github.com/typus/acts_as_list.git'
gem 'acts_as_list', github: 'typus/acts_as_list'

gem 'acts_as_tree'
gem 'rails-permalink' #, '~> 1.0.0'

# gem 'rails-trash', :git => 'git://github.com/fesplugas/rails-trash.git'
gem 'rails-trash', :github => 'trilogyinteractive/rails-trash'

# We want to be able to use Factory Girl for seeding data.
# gem 'factory_girl_rails', '~> 4.2.1'

# For some reason I also need to define the `jquery-rails` gem here.
gem 'jquery-rails'

# Rich Text Editor
# gem "ckeditor-rails", :git => "git://github.com/fesplugas/rails-ckeditor.git"
gem 'ckeditor-rails'

# Alternative authentication
gem 'devise' #, '~> 3.4.0' #:git => 'git://github.com/plataformatec/devise.git', :branch => 'rails4'

# Asset Management
gem 'dragonfly' #, '~> 0.9.14'
gem 'rack-cache' #, :require => 'rack/cache'
gem 'paperclip' #, '~> 3.4.1'

# MongoDB
# gem 'mongoid', :git => 'git://github.com/mongoid/mongoid.git'

# Pagination
gem 'kaminari'
