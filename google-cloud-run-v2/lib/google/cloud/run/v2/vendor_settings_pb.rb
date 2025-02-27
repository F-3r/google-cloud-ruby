# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/run/v2/vendor_settings.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'


descriptor_data = "\n)google/cloud/run/v2/vendor_settings.proto\x12\x13google.cloud.run.v2\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\"\xe8\x02\n\tVpcAccess\x12:\n\tconnector\x18\x01 \x01(\tB\'\xfa\x41$\n\"vpcaccess.googleapis.com/Connector\x12\x38\n\x06\x65gress\x18\x02 \x01(\x0e\x32(.google.cloud.run.v2.VpcAccess.VpcEgress\x12K\n\x12network_interfaces\x18\x03 \x03(\x0b\x32/.google.cloud.run.v2.VpcAccess.NetworkInterface\x1a\x45\n\x10NetworkInterface\x12\x0f\n\x07network\x18\x01 \x01(\t\x12\x12\n\nsubnetwork\x18\x02 \x01(\t\x12\x0c\n\x04tags\x18\x03 \x03(\t\"Q\n\tVpcEgress\x12\x1a\n\x16VPC_EGRESS_UNSPECIFIED\x10\x00\x12\x0f\n\x0b\x41LL_TRAFFIC\x10\x01\x12\x17\n\x13PRIVATE_RANGES_ONLY\x10\x02\"a\n\x13\x42inaryAuthorization\x12\x15\n\x0buse_default\x18\x01 \x01(\x08H\x00\x12 \n\x18\x62reakglass_justification\x18\x02 \x01(\tB\x11\n\x0f\x62inauthz_method\"I\n\x0fRevisionScaling\x12\x1a\n\x12min_instance_count\x18\x01 \x01(\x05\x12\x1a\n\x12max_instance_count\x18\x02 \x01(\x05*\x99\x01\n\x0eIngressTraffic\x12\x1f\n\x1bINGRESS_TRAFFIC_UNSPECIFIED\x10\x00\x12\x17\n\x13INGRESS_TRAFFIC_ALL\x10\x01\x12!\n\x1dINGRESS_TRAFFIC_INTERNAL_ONLY\x10\x02\x12*\n&INGRESS_TRAFFIC_INTERNAL_LOAD_BALANCER\x10\x03*}\n\x14\x45xecutionEnvironment\x12%\n!EXECUTION_ENVIRONMENT_UNSPECIFIED\x10\x00\x12\x1e\n\x1a\x45XECUTION_ENVIRONMENT_GEN1\x10\x01\x12\x1e\n\x1a\x45XECUTION_ENVIRONMENT_GEN2\x10\x02*p\n\x1d\x45ncryptionKeyRevocationAction\x12\x30\n,ENCRYPTION_KEY_REVOCATION_ACTION_UNSPECIFIED\x10\x00\x12\x0f\n\x0bPREVENT_NEW\x10\x01\x12\x0c\n\x08SHUTDOWN\x10\x02\x42[\n\x17\x63om.google.cloud.run.v2B\x13VendorSettingsProtoP\x01Z)cloud.google.com/go/run/apiv2/runpb;runpbb\x06proto3"

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
        VpcAccess = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.VpcAccess").msgclass
        VpcAccess::NetworkInterface = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.VpcAccess.NetworkInterface").msgclass
        VpcAccess::VpcEgress = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.VpcAccess.VpcEgress").enummodule
        BinaryAuthorization = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.BinaryAuthorization").msgclass
        RevisionScaling = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.RevisionScaling").msgclass
        IngressTraffic = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.IngressTraffic").enummodule
        ExecutionEnvironment = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.ExecutionEnvironment").enummodule
        EncryptionKeyRevocationAction = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.EncryptionKeyRevocationAction").enummodule
      end
    end
  end
end
