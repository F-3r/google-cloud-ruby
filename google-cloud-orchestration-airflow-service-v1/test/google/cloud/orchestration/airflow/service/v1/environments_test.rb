# frozen_string_literal: true

# Copyright 2021 Google LLC
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

require "google/cloud/orchestration/airflow/service/v1/environments_pb"
require "google/cloud/orchestration/airflow/service/v1/environments_services_pb"
require "google/cloud/orchestration/airflow/service/v1/environments"

class ::Google::Cloud::Orchestration::Airflow::Service::V1::Environments::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_rpc_count, :requests

    def initialize response, operation, &block
      @response = response
      @operation = operation
      @block = block
      @call_rpc_count = 0
      @requests = []
    end

    def call_rpc *args, **kwargs
      @call_rpc_count += 1

      @requests << @block&.call(*args, **kwargs)

      yield @response, @operation if block_given?

      @response
    end

    def endpoint
      "endpoint.example.com"
    end

    def universe_domain
      "example.com"
    end
  end

  def test_create_environment
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    environment = {}

    create_environment_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_environment, name
      assert_kind_of ::Google::Cloud::Orchestration::Airflow::Service::V1::CreateEnvironmentRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Orchestration::Airflow::Service::V1::Environment), request["environment"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_environment_client_stub do
      # Create client
      client = ::Google::Cloud::Orchestration::Airflow::Service::V1::Environments::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_environment({ parent: parent, environment: environment }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_environment parent: parent, environment: environment do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_environment ::Google::Cloud::Orchestration::Airflow::Service::V1::CreateEnvironmentRequest.new(parent: parent, environment: environment) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_environment({ parent: parent, environment: environment }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_environment(::Google::Cloud::Orchestration::Airflow::Service::V1::CreateEnvironmentRequest.new(parent: parent, environment: environment), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_environment_client_stub.call_rpc_count
    end
  end

  def test_get_environment
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Orchestration::Airflow::Service::V1::Environment.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_environment_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_environment, name
      assert_kind_of ::Google::Cloud::Orchestration::Airflow::Service::V1::GetEnvironmentRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_environment_client_stub do
      # Create client
      client = ::Google::Cloud::Orchestration::Airflow::Service::V1::Environments::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_environment({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_environment name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_environment ::Google::Cloud::Orchestration::Airflow::Service::V1::GetEnvironmentRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_environment({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_environment(::Google::Cloud::Orchestration::Airflow::Service::V1::GetEnvironmentRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_environment_client_stub.call_rpc_count
    end
  end

  def test_list_environments
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Orchestration::Airflow::Service::V1::ListEnvironmentsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"

    list_environments_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_environments, name
      assert_kind_of ::Google::Cloud::Orchestration::Airflow::Service::V1::ListEnvironmentsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_environments_client_stub do
      # Create client
      client = ::Google::Cloud::Orchestration::Airflow::Service::V1::Environments::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_environments({ parent: parent, page_size: page_size, page_token: page_token }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_environments parent: parent, page_size: page_size, page_token: page_token do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_environments ::Google::Cloud::Orchestration::Airflow::Service::V1::ListEnvironmentsRequest.new(parent: parent, page_size: page_size, page_token: page_token) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_environments({ parent: parent, page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_environments(::Google::Cloud::Orchestration::Airflow::Service::V1::ListEnvironmentsRequest.new(parent: parent, page_size: page_size, page_token: page_token), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_environments_client_stub.call_rpc_count
    end
  end

  def test_update_environment
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    environment = {}
    update_mask = {}

    update_environment_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_environment, name
      assert_kind_of ::Google::Cloud::Orchestration::Airflow::Service::V1::UpdateEnvironmentRequest, request
      assert_equal "hello world", request["name"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Orchestration::Airflow::Service::V1::Environment), request["environment"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["update_mask"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_environment_client_stub do
      # Create client
      client = ::Google::Cloud::Orchestration::Airflow::Service::V1::Environments::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_environment({ name: name, environment: environment, update_mask: update_mask }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_environment name: name, environment: environment, update_mask: update_mask do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_environment ::Google::Cloud::Orchestration::Airflow::Service::V1::UpdateEnvironmentRequest.new(name: name, environment: environment, update_mask: update_mask) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_environment({ name: name, environment: environment, update_mask: update_mask }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_environment(::Google::Cloud::Orchestration::Airflow::Service::V1::UpdateEnvironmentRequest.new(name: name, environment: environment, update_mask: update_mask), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_environment_client_stub.call_rpc_count
    end
  end

  def test_delete_environment
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_environment_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_environment, name
      assert_kind_of ::Google::Cloud::Orchestration::Airflow::Service::V1::DeleteEnvironmentRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_environment_client_stub do
      # Create client
      client = ::Google::Cloud::Orchestration::Airflow::Service::V1::Environments::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_environment({ name: name }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_environment name: name do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_environment ::Google::Cloud::Orchestration::Airflow::Service::V1::DeleteEnvironmentRequest.new(name: name) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_environment({ name: name }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_environment(::Google::Cloud::Orchestration::Airflow::Service::V1::DeleteEnvironmentRequest.new(name: name), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_environment_client_stub.call_rpc_count
    end
  end

  def test_execute_airflow_command
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Orchestration::Airflow::Service::V1::ExecuteAirflowCommandResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    environment = "hello world"
    command = "hello world"
    subcommand = "hello world"
    parameters = ["hello world"]

    execute_airflow_command_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :execute_airflow_command, name
      assert_kind_of ::Google::Cloud::Orchestration::Airflow::Service::V1::ExecuteAirflowCommandRequest, request
      assert_equal "hello world", request["environment"]
      assert_equal "hello world", request["command"]
      assert_equal "hello world", request["subcommand"]
      assert_equal ["hello world"], request["parameters"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, execute_airflow_command_client_stub do
      # Create client
      client = ::Google::Cloud::Orchestration::Airflow::Service::V1::Environments::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.execute_airflow_command({ environment: environment, command: command, subcommand: subcommand, parameters: parameters }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.execute_airflow_command environment: environment, command: command, subcommand: subcommand, parameters: parameters do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.execute_airflow_command ::Google::Cloud::Orchestration::Airflow::Service::V1::ExecuteAirflowCommandRequest.new(environment: environment, command: command, subcommand: subcommand, parameters: parameters) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.execute_airflow_command({ environment: environment, command: command, subcommand: subcommand, parameters: parameters }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.execute_airflow_command(::Google::Cloud::Orchestration::Airflow::Service::V1::ExecuteAirflowCommandRequest.new(environment: environment, command: command, subcommand: subcommand, parameters: parameters), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, execute_airflow_command_client_stub.call_rpc_count
    end
  end

  def test_stop_airflow_command
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Orchestration::Airflow::Service::V1::StopAirflowCommandResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    environment = "hello world"
    execution_id = "hello world"
    pod = "hello world"
    pod_namespace = "hello world"
    force = true

    stop_airflow_command_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :stop_airflow_command, name
      assert_kind_of ::Google::Cloud::Orchestration::Airflow::Service::V1::StopAirflowCommandRequest, request
      assert_equal "hello world", request["environment"]
      assert_equal "hello world", request["execution_id"]
      assert_equal "hello world", request["pod"]
      assert_equal "hello world", request["pod_namespace"]
      assert_equal true, request["force"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, stop_airflow_command_client_stub do
      # Create client
      client = ::Google::Cloud::Orchestration::Airflow::Service::V1::Environments::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.stop_airflow_command({ environment: environment, execution_id: execution_id, pod: pod, pod_namespace: pod_namespace, force: force }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.stop_airflow_command environment: environment, execution_id: execution_id, pod: pod, pod_namespace: pod_namespace, force: force do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.stop_airflow_command ::Google::Cloud::Orchestration::Airflow::Service::V1::StopAirflowCommandRequest.new(environment: environment, execution_id: execution_id, pod: pod, pod_namespace: pod_namespace, force: force) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.stop_airflow_command({ environment: environment, execution_id: execution_id, pod: pod, pod_namespace: pod_namespace, force: force }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.stop_airflow_command(::Google::Cloud::Orchestration::Airflow::Service::V1::StopAirflowCommandRequest.new(environment: environment, execution_id: execution_id, pod: pod, pod_namespace: pod_namespace, force: force), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, stop_airflow_command_client_stub.call_rpc_count
    end
  end

  def test_poll_airflow_command
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Orchestration::Airflow::Service::V1::PollAirflowCommandResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    environment = "hello world"
    execution_id = "hello world"
    pod = "hello world"
    pod_namespace = "hello world"
    next_line_number = 42

    poll_airflow_command_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :poll_airflow_command, name
      assert_kind_of ::Google::Cloud::Orchestration::Airflow::Service::V1::PollAirflowCommandRequest, request
      assert_equal "hello world", request["environment"]
      assert_equal "hello world", request["execution_id"]
      assert_equal "hello world", request["pod"]
      assert_equal "hello world", request["pod_namespace"]
      assert_equal 42, request["next_line_number"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, poll_airflow_command_client_stub do
      # Create client
      client = ::Google::Cloud::Orchestration::Airflow::Service::V1::Environments::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.poll_airflow_command({ environment: environment, execution_id: execution_id, pod: pod, pod_namespace: pod_namespace, next_line_number: next_line_number }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.poll_airflow_command environment: environment, execution_id: execution_id, pod: pod, pod_namespace: pod_namespace, next_line_number: next_line_number do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.poll_airflow_command ::Google::Cloud::Orchestration::Airflow::Service::V1::PollAirflowCommandRequest.new(environment: environment, execution_id: execution_id, pod: pod, pod_namespace: pod_namespace, next_line_number: next_line_number) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.poll_airflow_command({ environment: environment, execution_id: execution_id, pod: pod, pod_namespace: pod_namespace, next_line_number: next_line_number }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.poll_airflow_command(::Google::Cloud::Orchestration::Airflow::Service::V1::PollAirflowCommandRequest.new(environment: environment, execution_id: execution_id, pod: pod, pod_namespace: pod_namespace, next_line_number: next_line_number), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, poll_airflow_command_client_stub.call_rpc_count
    end
  end

  def test_save_snapshot
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    environment = "hello world"
    snapshot_location = "hello world"

    save_snapshot_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :save_snapshot, name
      assert_kind_of ::Google::Cloud::Orchestration::Airflow::Service::V1::SaveSnapshotRequest, request
      assert_equal "hello world", request["environment"]
      assert_equal "hello world", request["snapshot_location"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, save_snapshot_client_stub do
      # Create client
      client = ::Google::Cloud::Orchestration::Airflow::Service::V1::Environments::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.save_snapshot({ environment: environment, snapshot_location: snapshot_location }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.save_snapshot environment: environment, snapshot_location: snapshot_location do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.save_snapshot ::Google::Cloud::Orchestration::Airflow::Service::V1::SaveSnapshotRequest.new(environment: environment, snapshot_location: snapshot_location) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.save_snapshot({ environment: environment, snapshot_location: snapshot_location }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.save_snapshot(::Google::Cloud::Orchestration::Airflow::Service::V1::SaveSnapshotRequest.new(environment: environment, snapshot_location: snapshot_location), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, save_snapshot_client_stub.call_rpc_count
    end
  end

  def test_load_snapshot
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    environment = "hello world"
    snapshot_path = "hello world"
    skip_pypi_packages_installation = true
    skip_environment_variables_setting = true
    skip_airflow_overrides_setting = true
    skip_gcs_data_copying = true

    load_snapshot_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :load_snapshot, name
      assert_kind_of ::Google::Cloud::Orchestration::Airflow::Service::V1::LoadSnapshotRequest, request
      assert_equal "hello world", request["environment"]
      assert_equal "hello world", request["snapshot_path"]
      assert_equal true, request["skip_pypi_packages_installation"]
      assert_equal true, request["skip_environment_variables_setting"]
      assert_equal true, request["skip_airflow_overrides_setting"]
      assert_equal true, request["skip_gcs_data_copying"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, load_snapshot_client_stub do
      # Create client
      client = ::Google::Cloud::Orchestration::Airflow::Service::V1::Environments::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.load_snapshot({ environment: environment, snapshot_path: snapshot_path, skip_pypi_packages_installation: skip_pypi_packages_installation, skip_environment_variables_setting: skip_environment_variables_setting, skip_airflow_overrides_setting: skip_airflow_overrides_setting, skip_gcs_data_copying: skip_gcs_data_copying }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.load_snapshot environment: environment, snapshot_path: snapshot_path, skip_pypi_packages_installation: skip_pypi_packages_installation, skip_environment_variables_setting: skip_environment_variables_setting, skip_airflow_overrides_setting: skip_airflow_overrides_setting, skip_gcs_data_copying: skip_gcs_data_copying do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.load_snapshot ::Google::Cloud::Orchestration::Airflow::Service::V1::LoadSnapshotRequest.new(environment: environment, snapshot_path: snapshot_path, skip_pypi_packages_installation: skip_pypi_packages_installation, skip_environment_variables_setting: skip_environment_variables_setting, skip_airflow_overrides_setting: skip_airflow_overrides_setting, skip_gcs_data_copying: skip_gcs_data_copying) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.load_snapshot({ environment: environment, snapshot_path: snapshot_path, skip_pypi_packages_installation: skip_pypi_packages_installation, skip_environment_variables_setting: skip_environment_variables_setting, skip_airflow_overrides_setting: skip_airflow_overrides_setting, skip_gcs_data_copying: skip_gcs_data_copying }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.load_snapshot(::Google::Cloud::Orchestration::Airflow::Service::V1::LoadSnapshotRequest.new(environment: environment, snapshot_path: snapshot_path, skip_pypi_packages_installation: skip_pypi_packages_installation, skip_environment_variables_setting: skip_environment_variables_setting, skip_airflow_overrides_setting: skip_airflow_overrides_setting, skip_gcs_data_copying: skip_gcs_data_copying), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, load_snapshot_client_stub.call_rpc_count
    end
  end

  def test_database_failover
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    environment = "hello world"

    database_failover_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :database_failover, name
      assert_kind_of ::Google::Cloud::Orchestration::Airflow::Service::V1::DatabaseFailoverRequest, request
      assert_equal "hello world", request["environment"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, database_failover_client_stub do
      # Create client
      client = ::Google::Cloud::Orchestration::Airflow::Service::V1::Environments::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.database_failover({ environment: environment }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.database_failover environment: environment do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.database_failover ::Google::Cloud::Orchestration::Airflow::Service::V1::DatabaseFailoverRequest.new(environment: environment) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.database_failover({ environment: environment }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.database_failover(::Google::Cloud::Orchestration::Airflow::Service::V1::DatabaseFailoverRequest.new(environment: environment), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, database_failover_client_stub.call_rpc_count
    end
  end

  def test_fetch_database_properties
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Orchestration::Airflow::Service::V1::FetchDatabasePropertiesResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    environment = "hello world"

    fetch_database_properties_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :fetch_database_properties, name
      assert_kind_of ::Google::Cloud::Orchestration::Airflow::Service::V1::FetchDatabasePropertiesRequest, request
      assert_equal "hello world", request["environment"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, fetch_database_properties_client_stub do
      # Create client
      client = ::Google::Cloud::Orchestration::Airflow::Service::V1::Environments::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.fetch_database_properties({ environment: environment }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.fetch_database_properties environment: environment do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.fetch_database_properties ::Google::Cloud::Orchestration::Airflow::Service::V1::FetchDatabasePropertiesRequest.new(environment: environment) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.fetch_database_properties({ environment: environment }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.fetch_database_properties(::Google::Cloud::Orchestration::Airflow::Service::V1::FetchDatabasePropertiesRequest.new(environment: environment), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, fetch_database_properties_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil, nil
    Gapic::ServiceStub.stub :new, dummy_stub do
      client = ::Google::Cloud::Orchestration::Airflow::Service::V1::Environments::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Orchestration::Airflow::Service::V1::Environments::Client::Configuration, config
  end

  def test_operations_client
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = nil
    dummy_stub = ClientStub.new nil, nil
    Gapic::ServiceStub.stub :new, dummy_stub do
      client = ::Google::Cloud::Orchestration::Airflow::Service::V1::Environments::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    assert_kind_of ::Google::Cloud::Orchestration::Airflow::Service::V1::Environments::Operations, client.operations_client
  end
end
