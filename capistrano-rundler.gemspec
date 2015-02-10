# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano/rundler/version'

Gem::Specification.new do |spec|
  spec.name          = "capistrano-rundler"
  spec.version       = Capistrano::Rundler::VERSION
  spec.authors       = ["Tyler Hartland"]
  spec.email         = ["tyler.hartland@code42.com"]

  spec.summary       = %q{Triggers the rundle command during deploy}
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_runtime_dependency 'rundler', '~> 0.1'
end
