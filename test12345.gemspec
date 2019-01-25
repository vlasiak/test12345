
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "test12345/version"

Gem::Specification.new do |spec|
  spec.name          = "test12345"
  spec.version       = Test12345::VERSION
  spec.authors       = ["Vasyl Lasiak"]
  spec.email         = ["vasyl.lasiak@thelevelup.com"]
  spec.summary       = 'Test 12345'
  spec.homepage      = 'https://github.com/vlasiak/test12345'
  spec.metadata = {
    'allowed_push_host' => 'https://gem.fury.io/vlasiak'
  }

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end

  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
