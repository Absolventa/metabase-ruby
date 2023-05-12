# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'metabase/version'

Gem::Specification.new do |spec|
  spec.name          = 'metabase'
  spec.version       = Metabase::VERSION
  spec.authors       = ['Hiroshi Shimoju']
  spec.email         = ['hiroshi.shimoju@gmail.com']

  spec.summary       = 'Ruby client library for Metabase API'
  spec.description   = 'Ruby client library for Metabase API'
  spec.homepage      = 'https://github.com/shimoju/metabase-ruby'
  spec.license       = 'MIT'

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 3.0'

  spec.add_runtime_dependency 'faraday', '>= 2.0.1'

  spec.add_development_dependency 'amazing_print', '>= 1.2.2'
  spec.add_development_dependency 'bump', '>= 0.10.0'
  spec.add_development_dependency 'bundler', '>= 2.4.13'
  spec.add_development_dependency 'pry', '>= 0.14'
  spec.add_development_dependency 'rake', '>= 13.0.3'
  spec.add_development_dependency 'rspec', '>= 3.10.0'
  spec.add_development_dependency 'rubocop', '>= 1.19.0'
  spec.add_development_dependency 'rubocop-rake', '>= 0.4.0'
  spec.add_development_dependency 'rubocop-rspec', '>= 2.0.0'
  spec.add_development_dependency 'simplecov', '>= 0.21.2'
  spec.add_development_dependency 'vcr', '>= 6.0.0'
  spec.add_development_dependency 'webmock', '>= 3.12.2'
  spec.add_development_dependency 'yard', '>= 0.9.25'
  spec.metadata['rubygems_mfa_required'] = 'true'
end
