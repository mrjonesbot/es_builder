lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "chewie/version"

Gem::Specification.new do |spec|
  spec.name          = "chewie"
  spec.version       = Chewie::VERSION
  spec.authors       = ["mrjonesbot"]
  spec.email         = ["nate@mrjones.io"]

  spec.summary       = "A declarative interface for building Elasticsearch queries"
  spec.homepage      = "https://github.com/mrjonesbot/chewie"
  spec.license       = "MIT"

  spec.metadata["yard.run"] = "yri"

  # spec.metadata["homepage_uri"] = spec.homepage
  # spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "yard"

  spec.add_runtime_dependency(%q<activesupport>, [">= 5.1.6"])
  spec.add_runtime_dependency(%q<pry>)
end
