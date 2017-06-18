source 'https://rubygems.org'

ruby "2.4.0"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.0.2'
gem 'puma', '~> 3.0'
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

## respose manager
gem 'responders'

## Assets
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 2.7.2'
gem 'jquery-rails'

## Google Cloud Vision
gem 'google-cloud-vision'
gem 'rmagick'


## development and test env
group :development, :test do
  gem 'byebug', platform: :mri
end

## something development env
group :development do
	gem 'sqlite3'
	gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

## production env 
group :production do
	gem 'pg'
	gem 'rails_12factor'
end

