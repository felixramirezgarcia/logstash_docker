Gem::Specification.new do |s|
  s.name          = 'logstash-output-odoo'
  s.version       = '0.0.2'
  s.licenses      = ['Apache-2.0']
  s.summary       = 'Simple output plugin to odoo Rest API'
  s.description   = 'not yet'
  s.homepage      = 'https://github.com/felixramirezgarcia/logstash-input-multirss'
  s.authors       = ['Felix R G']
  s.email         = 'felixramirezgarcia@correo.ugr.es'
  s.require_paths = ['lib']

  # Files
  s.files = Dir['lib/**/*','spec/**/*','vendor/**/*','*.gemspec','*.md','CONTRIBUTORS','Gemfile','LICENSE','NOTICE.TXT']
   # Tests
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Special flag to let us know this is actually a logstash plugin
  s.metadata = { "logstash_plugin" => "true", "logstash_group" => "output" }

  # Gem dependencies
  s.add_runtime_dependency "logstash-core-plugin-api", "~> 2.0"
  s.add_runtime_dependency "logstash-codec-plain"
  s.add_development_dependency "logstash-devutils"
end
