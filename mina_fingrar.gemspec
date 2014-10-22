# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mina_fingrar/version'

Gem::Specification.new do |spec|
  spec.name          = "mina_fingrar"
  spec.version       = Minafingrar::VERSION
  spec.authors       = ["Simon Gate"]
  spec.email         = ["simon@smgt.me"]
  spec.summary       = %q{MinaFingrar ported to Ruby}
  spec.description   = %q{MinaFingrar.js ported to Ruby}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "execjs", "~> 2.2"
  spec.add_dependency "therubyracer"
  spec.add_dependency "launchy"
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "minitest"
end
