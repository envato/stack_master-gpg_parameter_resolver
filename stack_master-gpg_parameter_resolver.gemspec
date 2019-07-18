lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "stack_master/gpg_parameter_resolver/version"

Gem::Specification.new do |spec|
  spec.name          = "stack_master-gpg_parameter_resolver"
  spec.version       = StackMaster::GpgParameterResolver::VERSION
  spec.authors       = ["Steve Hodgkiss", "Glen Stampoultzis"]
  spec.email         = ["steve@hodgkiss.me", "gstamp@gmail.com"]
  spec.licenses      = ['MIT']

  spec.summary       = %q{Allow parameters to be stored in encrypted secret files, protected with GPG keys.}
  spec.homepage      = "https://github.com/envato/stack_master-gpg_parameter_resolver"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "https://github.com/envato/stack_master-gpg_parameter_resolver/blob/v#{spec.version}/CHANGELOG.md"
  spec.metadata["bug_tracker_uri"] = "https://github.com/envato/stack_master-gpg_parameter_resolver/issues"

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").select { |f| f.match(%r{^(lib/|bin/|CHANGELOG|LICENSE|README)}) }
  end
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "stack_master"
  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.8"
end
