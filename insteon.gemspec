excluded_files = ['.gitignore']

require 'insteon/version'

Gem::Specification.new do |spec|
  spec.name          = 'insteon'
  spec.summary       = 'A library to communicate with Insteon devices.'
  spec.description   = 'A library to use an Insteon controller to communicate with other Insteon devices.'

  spec.homepage      = 'http://github.com/robnasby/insteon'
  spec.license       = 'MIT'

  spec.version       = Insteon::VERSION
  spec.date          = '2014-10-07'

  spec.authors       = ['Rob Nasby']
  spec.email         = ['rob@nasbys.com']

  spec.files         = `git ls-files`.split($/) - excluded_files
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'serialport'

  spec.add_development_dependency 'rake'
end
