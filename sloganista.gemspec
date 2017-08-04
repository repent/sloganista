# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
#require 'sloganista/version'

Gem::Specification.new do |spec|
  spec.name          = "sloganista"
  spec.version       = '0.1.1'
  spec.authors       = ["Dan Hetherington"]
  spec.email         = ["dan.hetherington@gmail.com"]
  spec.summary       = %q{Random slogan}
  #spec.description   = %q{}
  spec.homepage      = 'https://github.com/repent/sloganista'
  spec.license       = "GPL-3.0"

  spec.files         = `git ls-files -z`.split("\x0")
  #spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '>= 2.1.0'

  #spec.add_development_dependency "bundler"
  #spec.add_development_dependency "rake", ">= 10.0"
  #spec.add_development_dependency "rspec"
  #spec.add_development_dependency "coveralls"
  spec.add_development_dependency "pry"

  #spec.add_runtime_dependency ""
end
