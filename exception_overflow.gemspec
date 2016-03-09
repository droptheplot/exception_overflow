$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'exception_overflow/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'exception_overflow'
  s.version     = ExceptionOverflow::VERSION
  s.authors     = ['Sergey Novikov']
  s.email       = ['novikov359@gmail.com']
  s.homepage    = 'https://github.com/droptheplot/exception_overflow'
  s.summary     = 'Find exceptions on StackOverflow'
  s.license     = 'MIT'

  s.files = Dir["{lib}/**/*", 'MIT-LICENSE', 'Rakefile', 'README.md']

  s.add_dependency 'httparty'

  s.add_development_dependency 'rspec'
  s.add_development_dependency 'webmock'
end
