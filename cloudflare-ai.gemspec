# frozen_string_literal: true

require_relative "lib/cloudflare/ai/version"

Gem::Specification.new do |spec|
  spec.name = "cloudflare-ai"
  spec.version = Cloudflare::AI::VERSION
  spec.authors = ["Ajay Krishnan"]
  spec.email = ["rubygems@krishnan.ca"]

  spec.summary = "A client for the Cloudflare Workers AI API."
  spec.description = "This opinionated ruby client is intended to make it uncomfortably easy to use Cloudflare's models."
  spec.homepage = "https://rubygems.org/gems/cloudflare-ai"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.0.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/ajaynomics/cloudflare-ai"
  spec.metadata["changelog_uri"] = "https://github.com/ajaynomics/cloudflare-ai/blob/main/CHANGELOG.md"

  spec.files = Dir["LICENSE.txt", "README.md", "CHANGELOG.md", "lib/**/*"]
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "activemodel", "~> 8.0"
  spec.add_dependency "activesupport", "~> 8.0"
  spec.add_dependency "event_stream_parser", "~> 1.0"
  spec.add_dependency "faraday", "~> 2.0"
  spec.add_dependency "faraday-multipart", "~> 1.0"
  spec.add_dependency "zeitwerk", "~> 2.5"
end
