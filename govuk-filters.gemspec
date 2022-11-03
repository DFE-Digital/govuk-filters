# frozen_string_literal: true

require_relative "lib/govuk/filters/version"

Gem::Specification.new do |spec|
  spec.name = "govuk-filters"
  spec.version = Govuk::Filters::VERSION
  spec.authors = ["Rob Young", "Joseph Hull"]
  spec.email = ["robertmatthewyoung@gmail.com", "josephhull676@yahoo.co.uk"]

  spec.summary = "Filters component intended for use across GOVUK services."
  spec.description = "Filters component intended for use across GOVUK services."
  spec.homepage = "https://github.com/DFE-Digital/govuk-filters"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/DFE-Digital/govuk-filters"
  spec.metadata["changelog_uri"] = "https://github.com/DFE-Digital/govuk-filters/releases"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  spec.add_dependency "view_component", "~> 2.74.1"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
