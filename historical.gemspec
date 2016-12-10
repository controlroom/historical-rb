# encoding: utf-8
$:.push File.expand_path("../lib", __FILE__)
require "historical/version"

Gem::Specification.new do |gem|
  gem.name        = "historical"
  gem.version     = Historical::VERSION
  gem.platform    = Gem::Platform::RUBY

  gem.authors     = ["Kevin Webster"]
  gem.description = "Advanced data history collection"
  gem.summary     = gem.description
  gem.license     = "MIT"

  gem.files         = `git ls-files`.split($\).reject{|f| f =~ /(\.gemspec)/ }
  gem.require_paths = ["lib"]

  gem.add_dependency "activerecord", ">= 5.0"
  gem.add_dependency "rails-observers", "~> 0.1.2"

  gem.add_development_dependency "appraisal"
  gem.add_development_dependency "rails", ">= 4.0", "< 5.1"
  gem.add_development_dependency "rspec-rails", "~> 3.5"
end
