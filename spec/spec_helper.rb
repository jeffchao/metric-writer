require 'simplecov'
require 'coveralls'

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]
SimpleCov.start

require "rubygems"
require "bundler/setup"

require "minitest/autorun"
require "minitest/pride"

require "rack/test"
require "metric-writer"

class Minitest::Spec
  include Rack::Test::Methods
end
