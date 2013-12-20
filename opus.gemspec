# -*- encoding: utf-8 -*-
$:.unshift File.expand_path("../lib", __FILE__)

require 'opus/version'

Gem::Specification.new do |s|
  s.name        = "opus"
  s.version     = Opus::VERSION
  s.authors     = ["Ben Johnson"]
  s.email       = ["benbjohnson@yahoo.com"]
  s.homepage    = "http://github.com/benbjohnson/opus"
  s.summary     = "Command line utility for printing columnized code."
  s.executables = ['opus']

  s.add_dependency('prawn', '~> 0.13.0')
  s.add_dependency('commander', '~> 4.1.5')
  
  s.add_development_dependency('rake', '~> 10.0.3')
  s.add_development_dependency('minitest', '~> 5.2.0')
  s.add_development_dependency('mocha', '~> 0.14.0')

  s.test_files   = Dir.glob("test/**/*")
  s.files        = Dir.glob("lib/**/*") + %w(README.md)
  s.require_path = 'lib'
end
