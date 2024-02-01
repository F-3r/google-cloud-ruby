# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/dialogflow/cx/v3/entity_type.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'


descriptor_data = "\n/google/cloud/dialogflow/cx/v3/entity_type.proto\x12\x1dgoogle.cloud.dialogflow.cx.v3\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a google/protobuf/field_mask.proto\"\x9f\x06\n\nEntityType\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x1a\n\x0c\x64isplay_name\x18\x02 \x01(\tB\x04\xe2\x41\x01\x02\x12\x42\n\x04kind\x18\x03 \x01(\x0e\x32..google.cloud.dialogflow.cx.v3.EntityType.KindB\x04\xe2\x41\x01\x02\x12X\n\x13\x61uto_expansion_mode\x18\x04 \x01(\x0e\x32;.google.cloud.dialogflow.cx.v3.EntityType.AutoExpansionMode\x12\x42\n\x08\x65ntities\x18\x05 \x03(\x0b\x32\x30.google.cloud.dialogflow.cx.v3.EntityType.Entity\x12R\n\x10\x65xcluded_phrases\x18\x06 \x03(\x0b\x32\x38.google.cloud.dialogflow.cx.v3.EntityType.ExcludedPhrase\x12\x1f\n\x17\x65nable_fuzzy_extraction\x18\x07 \x01(\x08\x12\x0e\n\x06redact\x18\t \x01(\x08\x1a\x35\n\x06\x45ntity\x12\x13\n\x05value\x18\x01 \x01(\tB\x04\xe2\x41\x01\x02\x12\x16\n\x08synonyms\x18\x02 \x03(\tB\x04\xe2\x41\x01\x02\x1a%\n\x0e\x45xcludedPhrase\x12\x13\n\x05value\x18\x01 \x01(\tB\x04\xe2\x41\x01\x02\"J\n\x04Kind\x12\x14\n\x10KIND_UNSPECIFIED\x10\x00\x12\x0c\n\x08KIND_MAP\x10\x01\x12\r\n\tKIND_LIST\x10\x02\x12\x0f\n\x0bKIND_REGEXP\x10\x03\"Y\n\x11\x41utoExpansionMode\x12#\n\x1f\x41UTO_EXPANSION_MODE_UNSPECIFIED\x10\x00\x12\x1f\n\x1b\x41UTO_EXPANSION_MODE_DEFAULT\x10\x01:{\xea\x41x\n$dialogflow.googleapis.com/EntityType\x12Pprojects/{project}/locations/{location}/agents/{agent}/entityTypes/{entity_type}\"\x95\x01\n\x16ListEntityTypesRequest\x12=\n\x06parent\x18\x01 \x01(\tB-\xe2\x41\x01\x02\xfa\x41&\x12$dialogflow.googleapis.com/EntityType\x12\x15\n\rlanguage_code\x18\x02 \x01(\t\x12\x11\n\tpage_size\x18\x03 \x01(\x05\x12\x12\n\npage_token\x18\x04 \x01(\t\"s\n\x17ListEntityTypesResponse\x12?\n\x0c\x65ntity_types\x18\x01 \x03(\x0b\x32).google.cloud.dialogflow.cx.v3.EntityType\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"j\n\x14GetEntityTypeRequest\x12;\n\x04name\x18\x01 \x01(\tB-\xe2\x41\x01\x02\xfa\x41&\n$dialogflow.googleapis.com/EntityType\x12\x15\n\rlanguage_code\x18\x02 \x01(\t\"\xb5\x01\n\x17\x43reateEntityTypeRequest\x12=\n\x06parent\x18\x01 \x01(\tB-\xe2\x41\x01\x02\xfa\x41&\x12$dialogflow.googleapis.com/EntityType\x12\x44\n\x0b\x65ntity_type\x18\x02 \x01(\x0b\x32).google.cloud.dialogflow.cx.v3.EntityTypeB\x04\xe2\x41\x01\x02\x12\x15\n\rlanguage_code\x18\x03 \x01(\t\"\xa7\x01\n\x17UpdateEntityTypeRequest\x12\x44\n\x0b\x65ntity_type\x18\x01 \x01(\x0b\x32).google.cloud.dialogflow.cx.v3.EntityTypeB\x04\xe2\x41\x01\x02\x12\x15\n\rlanguage_code\x18\x02 \x01(\t\x12/\n\x0bupdate_mask\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.FieldMask\"e\n\x17\x44\x65leteEntityTypeRequest\x12;\n\x04name\x18\x01 \x01(\tB-\xe2\x41\x01\x02\xfa\x41&\n$dialogflow.googleapis.com/EntityType\x12\r\n\x05\x66orce\x18\x02 \x01(\x08\x32\x87\t\n\x0b\x45ntityTypes\x12\xb8\x01\n\rGetEntityType\x12\x33.google.cloud.dialogflow.cx.v3.GetEntityTypeRequest\x1a).google.cloud.dialogflow.cx.v3.EntityType\"G\xda\x41\x04name\x82\xd3\xe4\x93\x02:\x12\x38/v3/{name=projects/*/locations/*/agents/*/entityTypes/*}\x12\xd9\x01\n\x10\x43reateEntityType\x12\x36.google.cloud.dialogflow.cx.v3.CreateEntityTypeRequest\x1a).google.cloud.dialogflow.cx.v3.EntityType\"b\xda\x41\x12parent,entity_type\x82\xd3\xe4\x93\x02G\"8/v3/{parent=projects/*/locations/*/agents/*}/entityTypes:\x0b\x65ntity_type\x12\xea\x01\n\x10UpdateEntityType\x12\x36.google.cloud.dialogflow.cx.v3.UpdateEntityTypeRequest\x1a).google.cloud.dialogflow.cx.v3.EntityType\"s\xda\x41\x17\x65ntity_type,update_mask\x82\xd3\xe4\x93\x02S2D/v3/{entity_type.name=projects/*/locations/*/agents/*/entityTypes/*}:\x0b\x65ntity_type\x12\xab\x01\n\x10\x44\x65leteEntityType\x12\x36.google.cloud.dialogflow.cx.v3.DeleteEntityTypeRequest\x1a\x16.google.protobuf.Empty\"G\xda\x41\x04name\x82\xd3\xe4\x93\x02:*8/v3/{name=projects/*/locations/*/agents/*/entityTypes/*}\x12\xcb\x01\n\x0fListEntityTypes\x12\x35.google.cloud.dialogflow.cx.v3.ListEntityTypesRequest\x1a\x36.google.cloud.dialogflow.cx.v3.ListEntityTypesResponse\"I\xda\x41\x06parent\x82\xd3\xe4\x93\x02:\x12\x38/v3/{parent=projects/*/locations/*/agents/*}/entityTypes\x1ax\xca\x41\x19\x64ialogflow.googleapis.com\xd2\x41Yhttps://www.googleapis.com/auth/cloud-platform,https://www.googleapis.com/auth/dialogflowB\xb5\x01\n!com.google.cloud.dialogflow.cx.v3B\x0f\x45ntityTypeProtoP\x01Z1cloud.google.com/go/dialogflow/cx/apiv3/cxpb;cxpb\xf8\x01\x01\xa2\x02\x02\x44\x46\xaa\x02\x1dGoogle.Cloud.Dialogflow.Cx.V3\xea\x02!Google::Cloud::Dialogflow::CX::V3b\x06proto3"

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
    ["google.protobuf.FieldMask", "google/protobuf/field_mask.proto"],
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
          EntityType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.EntityType").msgclass
          EntityType::Entity = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.EntityType.Entity").msgclass
          EntityType::ExcludedPhrase = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.EntityType.ExcludedPhrase").msgclass
          EntityType::Kind = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.EntityType.Kind").enummodule
          EntityType::AutoExpansionMode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.EntityType.AutoExpansionMode").enummodule
          ListEntityTypesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.ListEntityTypesRequest").msgclass
          ListEntityTypesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.ListEntityTypesResponse").msgclass
          GetEntityTypeRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.GetEntityTypeRequest").msgclass
          CreateEntityTypeRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.CreateEntityTypeRequest").msgclass
          UpdateEntityTypeRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.UpdateEntityTypeRequest").msgclass
          DeleteEntityTypeRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.DeleteEntityTypeRequest").msgclass
        end
      end
    end
  end
end
