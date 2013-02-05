# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'spelly/version'

Gem::Specification.new do |gem|
  gem.name          = "spelly"
  gem.version       = Spelly::VERSION
  gem.authors       = ["Garrett Heinlen"]
  gem.email         = ["heinleng@gmail.com"]
  gem.description   = %q{Easy spell checker}
  gem.summary       = %q{Given an array it will return mispelt words and suggestions for correct spellings}
  gem.homepage      = "http://gggarrett.com"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  gem.add_dependency "hunspell-ffi"
  gem.add_development_dependency "rspec"
end
