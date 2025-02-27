# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/securitycenter/v1/indicator.proto

require 'google/protobuf'


descriptor_data = "\n.google/cloud/securitycenter/v1/indicator.proto\x12\x1egoogle.cloud.securitycenter.v1\"\x91\x05\n\tIndicator\x12\x14\n\x0cip_addresses\x18\x01 \x03(\t\x12\x0f\n\x07\x64omains\x18\x02 \x03(\t\x12N\n\nsignatures\x18\x03 \x03(\x0b\x32:.google.cloud.securitycenter.v1.Indicator.ProcessSignature\x12\x0c\n\x04uris\x18\x04 \x03(\t\x1a\xfe\x03\n\x10ProcessSignature\x12o\n\x15memory_hash_signature\x18\x06 \x01(\x0b\x32N.google.cloud.securitycenter.v1.Indicator.ProcessSignature.MemoryHashSignatureH\x00\x12k\n\x13yara_rule_signature\x18\x07 \x01(\x0b\x32L.google.cloud.securitycenter.v1.Indicator.ProcessSignature.YaraRuleSignatureH\x00\x1a\xd6\x01\n\x13MemoryHashSignature\x12\x15\n\rbinary_family\x18\x01 \x01(\t\x12l\n\ndetections\x18\x04 \x03(\x0b\x32X.google.cloud.securitycenter.v1.Indicator.ProcessSignature.MemoryHashSignature.Detection\x1a:\n\tDetection\x12\x0e\n\x06\x62inary\x18\x02 \x01(\t\x12\x1d\n\x15percent_pages_matched\x18\x03 \x01(\x01\x1a&\n\x11YaraRuleSignature\x12\x11\n\tyara_rule\x18\x05 \x01(\tB\x0b\n\tsignatureB\xe8\x01\n\"com.google.cloud.securitycenter.v1B\x0eIndicatorProtoP\x01ZJcloud.google.com/go/securitycenter/apiv1/securitycenterpb;securitycenterpb\xaa\x02\x1eGoogle.Cloud.SecurityCenter.V1\xca\x02\x1eGoogle\\Cloud\\SecurityCenter\\V1\xea\x02!Google::Cloud::SecurityCenter::V1b\x06proto3"

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
    module SecurityCenter
      module V1
        Indicator = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.Indicator").msgclass
        Indicator::ProcessSignature = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.Indicator.ProcessSignature").msgclass
        Indicator::ProcessSignature::MemoryHashSignature = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.Indicator.ProcessSignature.MemoryHashSignature").msgclass
        Indicator::ProcessSignature::MemoryHashSignature::Detection = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.Indicator.ProcessSignature.MemoryHashSignature.Detection").msgclass
        Indicator::ProcessSignature::YaraRuleSignature = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.Indicator.ProcessSignature.YaraRuleSignature").msgclass
      end
    end
  end
end
