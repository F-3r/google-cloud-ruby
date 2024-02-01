# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/dialogflow/v2/context.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/struct_pb'


descriptor_data = "\n(google/cloud/dialogflow/v2/context.proto\x12\x1agoogle.cloud.dialogflow.v2\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a google/protobuf/field_mask.proto\x1a\x1cgoogle/protobuf/struct.proto\"\x92\x04\n\x07\x43ontext\x12\x12\n\x04name\x18\x01 \x01(\tB\x04\xe2\x41\x01\x02\x12\x1c\n\x0elifespan_count\x18\x02 \x01(\x05\x42\x04\xe2\x41\x01\x01\x12\x31\n\nparameters\x18\x03 \x01(\x0b\x32\x17.google.protobuf.StructB\x04\xe2\x41\x01\x01:\xa1\x03\xea\x41\x9d\x03\n!dialogflow.googleapis.com/Context\x12>projects/{project}/agent/sessions/{session}/contexts/{context}\x12\x66projects/{project}/agent/environments/{environment}/users/{user}/sessions/{session}/contexts/{context}\x12Sprojects/{project}/locations/{location}/agent/sessions/{session}/contexts/{context}\x12{projects/{project}/locations/{location}/agent/environments/{environment}/users/{user}/sessions/{session}/contexts/{context}\"\x84\x01\n\x13ListContextsRequest\x12:\n\x06parent\x18\x01 \x01(\tB*\xe2\x41\x01\x02\xfa\x41#\x12!dialogflow.googleapis.com/Context\x12\x17\n\tpage_size\x18\x02 \x01(\x05\x42\x04\xe2\x41\x01\x01\x12\x18\n\npage_token\x18\x03 \x01(\tB\x04\xe2\x41\x01\x01\"f\n\x14ListContextsResponse\x12\x35\n\x08\x63ontexts\x18\x01 \x03(\x0b\x32#.google.cloud.dialogflow.v2.Context\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"M\n\x11GetContextRequest\x12\x38\n\x04name\x18\x01 \x01(\tB*\xe2\x41\x01\x02\xfa\x41#\n!dialogflow.googleapis.com/Context\"\x8e\x01\n\x14\x43reateContextRequest\x12:\n\x06parent\x18\x01 \x01(\tB*\xe2\x41\x01\x02\xfa\x41#\x12!dialogflow.googleapis.com/Context\x12:\n\x07\x63ontext\x18\x02 \x01(\x0b\x32#.google.cloud.dialogflow.v2.ContextB\x04\xe2\x41\x01\x02\"\x89\x01\n\x14UpdateContextRequest\x12:\n\x07\x63ontext\x18\x01 \x01(\x0b\x32#.google.cloud.dialogflow.v2.ContextB\x04\xe2\x41\x01\x02\x12\x35\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x04\xe2\x41\x01\x01\"P\n\x14\x44\x65leteContextRequest\x12\x38\n\x04name\x18\x01 \x01(\tB*\xe2\x41\x01\x02\xfa\x41#\n!dialogflow.googleapis.com/Context\"V\n\x18\x44\x65leteAllContextsRequest\x12:\n\x06parent\x18\x01 \x01(\tB*\xe2\x41\x01\x02\xfa\x41#\x12!dialogflow.googleapis.com/Context2\xe8\x14\n\x08\x43ontexts\x12\x9c\x03\n\x0cListContexts\x12/.google.cloud.dialogflow.v2.ListContextsRequest\x1a\x30.google.cloud.dialogflow.v2.ListContextsResponse\"\xa8\x02\xda\x41\x06parent\x82\xd3\xe4\x93\x02\x98\x02\x12\x31/v2/{parent=projects/*/agent/sessions/*}/contextsZJ\x12H/v2/{parent=projects/*/agent/environments/*/users/*/sessions/*}/contextsZ?\x12=/v2/{parent=projects/*/locations/*/agent/sessions/*}/contextsZV\x12T/v2/{parent=projects/*/locations/*/agent/environments/*/users/*/sessions/*}/contexts\x12\x89\x03\n\nGetContext\x12-.google.cloud.dialogflow.v2.GetContextRequest\x1a#.google.cloud.dialogflow.v2.Context\"\xa6\x02\xda\x41\x04name\x82\xd3\xe4\x93\x02\x98\x02\x12\x31/v2/{name=projects/*/agent/sessions/*/contexts/*}ZJ\x12H/v2/{name=projects/*/agent/environments/*/users/*/sessions/*/contexts/*}Z?\x12=/v2/{name=projects/*/locations/*/agent/sessions/*/contexts/*}ZV\x12T/v2/{name=projects/*/locations/*/agent/environments/*/users/*/sessions/*/contexts/*}\x12\xbd\x03\n\rCreateContext\x12\x30.google.cloud.dialogflow.v2.CreateContextRequest\x1a#.google.cloud.dialogflow.v2.Context\"\xd4\x02\xda\x41\x0eparent,context\x82\xd3\xe4\x93\x02\xbc\x02\"1/v2/{parent=projects/*/agent/sessions/*}/contexts:\x07\x63ontextZS\"H/v2/{parent=projects/*/agent/environments/*/users/*/sessions/*}/contexts:\x07\x63ontextZH\"=/v2/{parent=projects/*/locations/*/agent/sessions/*}/contexts:\x07\x63ontextZ_\"T/v2/{parent=projects/*/locations/*/agent/environments/*/users/*/sessions/*}/contexts:\x07\x63ontext\x12\xe2\x03\n\rUpdateContext\x12\x30.google.cloud.dialogflow.v2.UpdateContextRequest\x1a#.google.cloud.dialogflow.v2.Context\"\xf9\x02\xda\x41\x13\x63ontext,update_mask\x82\xd3\xe4\x93\x02\xdc\x02\x32\x39/v2/{context.name=projects/*/agent/sessions/*/contexts/*}:\x07\x63ontextZ[2P/v2/{context.name=projects/*/agent/environments/*/users/*/sessions/*/contexts/*}:\x07\x63ontextZP2E/v2/{context.name=projects/*/locations/*/agent/sessions/*/contexts/*}:\x07\x63ontextZg2\\/v2/{context.name=projects/*/locations/*/agent/environments/*/users/*/sessions/*/contexts/*}:\x07\x63ontext\x12\x82\x03\n\rDeleteContext\x12\x30.google.cloud.dialogflow.v2.DeleteContextRequest\x1a\x16.google.protobuf.Empty\"\xa6\x02\xda\x41\x04name\x82\xd3\xe4\x93\x02\x98\x02*1/v2/{name=projects/*/agent/sessions/*/contexts/*}ZJ*H/v2/{name=projects/*/agent/environments/*/users/*/sessions/*/contexts/*}Z?*=/v2/{name=projects/*/locations/*/agent/sessions/*/contexts/*}ZV*T/v2/{name=projects/*/locations/*/agent/environments/*/users/*/sessions/*/contexts/*}\x12\x8c\x03\n\x11\x44\x65leteAllContexts\x12\x34.google.cloud.dialogflow.v2.DeleteAllContextsRequest\x1a\x16.google.protobuf.Empty\"\xa8\x02\xda\x41\x06parent\x82\xd3\xe4\x93\x02\x98\x02*1/v2/{parent=projects/*/agent/sessions/*}/contextsZJ*H/v2/{parent=projects/*/agent/environments/*/users/*/sessions/*}/contextsZ?*=/v2/{parent=projects/*/locations/*/agent/sessions/*}/contextsZV*T/v2/{parent=projects/*/locations/*/agent/environments/*/users/*/sessions/*}/contexts\x1ax\xca\x41\x19\x64ialogflow.googleapis.com\xd2\x41Yhttps://www.googleapis.com/auth/cloud-platform,https://www.googleapis.com/auth/dialogflowB\x95\x01\n\x1e\x63om.google.cloud.dialogflow.v2B\x0c\x43ontextProtoP\x01Z>cloud.google.com/go/dialogflow/apiv2/dialogflowpb;dialogflowpb\xf8\x01\x01\xa2\x02\x02\x44\x46\xaa\x02\x1aGoogle.Cloud.Dialogflow.V2b\x06proto3"

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
    ["google.protobuf.Struct", "google/protobuf/struct.proto"],
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
      module V2
        Context = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.Context").msgclass
        ListContextsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.ListContextsRequest").msgclass
        ListContextsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.ListContextsResponse").msgclass
        GetContextRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.GetContextRequest").msgclass
        CreateContextRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.CreateContextRequest").msgclass
        UpdateContextRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.UpdateContextRequest").msgclass
        DeleteContextRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.DeleteContextRequest").msgclass
        DeleteAllContextsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.DeleteAllContextsRequest").msgclass
      end
    end
  end
end
