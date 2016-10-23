# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "vuejs-rails/version"

Gem::Specification.new do |s|
  s.name        = "vuejs-rails"
  s.version     = Vue::Rails::VERSION
  s.authors     = ["Adam Butler"]
  s.email       = ["adam@lab.io"]
  s.homepage    = "https://github.com/adambutler/vuejs-rails"
  s.summary     = %q{vue.js asset pipeline provider/wrapper}
  s.description = "A simple asset-pipeline wrapper for vue.js by Evan You"
  s.license     = "MIT"

  s.rubyforge_project = "vuejs-rails"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

end
