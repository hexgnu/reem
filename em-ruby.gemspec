# -*- encoding: utf-8 -*-
require File.expand_path('../lib/em-ruby/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Matt Kirk"]
  gem.email         = ["matt@matthewkirk.com"]
  gem.description   = gem.summary = "Simple EM Clustering for Ruby"
  gem.homepage      = "http://github.com/hexgnu/em-ruby"
  gem.license       = "MIT"

  gem.files         = `git ls-files | grep -Ev '^(myapp|examples)'`.split("\n")
  gem.test_files    = `git ls-files -- test/*`.split("\n")
  gem.name          = "em-ruby"
  gem.require_paths = ["lib"]
  gem.version       = EMClusterer::VERSION
  gem.add_development_dependency      'minitest'
end