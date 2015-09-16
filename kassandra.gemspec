# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kassandra/version'

Gem::Specification.new do |spec|
  spec.name          = "kassandra"
  spec.version       = Kassandra::VERSION
  spec.authors       = ["Zen Kyprianou"]
  spec.email         = ["zen@kyprianou.eu"]

  spec.summary       = %q{Simple Cassandra ORM targetting CQL3}
  spec.description   = %q{Kassandra aims to provide a friendly simple ORM to interface with Cassandra. Under the hood it uses the Datastax Ruby Driver for Apache Cassandra}
  spec.homepage      = "https://github.com/zenonas/kassandra"
  spec.license       = 'MIT'

  spec.required_ruby_version = '~> 2.0'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'cassandra-driver', '~> 2.1.4'

  spec.add_development_dependency 'rake-n-bake'
  spec.add_development_dependency 'coveralls'
  spec.add_development_dependency 'codeclimate-test-reporter'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'semver2'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'simplecov'
end
