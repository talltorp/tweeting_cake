
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tweeting_cake/version'

Gem::Specification.new do |spec|
  spec.name          = "tweeting_cake"
  spec.version       = TweetingCake::VERSION
  spec.authors       = ["Tobias Talltorp"]
  spec.email         = ["tobias@talltorp.se"]
  spec.summary       = "Make a cake tweet with a Makey Makey"
  spec.description   = "Make a cake tweet witha Makey Makey"
  spec.homepage      = "https://github.com/talltorp/tweeting_cake"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'twitter', "~> 5.14"
  spec.add_dependency 'dotenv', "~> 2.0"

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
