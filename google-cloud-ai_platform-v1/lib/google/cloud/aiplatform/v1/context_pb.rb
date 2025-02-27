# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/aiplatform/v1/context.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/struct_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n(google/cloud/aiplatform/v1/context.proto\x12\x1agoogle.cloud.aiplatform.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1cgoogle/protobuf/struct.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xd3\x04\n\x07\x43ontext\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x05\x12\x14\n\x0c\x64isplay_name\x18\x02 \x01(\t\x12\x0c\n\x04\x65tag\x18\x08 \x01(\t\x12?\n\x06labels\x18\t \x03(\x0b\x32/.google.cloud.aiplatform.v1.Context.LabelsEntry\x12\x34\n\x0b\x63reate_time\x18\n \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x0b \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x42\n\x0fparent_contexts\x18\x0c \x03(\tB)\xe0\x41\x03\xfa\x41#\n!aiplatform.googleapis.com/Context\x12\x14\n\x0cschema_title\x18\r \x01(\t\x12\x16\n\x0eschema_version\x18\x0e \x01(\t\x12)\n\x08metadata\x18\x0f \x01(\x0b\x32\x17.google.protobuf.Struct\x12\x13\n\x0b\x64\x65scription\x18\x10 \x01(\t\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01:\x82\x01\xea\x41\x7f\n!aiplatform.googleapis.com/Context\x12Zprojects/{project}/locations/{location}/metadataStores/{metadata_store}/contexts/{context}B\xca\x01\n\x1e\x63om.google.cloud.aiplatform.v1B\x0c\x43ontextProtoP\x01Z>cloud.google.com/go/aiplatform/apiv1/aiplatformpb;aiplatformpb\xaa\x02\x1aGoogle.Cloud.AIPlatform.V1\xca\x02\x1aGoogle\\Cloud\\AIPlatform\\V1\xea\x02\x1dGoogle::Cloud::AIPlatform::V1b\x06proto3"

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
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
    ["google.protobuf.Struct", "google/protobuf/struct.proto"],
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
        Context = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.Context").msgclass
      end
    end
  end
end
