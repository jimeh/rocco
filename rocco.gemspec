# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'rocco/version'

Gem::Specification.new do |s|
  s.name        = 'rocco'
  s.version     = Rocco::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Ryan Tomayko', 'Mike West']
  s.email       = ['r@tomayko.com', '<mike@mikewest.org>']
  s.homepage    = 'http://rtomayko.github.com/rocco/'
  s.summary     = 'Docco in Ruby'
  s.description = s.summary
  s.has_rdoc = false

  s.rubyforge_project = 'rocco'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']
  
  s.add_runtime_dependency 'rdiscount'
  s.add_runtime_dependency 'mustache'
end
