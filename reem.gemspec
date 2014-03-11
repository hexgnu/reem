# -*- encoding: utf-8 -*-
require File.expand_path('../lib/reem/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Matt Kirk"]
  gem.email         = ["matt@matthewkirk.com"]
  gem.description   = gem.summary = "Simple EM Clustering for Ruby"
  gem.homepage      = "http://github.com/hexgnu/reem"
  gem.license       = "MIT"

  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- test/*`.split("\n")
  gem.name          = "reem"
  gem.require_paths = ["lib"]
  gem.version       = Reem::VERSION
  gem.add_dependency 'narray'
  gem.add_development_dependency      'minitest'
end
