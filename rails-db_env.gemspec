#!/usr/bin/env gem build
# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "rails-db_env"
  s.version     = "0.0.1"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["gmarik blibbey"]
  s.email       = ["gmarik+no+spam@gmail.com"]
  s.homepage    = "http://rubygems.org/gems/rails-db_env"
  s.summary     = %q{allows to set DB_ENV independently from RAILS_ENV}
  s.description = %q{
                      `DB_ENV=env_name ./script/server`
                     }

  # s.rubyforge_project = "rails-db_env"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
