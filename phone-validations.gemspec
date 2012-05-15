# -*- encoding: utf-8 -*-
require File.expand_path('../lib/phone-validations/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Christian Finck"]
  gem.email         = ["christian@finck.at"]
  gem.description   = %q{validates austrian phone numbers}
  gem.summary       = %q{validates austrian phone numbers}
  gem.homepage      = "https://github.com/finchi/phone-number-validations"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "phone-validations"
  gem.require_paths = ["lib"]
  gem.version       = Phone::Validations::VERSION

  gem.add_development_dependency "rspec"
end
