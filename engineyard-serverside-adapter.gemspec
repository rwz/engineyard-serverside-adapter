# -*- encoding: utf-8 -*-
require File.expand_path("../lib/engineyard-serverside-adapter/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = "engineyard-serverside-adapter"
  s.version     = EY::Serverside::Adapter::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = []
  s.email       = []
  s.homepage    = "http://github.com/engineyard/engineyard-serverside-adapter"
  s.summary     = "Adapter for speaking to engineyard-serverside"
  s.description = "A separate adapter for speaking the CLI language of the engineyard-serverside gem."

  s.required_rubygems_version = ">= 1.3.6"
  s.rubyforge_project         = "engineyard-serverside-adapter"

  s.add_development_dependency "bundler", ">= 1.0.0"

  s.files        = `git ls-files`.split("\n")
  s.executables  = `git ls-files`.split("\n").map{|f| f =~ /^bin\/(.*)/ ? $1 : nil}.compact
  s.require_path = 'lib'
end
