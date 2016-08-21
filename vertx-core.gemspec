#-*- mode: ruby -*-

# use the version from the main project
require "#{File.dirname File.expand_path(__FILE__)}/../../lib/jars/version"

Gem::Specification.new do |s|
  s.name = File.basename( File.dirname( File.expand_path( __FILE__ ) ) )
  s.version = "3.3.2"
  s.author = [ 'Julien Viet' ]
  s.email = [ 'julien@julienviet.com' ]
  s.summary = "summary of #{s.name}"
  s.description = "Vert.x #{s.version}"

  # important to get the jars installed
  s.platform = 'java'

  s.files = Dir[ 'lib/**/*.rb' ]
  s.files += Dir[ 'lib/*.jar' ]
  s.files += Dir[ '*file' ]
  s.files += Dir[ '*.gemspec' ]

  s.requirements << "jar io.vertx, vertx-lang-ruby, 3.3.2, :exclusions=> [ org.jruby:jruby-complete ]'"

  s.add_runtime_dependency 'jar-dependencies', "~> #{Jars::VERSION}"
end

# vim: syntax=Ruby
