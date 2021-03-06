# encoding: utf-8

require File.join(File.dirname(__FILE__), 'lib/ruote/sequel/version')
  # bundler wants absolute path


Gem::Specification.new do |s|

  s.name = 'ruote-sequel'
  s.version = Ruote::Sequel::VERSION
  s.platform = Gem::Platform::RUBY
  s.authors = [ 'John Mettraux' ]
  s.email = [ 'jmettraux@gmail.com' ]
  s.homepage = 'http://ruote.rubyforge.org'
  s.rubyforge_project = 'ruote'
  s.summary = 'Sequel storage for ruote (a workflow engine)'
  s.description = %q{
Sequel storage for ruote (a workflow engine)
}

  #s.files = `git ls-files`.split("\n")
  s.files = Dir[
    'Rakefile',
    'lib/**/*.rb', 'spec/**/*.rb', 'test/**/*.rb',
    '*.gemspec', '*.txt', '*.rdoc', '*.md'
  ]

  s.add_runtime_dependency 'sequel', '3.20.0'
  s.add_runtime_dependency 'ruote', ">= #{s.version}"

  s.add_development_dependency 'rake'
  s.add_development_dependency 'pg', '0.10.1'
  s.add_development_dependency 'mysql', '2.8.1'

  s.require_path = 'lib'
end

