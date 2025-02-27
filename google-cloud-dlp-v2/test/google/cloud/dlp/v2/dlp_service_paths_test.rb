# frozen_string_literal: true

# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!

require "helper"

require "gapic/grpc/service_stub"

require "google/cloud/dlp/v2/dlp_service"

class ::Google::Cloud::Dlp::V2::DlpService::ClientPathsTest < Minitest::Test
  class DummyStub
    def endpoint
      "endpoint.example.com"
    end
  
    def universe_domain
      "example.com"
    end
  end

  def test_deidentify_template_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Dlp::V2::DlpService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.deidentify_template_path organization: "value0", deidentify_template: "value1"
      assert_equal "organizations/value0/deidentifyTemplates/value1", path

      path = client.deidentify_template_path project: "value0", deidentify_template: "value1"
      assert_equal "projects/value0/deidentifyTemplates/value1", path

      path = client.deidentify_template_path organization: "value0", location: "value1", deidentify_template: "value2"
      assert_equal "organizations/value0/locations/value1/deidentifyTemplates/value2", path

      path = client.deidentify_template_path project: "value0", location: "value1", deidentify_template: "value2"
      assert_equal "projects/value0/locations/value1/deidentifyTemplates/value2", path
    end
  end

  def test_discovery_config_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Dlp::V2::DlpService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.discovery_config_path project: "value0", location: "value1", discovery_config: "value2"
      assert_equal "projects/value0/locations/value1/discoveryConfigs/value2", path
    end
  end

  def test_dlp_job_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Dlp::V2::DlpService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.dlp_job_path project: "value0", dlp_job: "value1"
      assert_equal "projects/value0/dlpJobs/value1", path

      path = client.dlp_job_path project: "value0", location: "value1", dlp_job: "value2"
      assert_equal "projects/value0/locations/value1/dlpJobs/value2", path
    end
  end

  def test_inspect_template_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Dlp::V2::DlpService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.inspect_template_path organization: "value0", inspect_template: "value1"
      assert_equal "organizations/value0/inspectTemplates/value1", path

      path = client.inspect_template_path project: "value0", inspect_template: "value1"
      assert_equal "projects/value0/inspectTemplates/value1", path

      path = client.inspect_template_path organization: "value0", location: "value1", inspect_template: "value2"
      assert_equal "organizations/value0/locations/value1/inspectTemplates/value2", path

      path = client.inspect_template_path project: "value0", location: "value1", inspect_template: "value2"
      assert_equal "projects/value0/locations/value1/inspectTemplates/value2", path
    end
  end

  def test_job_trigger_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Dlp::V2::DlpService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.job_trigger_path project: "value0", job_trigger: "value1"
      assert_equal "projects/value0/jobTriggers/value1", path

      path = client.job_trigger_path project: "value0", location: "value1", job_trigger: "value2"
      assert_equal "projects/value0/locations/value1/jobTriggers/value2", path
    end
  end

  def test_location_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Dlp::V2::DlpService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.location_path project: "value0", location: "value1"
      assert_equal "projects/value0/locations/value1", path
    end
  end

  def test_organization_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Dlp::V2::DlpService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.organization_path organization: "value0"
      assert_equal "organizations/value0", path
    end
  end

  def test_organization_location_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Dlp::V2::DlpService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.organization_location_path organization: "value0", location: "value1"
      assert_equal "organizations/value0/locations/value1", path
    end
  end

  def test_project_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Dlp::V2::DlpService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.project_path project: "value0"
      assert_equal "projects/value0", path
    end
  end

  def test_stored_info_type_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Dlp::V2::DlpService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.stored_info_type_path organization: "value0", stored_info_type: "value1"
      assert_equal "organizations/value0/storedInfoTypes/value1", path

      path = client.stored_info_type_path project: "value0", stored_info_type: "value1"
      assert_equal "projects/value0/storedInfoTypes/value1", path

      path = client.stored_info_type_path organization: "value0", location: "value1", stored_info_type: "value2"
      assert_equal "organizations/value0/locations/value1/storedInfoTypes/value2", path

      path = client.stored_info_type_path project: "value0", location: "value1", stored_info_type: "value2"
      assert_equal "projects/value0/locations/value1/storedInfoTypes/value2", path
    end
  end
end
