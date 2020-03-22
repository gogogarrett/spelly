# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'spelly/version'

Gem::Specification.new do |gem|
  gem.name          = 'spelly'
  gem.version       = Spelly::VERSION
  gem.authors       = ['Garrett Heinlen']
  gem.email         = ['heinleng@gmail.com']
  gem.description   = 'Easy spell checker'
  gem.summary       = 'Given an array it will return mispelt words and suggestions for correct spellings'
  gem.homepage      = 'http://gggarrett.com'

  gem.files         = `git ls-files`.split($INPUT_RECORD_SEPARATOR)
  gem.executables   = gem.files.grep(%r{^bin/}).map { |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']
  gem.add_dependency 'ffi-hunspell'
  gem.add_development_dependency 'rspec'
end
