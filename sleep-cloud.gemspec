# encoding: utf-8

Gem::Specification.new do |gem|
  gem.add_dependency 'httparty' 
  gem.add_development_dependency 'json'
  #gem.add_development_dependency 'rake'
  #gem.add_development_dependency 'rspec'
  #gem.add_development_dependency 'simplecov'
  #gem.add_development_dependency 'yard'
  gem.authors = ["Bethany Soule"]
  gem.license = 'MIT'
  gem.description = %q{A Ruby wrapper for the Sleep Cloud API (Sleep as Android).}
  gem.email = ['bsoule@beeminder.com']
  gem.executables = `git ls-files -- bin/*`.split("\n").map{|f| File.basename(f)}
  gem.files = %w(LICENSE.md README.md Rakefile)
  gem.files += Dir.glob("lib/**/*.rb")
  gem.files += Dir.glob("spec/**/*")
  gem.homepage = 'https://github.com/beeminder/sleep-cloud'
  gem.name = 'sleep-cloud'
  gem.require_paths = ['lib']
  gem.summary = %q{Sleep Cloud API wrapper}
  gem.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.version = "0.1"
end
