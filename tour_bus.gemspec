$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "tour_bus/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "tour_bus"
  s.version     = TourBus::VERSION
  s.authors     = ["Nick Quaranto"]
  s.email       = ["nick@quaran.to"]
  s.homepage    = "https://example.com/tour_bus"
  s.summary     = "Summary of TourBus."
  s.description = "Description of TourBus."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.6"

  s.add_development_dependency "sqlite3"
end
