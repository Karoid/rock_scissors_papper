# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rock_scissor_papper/version'

Gem::Specification.new do |spec|
  spec.name          = "rock_scissor_papper"
  spec.version       = RockScissorPapper::VERSION
  spec.authors       = ["Karoid"]
  spec.email         = ["shj5508@naver.com"]

  spec.summary       = %q{this gem will add rock scissor papper game in rails app with user database}
  spec.description   = %q{this gem will add rock scissor papper game in rails app with user database}
  spec.homepage      = "https://github.com/Karoid/rock_scissor_papper"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://github.com/Karoid/rock_scissor_papper"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
end
