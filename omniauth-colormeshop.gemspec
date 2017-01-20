# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth-colormeshop/version'

Gem::Specification.new do |spec|
  spec.name          = 'omniauth-colormeshop'
  spec.version       = Omniauth::ColorMeShop::VERSION
  spec.authors       = ['Kentaro Kuribayashi']
  spec.email         = ['kentarok@gmail.com']
  spec.description   = %q{OmniAuth Strategy for ColorMeShop API}
  spec.summary       = %q{OmniAuth Strategy for ColorMeShop API}
  spec.homepage      = 'https://github.com/pepabo/omniauth-colormeshop'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'omniauth-oauth2'

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
end
