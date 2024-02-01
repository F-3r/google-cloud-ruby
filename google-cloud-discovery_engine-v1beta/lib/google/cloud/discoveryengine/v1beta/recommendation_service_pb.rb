# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/discoveryengine/v1beta/recommendation_service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/discoveryengine/v1beta/document_pb'
require 'google/cloud/discoveryengine/v1beta/user_event_pb'
require 'google/protobuf/struct_pb'


descriptor_data = "\n@google/cloud/discoveryengine/v1beta/recommendation_service.proto\x12#google.cloud.discoveryengine.v1beta\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x32google/cloud/discoveryengine/v1beta/document.proto\x1a\x34google/cloud/discoveryengine/v1beta/user_event.proto\x1a\x1cgoogle/protobuf/struct.proto\"\x8e\x04\n\x10RecommendRequest\x12M\n\x0eserving_config\x18\x01 \x01(\tB5\xe2\x41\x01\x02\xfa\x41.\n,discoveryengine.googleapis.com/ServingConfig\x12H\n\nuser_event\x18\x02 \x01(\x0b\x32..google.cloud.discoveryengine.v1beta.UserEventB\x04\xe2\x41\x01\x02\x12\x11\n\tpage_size\x18\x03 \x01(\x05\x12\x0e\n\x06\x66ilter\x18\x04 \x01(\t\x12\x15\n\rvalidate_only\x18\x05 \x01(\x08\x12Q\n\x06params\x18\x06 \x03(\x0b\x32\x41.google.cloud.discoveryengine.v1beta.RecommendRequest.ParamsEntry\x12Z\n\x0buser_labels\x18\x08 \x03(\x0b\x32\x45.google.cloud.discoveryengine.v1beta.RecommendRequest.UserLabelsEntry\x1a\x45\n\x0bParamsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12%\n\x05value\x18\x02 \x01(\x0b\x32\x16.google.protobuf.Value:\x02\x38\x01\x1a\x31\n\x0fUserLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"\xd4\x03\n\x11RecommendResponse\x12\\\n\x07results\x18\x01 \x03(\x0b\x32K.google.cloud.discoveryengine.v1beta.RecommendResponse.RecommendationResult\x12\x19\n\x11\x61ttribution_token\x18\x02 \x01(\t\x12\x13\n\x0bmissing_ids\x18\x03 \x03(\t\x12\x15\n\rvalidate_only\x18\x04 \x01(\x08\x1a\x99\x02\n\x14RecommendationResult\x12\n\n\x02id\x18\x01 \x01(\t\x12?\n\x08\x64ocument\x18\x02 \x01(\x0b\x32-.google.cloud.discoveryengine.v1beta.Document\x12k\n\x08metadata\x18\x03 \x03(\x0b\x32Y.google.cloud.discoveryengine.v1beta.RecommendResponse.RecommendationResult.MetadataEntry\x1aG\n\rMetadataEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12%\n\x05value\x18\x02 \x01(\x0b\x32\x16.google.protobuf.Value:\x02\x38\x01\x32\xba\x03\n\x15RecommendationService\x12\xcc\x02\n\tRecommend\x12\x35.google.cloud.discoveryengine.v1beta.RecommendRequest\x1a\x36.google.cloud.discoveryengine.v1beta.RecommendResponse\"\xcf\x01\x82\xd3\xe4\x93\x02\xc8\x01\"W/v1beta/{serving_config=projects/*/locations/*/dataStores/*/servingConfigs/*}:recommend:\x01*Zj\"e/v1beta/{serving_config=projects/*/locations/*/collections/*/dataStores/*/servingConfigs/*}:recommend:\x01*\x1aR\xca\x41\x1e\x64iscoveryengine.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB\xa1\x02\n\'com.google.cloud.discoveryengine.v1betaB\x1aRecommendationServiceProtoP\x01ZQcloud.google.com/go/discoveryengine/apiv1beta/discoveryenginepb;discoveryenginepb\xa2\x02\x0f\x44ISCOVERYENGINE\xaa\x02#Google.Cloud.DiscoveryEngine.V1Beta\xca\x02#Google\\Cloud\\DiscoveryEngine\\V1beta\xea\x02&Google::Cloud::DiscoveryEngine::V1betab\x06proto3"

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
    ["google.cloud.discoveryengine.v1beta.UserEvent", "google/cloud/discoveryengine/v1beta/user_event.proto"],
    ["google.protobuf.Value", "google/protobuf/struct.proto"],
    ["google.cloud.discoveryengine.v1beta.Document", "google/cloud/discoveryengine/v1beta/document.proto"],
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
    module DiscoveryEngine
      module V1beta
        RecommendRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1beta.RecommendRequest").msgclass
        RecommendResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1beta.RecommendResponse").msgclass
        RecommendResponse::RecommendationResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1beta.RecommendResponse.RecommendationResult").msgclass
      end
    end
  end
end
