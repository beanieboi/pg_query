$:.push File.expand_path("../lib", __FILE__)
require 'pg_query/version'

Gem::Specification.new do |s|
  s.name        = 'pg_query'
  s.version     = PgQuery::VERSION
  
  s.summary     = 'PostgreSQL query parsing and normalization library'
  s.description = 'Parses SQL queries using a copy of the PostgreSQL server query parser'
  s.author      = 'Lukas Fittl'
  s.email       = 'lukas@fittl.com'
  s.license     = 'PostgreSQL'
  s.homepage    = 'http://github.com/pganalyze/pg_query'
  
  s.extensions = %w[ext/pg_query/extconf.rb]

  s.files = %w[
    LICENSE
    Rakefile
    ext/pg_query/extconf.rb
    ext/pg_query/pg_query.c
    ext/pg_query/pg_query.sym
    lib/pg_query.rb
    lib/pg_query/parse.rb
    lib/pg_query/parse_error.rb
    lib/pg_query/version.rb
  ]
  
  s.add_development_dependency "rake-compiler", '~> 0'
  s.add_development_dependency 'rspec', '~> 2.0'
  
  s.add_runtime_dependency "json", '~> 1.8'
end