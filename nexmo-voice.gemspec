# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nexmo/voice/version'

Gem::Specification.new do |spec|
  spec.name          = 'nexmo-voice'
  spec.version       = Nexmo::Voice::VERSION
  spec.authors       = ['fahchen']
  spec.email         = ['dev.fah@gmail.com']
  spec.summary       = %q{A Ruby wrapper for the Nexmo Voice API.}
  spec.description   = %q{A Ruby wrapper for the Nexmo Voice(only) API.}
  spec.homepage      = 'https://github.com/fahchen/nexmo-voice'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'rest-client', '~> 1.7.2'

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec', '~> 3.0.0'
  spec.add_development_dependency 'webmock', '~> 1.18.0'
end
