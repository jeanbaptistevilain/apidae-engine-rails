$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "apidae/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "apidae"
  s.version     = Apidae::VERSION
  s.authors     = ["Jean-Baptiste Vilain"]
  s.email       = ["jbvilain@gmail.com"]
  s.homepage    = "http://dev.apidae-tourisme.com/"
  s.summary     = "A Ruby on Rails engine for projects that involve Apidae data"
  s.description = "To be completed"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 6.0"
  s.add_dependency "pg", "~> 1.1", "< 2.0"
  s.add_dependency "rubyzip", "~> 2.0"
  s.add_dependency 'jbuilder', "~> 2.5"
end
