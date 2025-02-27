# -*- ruby -*-
# encoding: utf-8

require File.expand_path("lib/google/cloud/monitoring/version", __dir__)

Gem::Specification.new do |gem|
  gem.name          = "google-cloud-monitoring"
  gem.version       = Google::Cloud::Monitoring::VERSION

  gem.authors       = ["Google LLC"]
  gem.email         = "googleapis-packages@google.com"
  gem.description   = "Cloud Monitoring collects metrics, events, and metadata from Google Cloud, Amazon Web Services (AWS), hosted uptime probes, and application instrumentation."
  gem.summary       = "API Client library for the Cloud Monitoring API"
  gem.homepage      = "https://github.com/googleapis/google-cloud-ruby"
  gem.license       = "Apache-2.0"

  gem.platform      = Gem::Platform::RUBY

  gem.files         = `git ls-files -- lib/*`.split("\n") +
                      ["README.md", "AUTHENTICATION.md", "LICENSE.md", ".yardopts", "MIGRATING.md"]
  gem.require_paths = ["lib"]

  gem.required_ruby_version = ">= 2.6"

  gem.add_dependency "google-cloud-core", "~> 1.6"
  gem.add_dependency "google-cloud-monitoring-v3", ">= 0.15", "< 2.a"
  gem.add_dependency "google-cloud-monitoring-dashboard-v1", ">= 0.14", "< 2.a"
  gem.add_dependency "google-cloud-monitoring-metrics_scope-v1", ">= 0.5", "< 2.a"

  gem.add_development_dependency "google-style", "~> 1.26.1"
  gem.add_development_dependency "minitest", "~> 5.16"
  gem.add_development_dependency "minitest-focus", "~> 1.1"
  gem.add_development_dependency "minitest-rg", "~> 5.2"
  gem.add_development_dependency "rake", ">= 13.0"
  gem.add_development_dependency "redcarpet", "~> 3.0"
  gem.add_development_dependency "simplecov", "~> 0.9"
  gem.add_development_dependency "yard", "~> 0.9"
end
