# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'japanese_associated_keywords/version'

Gem::Specification.new do |spec|
  spec.name          = "japanese_associated_keywords"
  spec.version       = JapaneseAssociatedKeywords::VERSION
  spec.authors       = ["No6Kitsunegasaki\n\n"]
  spec.email         = ["none.gingerale@gmail.com\n\n"]

  if spec.respond_to?(:metadata)
    #spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com' to prevent pushes to rubygems.org, or delete to allow pushes to any server."
  end

  spec.summary       = %q{library to get japanese associated keywords.}
  spec.description   = %q{library to get japanese associated keywords.}
  spec.homepage      = "https://github.com/No6Kitsunegasaki/japanese_associated_keywords"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "test-unit-rr", "~> 1.0"
  spec.add_development_dependency "test-unit", "~> 3.0"
  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
end
