# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/retail/v2/completion_service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/retail/v2/common_pb'
require 'google/cloud/retail/v2/import_config_pb'
require 'google/longrunning/operations_pb'


descriptor_data = "\n/google/cloud/retail/v2/completion_service.proto\x12\x16google.cloud.retail.v2\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a#google/cloud/retail/v2/common.proto\x1a*google/cloud/retail/v2/import_config.proto\x1a#google/longrunning/operations.proto\"\xdd\x01\n\x14\x43ompleteQueryRequest\x12\x36\n\x07\x63\x61talog\x18\x01 \x01(\tB%\xe0\x41\x02\xfa\x41\x1f\n\x1dretail.googleapis.com/Catalog\x12\x12\n\x05query\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x12\n\nvisitor_id\x18\x07 \x01(\t\x12\x16\n\x0elanguage_codes\x18\x03 \x03(\t\x12\x13\n\x0b\x64\x65vice_type\x18\x04 \x01(\t\x12\x0f\n\x07\x64\x61taset\x18\x06 \x01(\t\x12\x17\n\x0fmax_suggestions\x18\x05 \x01(\x05\x12\x0e\n\x06\x65ntity\x18\n \x01(\t\"\x85\x04\n\x15\x43ompleteQueryResponse\x12Z\n\x12\x63ompletion_results\x18\x01 \x03(\x0b\x32>.google.cloud.retail.v2.CompleteQueryResponse.CompletionResult\x12\x19\n\x11\x61ttribution_token\x18\x02 \x01(\t\x12_\n\x15recent_search_results\x18\x03 \x03(\x0b\x32@.google.cloud.retail.v2.CompleteQueryResponse.RecentSearchResult\x1a\xe6\x01\n\x10\x43ompletionResult\x12\x12\n\nsuggestion\x18\x01 \x01(\t\x12\x62\n\nattributes\x18\x02 \x03(\x0b\x32N.google.cloud.retail.v2.CompleteQueryResponse.CompletionResult.AttributesEntry\x1aZ\n\x0f\x41ttributesEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\x36\n\x05value\x18\x02 \x01(\x0b\x32\'.google.cloud.retail.v2.CustomAttribute:\x02\x38\x01\x1a+\n\x12RecentSearchResult\x12\x15\n\rrecent_search\x18\x01 \x01(\t2\xb2\x04\n\x11\x43ompletionService\x12\xb3\x01\n\rCompleteQuery\x12,.google.cloud.retail.v2.CompleteQueryRequest\x1a-.google.cloud.retail.v2.CompleteQueryResponse\"E\x82\xd3\xe4\x93\x02?\x12=/v2/{catalog=projects/*/locations/*/catalogs/*}:completeQuery\x12\x9b\x02\n\x14ImportCompletionData\x12\x33.google.cloud.retail.v2.ImportCompletionDataRequest\x1a\x1d.google.longrunning.Operation\"\xae\x01\xca\x41\\\n3google.cloud.retail.v2.ImportCompletionDataResponse\x12%google.cloud.retail.v2.ImportMetadata\x82\xd3\xe4\x93\x02I\"D/v2/{parent=projects/*/locations/*/catalogs/*}/completionData:import:\x01*\x1aI\xca\x41\x15retail.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB\xc1\x01\n\x1a\x63om.google.cloud.retail.v2B\x16\x43ompletionServiceProtoP\x01Z2cloud.google.com/go/retail/apiv2/retailpb;retailpb\xa2\x02\x06RETAIL\xaa\x02\x16Google.Cloud.Retail.V2\xca\x02\x16Google\\Cloud\\Retail\\V2\xea\x02\x19Google::Cloud::Retail::V2b\x06proto3"

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
    ["google.cloud.retail.v2.CustomAttribute", "google/cloud/retail/v2/common.proto"],
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
    module Retail
      module V2
        CompleteQueryRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.CompleteQueryRequest").msgclass
        CompleteQueryResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.CompleteQueryResponse").msgclass
        CompleteQueryResponse::CompletionResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.CompleteQueryResponse.CompletionResult").msgclass
        CompleteQueryResponse::RecentSearchResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.CompleteQueryResponse.RecentSearchResult").msgclass
      end
    end
  end
end
