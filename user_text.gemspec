# frozen_string_literal: true

require_relative "lib/user_text/version"

Gem::Specification.new do |spec|
  spec.name = "user_text"
  spec.version = UserText::VERSION
  spec.authors = ["i2bskn"]
  spec.email = ["i2bskn@gmail.com"]

  spec.summary = "user_text"
  spec.description = "user_text"
  spec.homepage = "https://github.com/i2bskn/user_text"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.0.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "https://github.com/i2bskn/user_text/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor Gemfile])
    end
  end
  spec.test_files = spec.files.grep(%r{^(test|spec|features)/})
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  spec.add_dependency "activesupport"
  spec.add_dependency "rails-html-sanitizer"
  spec.add_development_dependency "pry"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
