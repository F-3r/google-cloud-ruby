# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/dialogflow/cx/v3/advanced_settings.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/cloud/dialogflow/cx/v3/gcs_pb'


descriptor_data = "\n5google/cloud/dialogflow/cx/v3/advanced_settings.proto\x12\x1dgoogle.cloud.dialogflow.cx.v3\x1a\x1fgoogle/api/field_behavior.proto\x1a\'google/cloud/dialogflow/cx/v3/gcs.proto\"\xbd\x03\n\x10\x41\x64vancedSettings\x12S\n\x1c\x61udio_export_gcs_destination\x18\x02 \x01(\x0b\x32-.google.cloud.dialogflow.cx.v3.GcsDestination\x12S\n\rdtmf_settings\x18\x05 \x01(\x0b\x32<.google.cloud.dialogflow.cx.v3.AdvancedSettings.DtmfSettings\x12Y\n\x10logging_settings\x18\x06 \x01(\x0b\x32?.google.cloud.dialogflow.cx.v3.AdvancedSettings.LoggingSettings\x1aI\n\x0c\x44tmfSettings\x12\x0f\n\x07\x65nabled\x18\x01 \x01(\x08\x12\x12\n\nmax_digits\x18\x02 \x01(\x05\x12\x14\n\x0c\x66inish_digit\x18\x03 \x01(\t\x1aY\n\x0fLoggingSettings\x12\"\n\x1a\x65nable_stackdriver_logging\x18\x02 \x01(\x08\x12\"\n\x1a\x65nable_interaction_logging\x18\x03 \x01(\x08\x42\xbb\x01\n!com.google.cloud.dialogflow.cx.v3B\x15\x41\x64vancedSettingsProtoP\x01Z1cloud.google.com/go/dialogflow/cx/apiv3/cxpb;cxpb\xf8\x01\x01\xa2\x02\x02\x44\x46\xaa\x02\x1dGoogle.Cloud.Dialogflow.Cx.V3\xea\x02!Google::Cloud::Dialogflow::CX::V3b\x06proto3"

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
    ["google.cloud.dialogflow.cx.v3.GcsDestination", "google/cloud/dialogflow/cx/v3/gcs.proto"],
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
    module Dialogflow
      module CX
        module V3
          AdvancedSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.AdvancedSettings").msgclass
          AdvancedSettings::DtmfSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.AdvancedSettings.DtmfSettings").msgclass
          AdvancedSettings::LoggingSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.AdvancedSettings.LoggingSettings").msgclass
        end
      end
    end
  end
end
