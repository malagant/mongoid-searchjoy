# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mongoid/searchjoy/version'

Gem::Specification.new do |spec|
  spec.name          = 'mongoid-searchjoy'
  spec.version       = Mongoid::Searchjoy::VERSION
  spec.authors       = ['Michael Johann', 'Andrew Kane']
  spec.email         = ['mjohann@rails-experts.com']
  spec.description   = %q{Search analytics made easy}
  spec.summary       = %q{Search analytics made easy}
  spec.homepage      = 'https://github.com/malagant/mongoid-searchjoy'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'chartkick'
  spec.add_dependency 'groupdate'

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'mongoid'
  spec.add_development_dependency 'rake'
end
