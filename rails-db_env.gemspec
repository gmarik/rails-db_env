#!/usr/bin/env gem build
# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "rails-db_env"
  s.version     = "0.0.2"
  s.platform    = Gem::Platform::RUBY
  s.authors     = %w[gmarik blibbey]
  s.email       = ['gmarik+no+spam@gmail.com']
  s.homepage    = 'http://github.com/gmarik/rails-db_env'
  s.summary     = %q{ allows to set database environment independently from RAILS_ENV }
  s.description = %q{ DB_ENV=staging ./script/server }

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.add_dependency 'rails', '> 2.3.0'
end
