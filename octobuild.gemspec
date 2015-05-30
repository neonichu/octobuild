# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'octobuild/version'

Gem::Specification.new do |spec|
  spec.name          = 'octobuild'
  spec.version       = Octobuild::VERSION
  spec.authors       = ['Boris Bügling']
  spec.email         = ['boris@buegling.com']
  spec.summary       = <<-SUMMARY
Execute your build and tests with a list of Xcode versions to 
ensure maximum compatibility.
SUMMARY
  spec.homepage      = 'https://github.com/neonichu/octobuild/'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'

  spec.add_dependency 'xcode-install', '~> 0.2.0'
end
