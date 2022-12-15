# frozen_string_literal: true

# Copyright 2022 Google LLC
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


module Google
  module Cloud
    module Batch
      module V1
        # Compute resource requirements
        # @!attribute [rw] cpu_milli
        #   @return [::Integer]
        #     The milliCPU count.
        # @!attribute [rw] memory_mib
        #   @return [::Integer]
        #     Memory in MiB.
        # @!attribute [rw] boot_disk_mib
        #   @return [::Integer]
        #     Extra boot disk size in MiB for each task.
        class ComputeResource
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Status event
        # @!attribute [rw] type
        #   @return [::String]
        #     Type of the event.
        # @!attribute [rw] description
        #   @return [::String]
        #     Description of the event.
        # @!attribute [rw] event_time
        #   @return [::Google::Protobuf::Timestamp]
        #     The time this event occurred.
        # @!attribute [rw] task_execution
        #   @return [::Google::Cloud::Batch::V1::TaskExecution]
        #     Task Execution
        class StatusEvent
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # This Task Execution field includes detail information for
        # task execution procedures, based on StatusEvent types.
        # @!attribute [rw] exit_code
        #   @return [::Integer]
        #     When task is completed as the status of FAILED or SUCCEEDED,
        #     exit code is for one task execution result, default is 0 as success.
        class TaskExecution
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Status of a task
        # @!attribute [rw] state
        #   @return [::Google::Cloud::Batch::V1::TaskStatus::State]
        #     Task state
        # @!attribute [rw] status_events
        #   @return [::Array<::Google::Cloud::Batch::V1::StatusEvent>]
        #     Detailed info about why the state is reached.
        class TaskStatus
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Task states.
          module State
            # unknown state
            STATE_UNSPECIFIED = 0

            # The Task is created and waiting for resources.
            PENDING = 1

            # The Task is assigned to at least one VM.
            ASSIGNED = 2

            # The Task is running.
            RUNNING = 3

            # The Task has failed.
            FAILED = 4

            # The Task has succeeded.
            SUCCEEDED = 5
          end
        end

        # Runnable describes instructions for executing a specific script or container
        # as part of a Task.
        # @!attribute [rw] container
        #   @return [::Google::Cloud::Batch::V1::Runnable::Container]
        #     Container runnable.
        # @!attribute [rw] script
        #   @return [::Google::Cloud::Batch::V1::Runnable::Script]
        #     Script runnable.
        # @!attribute [rw] barrier
        #   @return [::Google::Cloud::Batch::V1::Runnable::Barrier]
        #     Barrier runnable.
        # @!attribute [rw] ignore_exit_status
        #   @return [::Boolean]
        #     Normally, a non-zero exit status causes the Task to fail. This flag allows
        #     execution of other Runnables to continue instead.
        # @!attribute [rw] background
        #   @return [::Boolean]
        #     This flag allows a Runnable to continue running in the background while the
        #     Task executes subsequent Runnables. This is useful to provide services to
        #     other Runnables (or to provide debugging support tools like SSH servers).
        # @!attribute [rw] always_run
        #   @return [::Boolean]
        #     By default, after a Runnable fails, no further Runnable are executed. This
        #     flag indicates that this Runnable must be run even if the Task has already
        #     failed. This is useful for Runnables that copy output files off of the VM
        #     or for debugging.
        #
        #     The always_run flag does not override the Task's overall max_run_duration.
        #     If the max_run_duration has expired then no further Runnables will execute,
        #     not even always_run Runnables.
        # @!attribute [rw] environment
        #   @return [::Google::Cloud::Batch::V1::Environment]
        #     Environment variables for this Runnable (overrides variables set for the
        #     whole Task or TaskGroup).
        # @!attribute [rw] timeout
        #   @return [::Google::Protobuf::Duration]
        #     Timeout for this Runnable.
        class Runnable
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Container runnable.
          # @!attribute [rw] image_uri
          #   @return [::String]
          #     The URI to pull the container image from.
          # @!attribute [rw] commands
          #   @return [::Array<::String>]
          #     Overrides the `CMD` specified in the container. If there is an ENTRYPOINT
          #     (either in the container image or with the entrypoint field below) then
          #     commands are appended as arguments to the ENTRYPOINT.
          # @!attribute [rw] entrypoint
          #   @return [::String]
          #     Overrides the `ENTRYPOINT` specified in the container.
          # @!attribute [rw] volumes
          #   @return [::Array<::String>]
          #     Volumes to mount (bind mount) from the host machine files or directories
          #     into the container, formatted to match docker run's --volume option,
          #     e.g. /foo:/bar, or /foo:/bar:ro
          # @!attribute [rw] options
          #   @return [::String]
          #     Arbitrary additional options to include in the "docker run" command when
          #     running this container, e.g. "--network host".
          # @!attribute [rw] block_external_network
          #   @return [::Boolean]
          #     If set to true, external network access to and from container will be
          #     blocked. The container will use the default internal network
          #     'goog-internal'.
          # @!attribute [rw] username
          #   @return [::String]
          #     Optional username for logging in to a docker registry. If username
          #     matches `projects/*/secrets/*/versions/*` then Batch will read the
          #     username from the Secret Manager.
          # @!attribute [rw] password
          #   @return [::String]
          #     Optional password for logging in to a docker registry. If password
          #     matches `projects/*/secrets/*/versions/*` then Batch will read the
          #     password from the Secret Manager;
          class Container
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Script runnable.
          # @!attribute [rw] path
          #   @return [::String]
          #     Script file path on the host VM.
          # @!attribute [rw] text
          #   @return [::String]
          #     Shell script text.
          class Script
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Barrier runnable blocks until all tasks in a taskgroup reach it.
          # @!attribute [rw] name
          #   @return [::String]
          #     Barriers are identified by their index in runnable list.
          #     Names are not required, but if present should be an identifier.
          class Barrier
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Spec of a task
        # @!attribute [rw] runnables
        #   @return [::Array<::Google::Cloud::Batch::V1::Runnable>]
        #     The sequence of scripts or containers to run for this Task. Each Task using
        #     this TaskSpec executes its list of runnables in order. The Task succeeds if
        #     all of its runnables either exit with a zero status or any that exit with a
        #     non-zero status have the ignore_exit_status flag.
        #
        #     Background runnables are killed automatically (if they have not already
        #     exited) a short time after all foreground runnables have completed. Even
        #     though this is likely to result in a non-zero exit status for the
        #     background runnable, these automatic kills are not treated as Task
        #     failures.
        # @!attribute [rw] compute_resource
        #   @return [::Google::Cloud::Batch::V1::ComputeResource]
        #     ComputeResource requirements.
        # @!attribute [rw] max_run_duration
        #   @return [::Google::Protobuf::Duration]
        #     Maximum duration the task should run.
        #     The task will be killed and marked as FAILED if over this limit.
        # @!attribute [rw] max_retry_count
        #   @return [::Integer]
        #     Maximum number of retries on failures.
        #     The default, 0, which means never retry.
        #     The valid value range is [0, 10].
        # @!attribute [rw] lifecycle_policies
        #   @return [::Array<::Google::Cloud::Batch::V1::LifecyclePolicy>]
        #     Lifecycle management schema when any task in a task group is failed.
        #     The valid size of lifecycle policies are [0, 10].
        #     For each lifecycle policy, when the condition is met,
        #     the action in that policy will execute.
        #     If there are multiple policies that the task execution result matches,
        #     we use the action from the first matched policy. If task execution result
        #     does not meet with any of the defined lifecycle policy, we consider it as
        #     the default policy. Default policy means if the exit code is 0, exit task.
        #     If task ends with non-zero exit code, retry the task with max_retry_count.
        # @!attribute [rw] environments
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Deprecated: please use environment(non-plural) instead.
        # @!attribute [rw] volumes
        #   @return [::Array<::Google::Cloud::Batch::V1::Volume>]
        #     Volumes to mount before running Tasks using this TaskSpec.
        # @!attribute [rw] environment
        #   @return [::Google::Cloud::Batch::V1::Environment]
        #     Environment variables to set before running the Task.
        class TaskSpec
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class EnvironmentsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # LifecyclePolicy describes how to deal with task failures
        # based on different conditions.
        # @!attribute [rw] action
        #   @return [::Google::Cloud::Batch::V1::LifecyclePolicy::Action]
        #     Action to execute when ActionCondition is true.
        # @!attribute [rw] action_condition
        #   @return [::Google::Cloud::Batch::V1::LifecyclePolicy::ActionCondition]
        #     Conditions that decide why a task failure is dealt with a specific action.
        class LifecyclePolicy
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Conditions for actions to deal with task failures.
          # @!attribute [rw] exit_codes
          #   @return [::Array<::Integer>]
          #     Exit codes of a task execution.
          #     If there are more than 1 exit codes,
          #     when task executes with any of the exit code in the list,
          #     the condition is met and the action will be executed.
          class ActionCondition
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Action on task failures based on different conditions.
          module Action
            # Action unspecified.
            ACTION_UNSPECIFIED = 0

            # Action that tasks in the group will be scheduled to re-execute.
            RETRY_TASK = 1

            # Action that tasks in the group will be stopped immediately.
            FAIL_TASK = 2
          end
        end

        # A Cloud Batch task.
        # @!attribute [rw] name
        #   @return [::String]
        #     Task name.
        #     The name is generated from the parent TaskGroup name and 'id' field.
        #     For example:
        #     "projects/123456/locations/us-west1/jobs/job01/taskGroups/group01/tasks/task01".
        # @!attribute [rw] status
        #   @return [::Google::Cloud::Batch::V1::TaskStatus]
        #     Task Status.
        class Task
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # An Environment describes a collection of environment variables to set when
        # executing Tasks.
        # @!attribute [rw] variables
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     A map of environment variable names to values.
        class Environment
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class VariablesEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end
