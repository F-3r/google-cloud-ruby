# frozen_string_literal: true

# Copyright 2023 Google LLC
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

require "google/cloud/ai_platform/v1/llm_utility_service"

class ::Google::Cloud::AIPlatform::V1::LlmUtilityService::ClientPathsTest < Minitest::Test
  def test_endpoint_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::AIPlatform::V1::LlmUtilityService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.endpoint_path project: "value0", location: "value1", endpoint: "value2"
      assert_equal "projects/value0/locations/value1/endpoints/value2", path

      path = client.endpoint_path project: "value0", location: "value1", publisher: "value2", model: "value3"
      assert_equal "projects/value0/locations/value1/publishers/value2/models/value3", path
    end
  end
end
