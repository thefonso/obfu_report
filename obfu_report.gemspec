# -*- encoding: utf-8 -*-
require File.expand_path('../lib/obfu_report/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Alfonso Rush"]
  gem.email         = ["thefonso@thefonso.com"]
  gem.description   = %q{gem receives a string and an array then obfuscates the string based on the array values and counts the frequency of array words in string}
  gem.summary       = %q{Obfuscation and word count gem}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "obfu_report"
  gem.require_paths = ["lib"]
  gem.version       = ObfuReport::VERSION
end
