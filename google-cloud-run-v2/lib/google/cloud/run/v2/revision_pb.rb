# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/run/v2/revision.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/launch_stage_pb'
require 'google/api/resource_pb'
require 'google/api/routing_pb'
require 'google/cloud/run/v2/condition_pb'
require 'google/cloud/run/v2/k8s.min_pb'
require 'google/cloud/run/v2/vendor_settings_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n\"google/cloud/run/v2/revision.proto\x12\x13google.cloud.run.v2\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x1dgoogle/api/launch_stage.proto\x1a\x19google/api/resource.proto\x1a\x18google/api/routing.proto\x1a#google/cloud/run/v2/condition.proto\x1a!google/cloud/run/v2/k8s.min.proto\x1a)google/cloud/run/v2/vendor_settings.proto\x1a#google/longrunning/operations.proto\x1a\x1egoogle/protobuf/duration.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"G\n\x12GetRevisionRequest\x12\x31\n\x04name\x18\x01 \x01(\tB#\xe0\x41\x02\xfa\x41\x1d\n\x1brun.googleapis.com/Revision\"\x88\x01\n\x14ListRevisionsRequest\x12\x33\n\x06parent\x18\x01 \x01(\tB#\xe0\x41\x02\xfa\x41\x1d\x12\x1brun.googleapis.com/Revision\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\x12\x14\n\x0cshow_deleted\x18\x04 \x01(\x08\"b\n\x15ListRevisionsResponse\x12\x30\n\trevisions\x18\x01 \x03(\x0b\x32\x1d.google.cloud.run.v2.Revision\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"o\n\x15\x44\x65leteRevisionRequest\x12\x31\n\x04name\x18\x01 \x01(\tB#\xe0\x41\x02\xfa\x41\x1d\n\x1brun.googleapis.com/Revision\x12\x15\n\rvalidate_only\x18\x02 \x01(\x08\x12\x0c\n\x04\x65tag\x18\x03 \x01(\t\"\xa4\x0c\n\x08Revision\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x10\n\x03uid\x18\x02 \x01(\tB\x03\xe0\x41\x03\x12\x17\n\ngeneration\x18\x03 \x01(\x03\x42\x03\xe0\x41\x03\x12>\n\x06labels\x18\x04 \x03(\x0b\x32).google.cloud.run.v2.Revision.LabelsEntryB\x03\xe0\x41\x03\x12H\n\x0b\x61nnotations\x18\x05 \x03(\x0b\x32..google.cloud.run.v2.Revision.AnnotationsEntryB\x03\xe0\x41\x03\x12\x34\n\x0b\x63reate_time\x18\x06 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x07 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0b\x64\x65lete_time\x18\x08 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0b\x65xpire_time\x18\t \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12-\n\x0claunch_stage\x18\n \x01(\x0e\x32\x17.google.api.LaunchStage\x12\x33\n\x07service\x18\x0b \x01(\tB\"\xe0\x41\x03\xfa\x41\x1c\n\x1arun.googleapis.com/Service\x12\x35\n\x07scaling\x18\x0c \x01(\x0b\x32$.google.cloud.run.v2.RevisionScaling\x12\x32\n\nvpc_access\x18\r \x01(\x0b\x32\x1e.google.cloud.run.v2.VpcAccess\x12(\n max_instance_request_concurrency\x18\" \x01(\x05\x12*\n\x07timeout\x18\x0f \x01(\x0b\x32\x19.google.protobuf.Duration\x12\x17\n\x0fservice_account\x18\x10 \x01(\t\x12\x32\n\ncontainers\x18\x11 \x03(\x0b\x32\x1e.google.cloud.run.v2.Container\x12,\n\x07volumes\x18\x12 \x03(\x0b\x32\x1b.google.cloud.run.v2.Volume\x12H\n\x15\x65xecution_environment\x18\x14 \x01(\x0e\x32).google.cloud.run.v2.ExecutionEnvironment\x12>\n\x0e\x65ncryption_key\x18\x15 \x01(\tB&\xfa\x41#\n!cloudkms.googleapis.com/CryptoKey\x12\\\n encryption_key_revocation_action\x18\x17 \x01(\x0e\x32\x32.google.cloud.run.v2.EncryptionKeyRevocationAction\x12\x43\n encryption_key_shutdown_duration\x18\x18 \x01(\x0b\x32\x19.google.protobuf.Duration\x12\x18\n\x0breconciling\x18\x1e \x01(\x08\x42\x03\xe0\x41\x03\x12\x37\n\nconditions\x18\x1f \x03(\x0b\x32\x1e.google.cloud.run.v2.ConditionB\x03\xe0\x41\x03\x12 \n\x13observed_generation\x18  \x01(\x03\x42\x03\xe0\x41\x03\x12\x14\n\x07log_uri\x18! \x01(\tB\x03\xe0\x41\x03\x12\x1a\n\rsatisfies_pzs\x18% \x01(\x08\x42\x03\xe0\x41\x03\x12\x18\n\x10session_affinity\x18& \x01(\x08\x12\x11\n\x04\x65tag\x18\x63 \x01(\tB\x03\xe0\x41\x03\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\x1a\x32\n\x10\x41nnotationsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01:t\xea\x41q\n\x1brun.googleapis.com/Revision\x12Oprojects/{project}/locations/{location}/services/{service}/revisions/{revision}R\x01\x01\x32\x85\x06\n\tRevisions\x12\xd2\x01\n\x0bGetRevision\x12\'.google.cloud.run.v2.GetRevisionRequest\x1a\x1d.google.cloud.run.v2.Revision\"{\xda\x41\x04name\x82\xd3\xe4\x93\x02:\x12\x38/v2/{name=projects/*/locations/*/services/*/revisions/*}\x8a\xd3\xe4\x93\x02.\x12,\n\x04name\x12$projects/*/locations/{location=*}/**\x12\xe7\x01\n\rListRevisions\x12).google.cloud.run.v2.ListRevisionsRequest\x1a*.google.cloud.run.v2.ListRevisionsResponse\"\x7f\xda\x41\x06parent\x82\xd3\xe4\x93\x02:\x12\x38/v2/{parent=projects/*/locations/*/services/*}/revisions\x8a\xd3\xe4\x93\x02\x30\x12.\n\x06parent\x12$projects/*/locations/{location=*}/**\x12\xf0\x01\n\x0e\x44\x65leteRevision\x12*.google.cloud.run.v2.DeleteRevisionRequest\x1a\x1d.google.longrunning.Operation\"\x92\x01\xca\x41\x14\n\x08Revision\x12\x08Revision\xda\x41\x04name\x82\xd3\xe4\x93\x02:*8/v2/{name=projects/*/locations/*/services/*/revisions/*}\x8a\xd3\xe4\x93\x02.\x12,\n\x04name\x12$projects/*/locations/{location=*}/**\x1a\x46\xca\x41\x12run.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformBU\n\x17\x63om.google.cloud.run.v2B\rRevisionProtoP\x01Z)cloud.google.com/go/run/apiv2/runpb;runpbb\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
    ["google.cloud.run.v2.RevisionScaling", "google/cloud/run/v2/vendor_settings.proto"],
    ["google.protobuf.Duration", "google/protobuf/duration.proto"],
    ["google.cloud.run.v2.Container", "google/cloud/run/v2/k8s.min.proto"],
    ["google.cloud.run.v2.Condition", "google/cloud/run/v2/condition.proto"],
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
    module Run
      module V2
        GetRevisionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.GetRevisionRequest").msgclass
        ListRevisionsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.ListRevisionsRequest").msgclass
        ListRevisionsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.ListRevisionsResponse").msgclass
        DeleteRevisionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.DeleteRevisionRequest").msgclass
        Revision = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.Revision").msgclass
      end
    end
  end
end
