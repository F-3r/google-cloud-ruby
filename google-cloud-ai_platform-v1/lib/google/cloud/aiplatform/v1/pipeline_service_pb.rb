# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/aiplatform/v1/pipeline_service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/aiplatform/v1/operation_pb'
require 'google/cloud/aiplatform/v1/pipeline_job_pb'
require 'google/cloud/aiplatform/v1/training_pipeline_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'


descriptor_data = "\n1google/cloud/aiplatform/v1/pipeline_service.proto\x12\x1agoogle.cloud.aiplatform.v1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a*google/cloud/aiplatform/v1/operation.proto\x1a-google/cloud/aiplatform/v1/pipeline_job.proto\x1a\x32google/cloud/aiplatform/v1/training_pipeline.proto\x1a#google/longrunning/operations.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a google/protobuf/field_mask.proto\"\xa8\x01\n\x1d\x43reateTrainingPipelineRequest\x12\x39\n\x06parent\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!locations.googleapis.com/Location\x12L\n\x11training_pipeline\x18\x02 \x01(\x0b\x32,.google.cloud.aiplatform.v1.TrainingPipelineB\x03\xe0\x41\x02\"^\n\x1aGetTrainingPipelineRequest\x12@\n\x04name\x18\x01 \x01(\tB2\xe0\x41\x02\xfa\x41,\n*aiplatform.googleapis.com/TrainingPipeline\"\xbf\x01\n\x1cListTrainingPipelinesRequest\x12\x39\n\x06parent\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!locations.googleapis.com/Location\x12\x0e\n\x06\x66ilter\x18\x02 \x01(\t\x12\x11\n\tpage_size\x18\x03 \x01(\x05\x12\x12\n\npage_token\x18\x04 \x01(\t\x12-\n\tread_mask\x18\x05 \x01(\x0b\x32\x1a.google.protobuf.FieldMask\"\x82\x01\n\x1dListTrainingPipelinesResponse\x12H\n\x12training_pipelines\x18\x01 \x03(\x0b\x32,.google.cloud.aiplatform.v1.TrainingPipeline\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"a\n\x1d\x44\x65leteTrainingPipelineRequest\x12@\n\x04name\x18\x01 \x01(\tB2\xe0\x41\x02\xfa\x41,\n*aiplatform.googleapis.com/TrainingPipeline\"a\n\x1d\x43\x61ncelTrainingPipelineRequest\x12@\n\x04name\x18\x01 \x01(\tB2\xe0\x41\x02\xfa\x41,\n*aiplatform.googleapis.com/TrainingPipeline\"\xb2\x01\n\x18\x43reatePipelineJobRequest\x12\x39\n\x06parent\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!locations.googleapis.com/Location\x12\x42\n\x0cpipeline_job\x18\x02 \x01(\x0b\x32\'.google.cloud.aiplatform.v1.PipelineJobB\x03\xe0\x41\x02\x12\x17\n\x0fpipeline_job_id\x18\x03 \x01(\t\"T\n\x15GetPipelineJobRequest\x12;\n\x04name\x18\x01 \x01(\tB-\xe0\x41\x02\xfa\x41\'\n%aiplatform.googleapis.com/PipelineJob\"\xcc\x01\n\x17ListPipelineJobsRequest\x12\x39\n\x06parent\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!locations.googleapis.com/Location\x12\x0e\n\x06\x66ilter\x18\x02 \x01(\t\x12\x11\n\tpage_size\x18\x03 \x01(\x05\x12\x12\n\npage_token\x18\x04 \x01(\t\x12\x10\n\x08order_by\x18\x06 \x01(\t\x12-\n\tread_mask\x18\x07 \x01(\x0b\x32\x1a.google.protobuf.FieldMask\"s\n\x18ListPipelineJobsResponse\x12>\n\rpipeline_jobs\x18\x01 \x03(\x0b\x32\'.google.cloud.aiplatform.v1.PipelineJob\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"W\n\x18\x44\x65letePipelineJobRequest\x12;\n\x04name\x18\x01 \x01(\tB-\xe0\x41\x02\xfa\x41\'\n%aiplatform.googleapis.com/PipelineJob\"W\n\x18\x43\x61ncelPipelineJobRequest\x12;\n\x04name\x18\x01 \x01(\tB-\xe0\x41\x02\xfa\x41\'\n%aiplatform.googleapis.com/PipelineJob2\xfc\x10\n\x0fPipelineService\x12\xee\x01\n\x16\x43reateTrainingPipeline\x12\x39.google.cloud.aiplatform.v1.CreateTrainingPipelineRequest\x1a,.google.cloud.aiplatform.v1.TrainingPipeline\"k\x82\xd3\xe4\x93\x02J\"5/v1/{parent=projects/*/locations/*}/trainingPipelines:\x11training_pipeline\xda\x41\x18parent,training_pipeline\x12\xc1\x01\n\x13GetTrainingPipeline\x12\x36.google.cloud.aiplatform.v1.GetTrainingPipelineRequest\x1a,.google.cloud.aiplatform.v1.TrainingPipeline\"D\x82\xd3\xe4\x93\x02\x37\x12\x35/v1/{name=projects/*/locations/*/trainingPipelines/*}\xda\x41\x04name\x12\xd4\x01\n\x15ListTrainingPipelines\x12\x38.google.cloud.aiplatform.v1.ListTrainingPipelinesRequest\x1a\x39.google.cloud.aiplatform.v1.ListTrainingPipelinesResponse\"F\x82\xd3\xe4\x93\x02\x37\x12\x35/v1/{parent=projects/*/locations/*}/trainingPipelines\xda\x41\x06parent\x12\xeb\x01\n\x16\x44\x65leteTrainingPipeline\x12\x39.google.cloud.aiplatform.v1.DeleteTrainingPipelineRequest\x1a\x1d.google.longrunning.Operation\"w\x82\xd3\xe4\x93\x02\x37*5/v1/{name=projects/*/locations/*/trainingPipelines/*}\xda\x41\x04name\xca\x41\x30\n\x15google.protobuf.Empty\x12\x17\x44\x65leteOperationMetadata\x12\xbb\x01\n\x16\x43\x61ncelTrainingPipeline\x12\x39.google.cloud.aiplatform.v1.CancelTrainingPipelineRequest\x1a\x16.google.protobuf.Empty\"N\x82\xd3\xe4\x93\x02\x41\"</v1/{name=projects/*/locations/*/trainingPipelines/*}:cancel:\x01*\xda\x41\x04name\x12\xe0\x01\n\x11\x43reatePipelineJob\x12\x34.google.cloud.aiplatform.v1.CreatePipelineJobRequest\x1a\'.google.cloud.aiplatform.v1.PipelineJob\"l\x82\xd3\xe4\x93\x02@\"0/v1/{parent=projects/*/locations/*}/pipelineJobs:\x0cpipeline_job\xda\x41#parent,pipeline_job,pipeline_job_id\x12\xad\x01\n\x0eGetPipelineJob\x12\x31.google.cloud.aiplatform.v1.GetPipelineJobRequest\x1a\'.google.cloud.aiplatform.v1.PipelineJob\"?\x82\xd3\xe4\x93\x02\x32\x12\x30/v1/{name=projects/*/locations/*/pipelineJobs/*}\xda\x41\x04name\x12\xc0\x01\n\x10ListPipelineJobs\x12\x33.google.cloud.aiplatform.v1.ListPipelineJobsRequest\x1a\x34.google.cloud.aiplatform.v1.ListPipelineJobsResponse\"A\x82\xd3\xe4\x93\x02\x32\x12\x30/v1/{parent=projects/*/locations/*}/pipelineJobs\xda\x41\x06parent\x12\xdc\x01\n\x11\x44\x65letePipelineJob\x12\x34.google.cloud.aiplatform.v1.DeletePipelineJobRequest\x1a\x1d.google.longrunning.Operation\"r\x82\xd3\xe4\x93\x02\x32*0/v1/{name=projects/*/locations/*/pipelineJobs/*}\xda\x41\x04name\xca\x41\x30\n\x15google.protobuf.Empty\x12\x17\x44\x65leteOperationMetadata\x12\xac\x01\n\x11\x43\x61ncelPipelineJob\x12\x34.google.cloud.aiplatform.v1.CancelPipelineJobRequest\x1a\x16.google.protobuf.Empty\"I\x82\xd3\xe4\x93\x02<\"7/v1/{name=projects/*/locations/*/pipelineJobs/*}:cancel:\x01*\xda\x41\x04name\x1aM\xca\x41\x19\x61iplatform.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB\xd2\x01\n\x1e\x63om.google.cloud.aiplatform.v1B\x14PipelineServiceProtoP\x01Z>cloud.google.com/go/aiplatform/apiv1/aiplatformpb;aiplatformpb\xaa\x02\x1aGoogle.Cloud.AIPlatform.V1\xca\x02\x1aGoogle\\Cloud\\AIPlatform\\V1\xea\x02\x1dGoogle::Cloud::AIPlatform::V1b\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError => e
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
    ["google.cloud.aiplatform.v1.TrainingPipeline", "google/cloud/aiplatform/v1/training_pipeline.proto"],
    ["google.protobuf.FieldMask", "google/protobuf/field_mask.proto"],
    ["google.cloud.aiplatform.v1.PipelineJob", "google/cloud/aiplatform/v1/pipeline_job.proto"],
  ]
  imports.each do |type_name, expected_filename|
    import_file = pool.lookup(type_name).file_descriptor
    if import_file.name != expected_filename
      warn "- #{file.name} imports #{expected_filename}, but that import was loaded as #{import_file.name}"
    end
  end
  warn "Each proto file must use a consistent fully-qualified name."
  warn "This will become an error in the next major version."
end

module Google
  module Cloud
    module AIPlatform
      module V1
        CreateTrainingPipelineRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.CreateTrainingPipelineRequest").msgclass
        GetTrainingPipelineRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.GetTrainingPipelineRequest").msgclass
        ListTrainingPipelinesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ListTrainingPipelinesRequest").msgclass
        ListTrainingPipelinesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ListTrainingPipelinesResponse").msgclass
        DeleteTrainingPipelineRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.DeleteTrainingPipelineRequest").msgclass
        CancelTrainingPipelineRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.CancelTrainingPipelineRequest").msgclass
        CreatePipelineJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.CreatePipelineJobRequest").msgclass
        GetPipelineJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.GetPipelineJobRequest").msgclass
        ListPipelineJobsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ListPipelineJobsRequest").msgclass
        ListPipelineJobsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ListPipelineJobsResponse").msgclass
        DeletePipelineJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.DeletePipelineJobRequest").msgclass
        CancelPipelineJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.CancelPipelineJobRequest").msgclass
      end
    end
  end
end
