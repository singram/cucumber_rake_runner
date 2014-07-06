# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cucumber_rake_runner/version'

Gem::Specification.new do |spec|
  spec.name          = "cucumber_rake_runner"
  spec.version       = CucumberRakeRunner::VERSION
  spec.authors       = ["Stuart Ingram"]
  spec.email         = ["ingrams2@upmc.com"]
  spec.description   = %q{Cucumber helper to run rake tasks in the current process, capturing properties to assert tests against }
  spec.summary       = %q{Cucumber helper to run rake tasks}
  spec.homepage      = "https://github.com/singram/cucumber_rake_runner"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "rake"
  spec.add_dependency "cucumber", "~> 1.3"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
