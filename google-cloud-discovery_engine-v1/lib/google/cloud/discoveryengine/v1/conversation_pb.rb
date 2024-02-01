# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/discoveryengine/v1/conversation.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/discoveryengine/v1/search_service_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n2google/cloud/discoveryengine/v1/conversation.proto\x12\x1fgoogle.cloud.discoveryengine.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x34google/cloud/discoveryengine/v1/search_service.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xf9\x04\n\x0c\x43onversation\x12\x12\n\x04name\x18\x01 \x01(\tB\x04\xe2\x41\x01\x05\x12\x42\n\x05state\x18\x02 \x01(\x0e\x32\x33.google.cloud.discoveryengine.v1.Conversation.State\x12\x16\n\x0euser_pseudo_id\x18\x03 \x01(\t\x12\x46\n\x08messages\x18\x04 \x03(\x0b\x32\x34.google.cloud.discoveryengine.v1.ConversationMessage\x12\x34\n\nstart_time\x18\x05 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x04\xe2\x41\x01\x03\x12\x32\n\x08\x65nd_time\x18\x06 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x04\xe2\x41\x01\x03\">\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x0f\n\x0bIN_PROGRESS\x10\x01\x12\r\n\tCOMPLETED\x10\x02:\x86\x02\xea\x41\x82\x02\n+discoveryengine.googleapis.com/Conversation\x12\\projects/{project}/locations/{location}/dataStores/{data_store}/conversations/{conversation}\x12uprojects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/conversations/{conversation}\"Q\n\x05Reply\x12H\n\x07summary\x18\x03 \x01(\x0b\x32\x37.google.cloud.discoveryengine.v1.SearchResponse.Summary\"I\n\x13\x43onversationContext\x12\x19\n\x11\x63ontext_documents\x18\x01 \x03(\t\x12\x17\n\x0f\x61\x63tive_document\x18\x02 \x01(\t\"a\n\tTextInput\x12\r\n\x05input\x18\x01 \x01(\t\x12\x45\n\x07\x63ontext\x18\x02 \x01(\x0b\x32\x34.google.cloud.discoveryengine.v1.ConversationContext\"\xd2\x01\n\x13\x43onversationMessage\x12@\n\nuser_input\x18\x01 \x01(\x0b\x32*.google.cloud.discoveryengine.v1.TextInputH\x00\x12\x37\n\x05reply\x18\x02 \x01(\x0b\x32&.google.cloud.discoveryengine.v1.ReplyH\x00\x12\x35\n\x0b\x63reate_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x04\xe2\x41\x01\x03\x42\t\n\x07messageB\x84\x02\n#com.google.cloud.discoveryengine.v1B\x11\x43onversationProtoP\x01ZMcloud.google.com/go/discoveryengine/apiv1/discoveryenginepb;discoveryenginepb\xa2\x02\x0f\x44ISCOVERYENGINE\xaa\x02\x1fGoogle.Cloud.DiscoveryEngine.V1\xca\x02\x1fGoogle\\Cloud\\DiscoveryEngine\\V1\xea\x02\"Google::Cloud::DiscoveryEngine::V1b\x06proto3"

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
    ["google.cloud.discoveryengine.v1.SearchResponse.Summary", "google/cloud/discoveryengine/v1/search_service.proto"],
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
      module V1
        Conversation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.Conversation").msgclass
        Conversation::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.Conversation.State").enummodule
        Reply = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.Reply").msgclass
        ConversationContext = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.ConversationContext").msgclass
        TextInput = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.TextInput").msgclass
        ConversationMessage = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.ConversationMessage").msgclass
      end
    end
  end
end
