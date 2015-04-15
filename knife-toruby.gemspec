# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "knife-toruby"
  spec.version       = IO.read("VERSION")
  spec.authors       = ["Bryan Baugher"]
  spec.email         = ["bryan.baugher@cerner.com"]
  spec.summary       = 'A Chef Knife plugin to convert Chef objects to ruby'
  spec.description   = 'A Chef Knife plugin to convert Chef objects to ruby '
  spec.homepage      = "https://github.com/bbaugher/knife-toruby"
  spec.license       = "MIT"

  spec.files         = Dir['lib/**/*.rb', 'Gemfile', 'Rakefile', 'README.md']
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "chef", ">= 11.0", "< 13.0"
  spec.add_dependency "awesome_print", "~> 1.2"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 0.9"

   %w(rspec-core rspec-expectations rspec-mocks).each { |gem| spec.add_development_dependency gem, "= 2.99.0" }
end
