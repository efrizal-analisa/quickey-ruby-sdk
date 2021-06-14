# frozen_string_literal: true

require_relative "lib/quickey_ruby_sdk/version"

Gem::Specification.new do |spec|
  spec.name          = "quickey_ruby_sdk"
  spec.version       = QuickeyRubySdk::VERSION
  spec.authors       = ["quickey team"]
  spec.email         = ["efrizal@analisa.io"]

  spec.summary               = 'SDK quickey for Ruby"'
  spec.description           = 'A Login Management System for Application'
  spec.homepage              = 'https://github.com/efrizal-analisa/quickey_ruby_sdk'
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.4.0")

  spec.metadata["homepage_uri"] = spec.homepage
  # spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  # spec.files = Dir.chdir(File.expand_path(__dir__)) do
  #   `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  # end
  s.files = `git ls-files`.split("\n")
  # spec.bindir        = "exe"
  s.executables   = `git ls-files -- bin/*`.split("\n").map { |f| ::File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  spec.add_dependency 'httparty', '~> 0.18.1'
  spec.add_dependency 'json', '~> 2.5', '>= 2.5.1'
  spec.add_development_dependency "rspec", "~> 3.2"

end
