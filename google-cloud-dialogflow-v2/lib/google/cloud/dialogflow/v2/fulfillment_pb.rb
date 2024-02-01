# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/dialogflow/v2/fulfillment.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/field_mask_pb'


descriptor_data = "\n,google/cloud/dialogflow/v2/fulfillment.proto\x12\x1agoogle.cloud.dialogflow.v2\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a google/protobuf/field_mask.proto\"\xb2\x06\n\x0b\x46ulfillment\x12\x12\n\x04name\x18\x01 \x01(\tB\x04\xe2\x41\x01\x02\x12\x1a\n\x0c\x64isplay_name\x18\x02 \x01(\tB\x04\xe2\x41\x01\x01\x12X\n\x13generic_web_service\x18\x03 \x01(\x0b\x32\x39.google.cloud.dialogflow.v2.Fulfillment.GenericWebServiceH\x00\x12\x15\n\x07\x65nabled\x18\x04 \x01(\x08\x42\x04\xe2\x41\x01\x01\x12G\n\x08\x66\x65\x61tures\x18\x05 \x03(\x0b\x32/.google.cloud.dialogflow.v2.Fulfillment.FeatureB\x04\xe2\x41\x01\x01\x1a\x9e\x02\n\x11GenericWebService\x12\x11\n\x03uri\x18\x01 \x01(\tB\x04\xe2\x41\x01\x02\x12\x16\n\x08username\x18\x02 \x01(\tB\x04\xe2\x41\x01\x01\x12\x16\n\x08password\x18\x03 \x01(\tB\x04\xe2\x41\x01\x01\x12l\n\x0frequest_headers\x18\x04 \x03(\x0b\x32M.google.cloud.dialogflow.v2.Fulfillment.GenericWebService.RequestHeadersEntryB\x04\xe2\x41\x01\x01\x12!\n\x11is_cloud_function\x18\x05 \x01(\x08\x42\x06\x18\x01\xe2\x41\x01\x01\x1a\x35\n\x13RequestHeadersEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\x1az\n\x07\x46\x65\x61ture\x12\x42\n\x04type\x18\x01 \x01(\x0e\x32\x34.google.cloud.dialogflow.v2.Fulfillment.Feature.Type\"+\n\x04Type\x12\x14\n\x10TYPE_UNSPECIFIED\x10\x00\x12\r\n\tSMALLTALK\x10\x01:\x8c\x01\xea\x41\x88\x01\n%dialogflow.googleapis.com/Fulfillment\x12$projects/{project}/agent/fulfillment\x12\x39projects/{project}/locations/{location}/agent/fulfillmentB\r\n\x0b\x66ulfillment\"U\n\x15GetFulfillmentRequest\x12<\n\x04name\x18\x01 \x01(\tB.\xe2\x41\x01\x02\xfa\x41\'\n%dialogflow.googleapis.com/Fulfillment\"\x95\x01\n\x18UpdateFulfillmentRequest\x12\x42\n\x0b\x66ulfillment\x18\x01 \x01(\x0b\x32\'.google.cloud.dialogflow.v2.FulfillmentB\x04\xe2\x41\x01\x02\x12\x35\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x04\xe2\x41\x01\x02\x32\x91\x05\n\x0c\x46ulfillments\x12\xdb\x01\n\x0eGetFulfillment\x12\x31.google.cloud.dialogflow.v2.GetFulfillmentRequest\x1a\'.google.cloud.dialogflow.v2.Fulfillment\"m\xda\x41\x04name\x82\xd3\xe4\x93\x02`\x12\'/v2/{name=projects/*/agent/fulfillment}Z5\x12\x33/v2/{name=projects/*/locations/*/agent/fulfillment}\x12\xa8\x02\n\x11UpdateFulfillment\x12\x34.google.cloud.dialogflow.v2.UpdateFulfillmentRequest\x1a\'.google.cloud.dialogflow.v2.Fulfillment\"\xb3\x01\xda\x41\x17\x66ulfillment,update_mask\x82\xd3\xe4\x93\x02\x92\x01\x32\x33/v2/{fulfillment.name=projects/*/agent/fulfillment}:\x0b\x66ulfillmentZN2?/v2/{fulfillment.name=projects/*/locations/*/agent/fulfillment}:\x0b\x66ulfillment\x1ax\xca\x41\x19\x64ialogflow.googleapis.com\xd2\x41Yhttps://www.googleapis.com/auth/cloud-platform,https://www.googleapis.com/auth/dialogflowB\x99\x01\n\x1e\x63om.google.cloud.dialogflow.v2B\x10\x46ulfillmentProtoP\x01Z>cloud.google.com/go/dialogflow/apiv2/dialogflowpb;dialogflowpb\xf8\x01\x01\xa2\x02\x02\x44\x46\xaa\x02\x1aGoogle.Cloud.Dialogflow.V2b\x06proto3"

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
      module V2
        Fulfillment = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.Fulfillment").msgclass
        Fulfillment::GenericWebService = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.Fulfillment.GenericWebService").msgclass
        Fulfillment::Feature = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.Fulfillment.Feature").msgclass
        Fulfillment::Feature::Type = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.Fulfillment.Feature.Type").enummodule
        GetFulfillmentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.GetFulfillmentRequest").msgclass
        UpdateFulfillmentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.UpdateFulfillmentRequest").msgclass
      end
    end
  end
end
