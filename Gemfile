source "https://rubygems.org"

git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.2"

gem "rails", "~> 7.0.7", ">= 7.0.7.2"
gem "pg"

gem "puma", "~> 5.0"

gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]

gem "devise"
gem "devise-jwt"
gem "rack-cors"
gem "ransack"

gem "bootsnap", require: false

group :development, :test do
  gem "debug", platforms: %i[mri mingw x64_mingw]

  gem "bullet"

  gem "active_model_serializers"

  gem "factory_bot_rails", "~> 6.2"

  gem "faker", "~> 3.2"

  gem "rspec-rails", "~> 6.0", ">= 6.0.3"

  gem "shoulda-matchers", "~> 5.3"

  gem "standard", "~> 1.31"
  gem "rails-controller-testing"
end

group :development do
end
