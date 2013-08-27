# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'metric-writer/version'

Gem::Specification.new do |s|
  s.name = 'metric-writer'
  s.version = MetricWriter::VERSION
  s.license = 'MIT'

  s.authors = ["Jeff Chao"]
  s.description = 'A writer for simultaneously writing StatsD metrics across a variety of services'
  s.email = "jeffchao@me.com"

  s.files = Dir.glob("{bin,lib}/**/*") + %w(Rakefile README.md)
  s.homepage = 'http://github.com/jeffchao/metric-writer'
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.summary = %q{A writer for simultaneously writing StatsD metrics across a variety of services}
  s.test_files = Dir.glob("spec/**/*")

  s.required_ruby_version = '>= 1.9.3'

  s.add_development_dependency 'rake'
  s.add_development_dependency 'activesupport', '>= 3.0.0'
  s.add_development_dependency 'minitest'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'rack-test'
end

