# -*- ruby -*-
# encoding: utf-8

require File.expand_path("lib/google/cloud/gke_multi_cloud/version", __dir__)

Gem::Specification.new do |gem|
  gem.name          = "google-cloud-gke_multi_cloud"
  gem.version       = Google::Cloud::GkeMultiCloud::VERSION

  gem.authors       = ["Google LLC"]
  gem.email         = "googleapis-packages@google.com"
  gem.description   = "Anthos Multi-Cloud provides a way to manage Kubernetes clusters that run on AWS and Azure infrastructure using the Anthos Multi-Cloud API. Combined with Connect, you can manage Kubernetes clusters on Google Cloud, AWS, and Azure from the Google Cloud Console."
  gem.summary       = "API Client library for the Anthos Multi-Cloud API"
  gem.homepage      = "https://github.com/googleapis/google-cloud-ruby"
  gem.license       = "Apache-2.0"

  gem.platform      = Gem::Platform::RUBY

  gem.files         = `git ls-files -- lib/*`.split("\n") +
                      ["README.md", "AUTHENTICATION.md", "LICENSE.md", ".yardopts"]
  gem.require_paths = ["lib"]

  gem.required_ruby_version = ">= 2.6"

  gem.add_dependency "google-cloud-core", "~> 1.6"
  gem.add_dependency "google-cloud-gke_multi_cloud-v1", ">= 0.8", "< 2.a"

  gem.add_development_dependency "google-style", "~> 1.26.1"
  gem.add_development_dependency "minitest", "~> 5.16"
  gem.add_development_dependency "minitest-focus", "~> 1.1"
  gem.add_development_dependency "minitest-rg", "~> 5.2"
  gem.add_development_dependency "rake", ">= 13.0"
  gem.add_development_dependency "redcarpet", "~> 3.0"
  gem.add_development_dependency "simplecov", "~> 0.9"
  gem.add_development_dependency "yard", "~> 0.9"
end
