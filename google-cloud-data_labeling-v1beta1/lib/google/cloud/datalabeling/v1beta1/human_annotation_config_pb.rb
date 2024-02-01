# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/datalabeling/v1beta1/human_annotation_config.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/protobuf/duration_pb'


descriptor_data = "\n?google/cloud/datalabeling/v1beta1/human_annotation_config.proto\x12!google.cloud.datalabeling.v1beta1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x1egoogle/protobuf/duration.proto\"\xdc\x02\n\x15HumanAnnotationConfig\x12\x19\n\x0binstruction\x18\x01 \x01(\tB\x04\xe2\x41\x01\x02\x12,\n\x1e\x61nnotated_dataset_display_name\x18\x02 \x01(\tB\x04\xe2\x41\x01\x02\x12+\n\x1d\x61nnotated_dataset_description\x18\x03 \x01(\tB\x04\xe2\x41\x01\x01\x12\x19\n\x0blabel_group\x18\x04 \x01(\tB\x04\xe2\x41\x01\x01\x12\x1b\n\rlanguage_code\x18\x05 \x01(\tB\x04\xe2\x41\x01\x01\x12\x1b\n\rreplica_count\x18\x06 \x01(\x05\x42\x04\xe2\x41\x01\x01\x12:\n\x11question_duration\x18\x07 \x01(\x0b\x32\x19.google.protobuf.DurationB\x04\xe2\x41\x01\x01\x12 \n\x12\x63ontributor_emails\x18\t \x03(\tB\x04\xe2\x41\x01\x01\x12\x1a\n\x12user_email_address\x18\n \x01(\t\"\xc0\x01\n\x19ImageClassificationConfig\x12!\n\x13\x61nnotation_spec_set\x18\x01 \x01(\tB\x04\xe2\x41\x01\x02\x12\x1f\n\x11\x61llow_multi_label\x18\x02 \x01(\x08\x42\x04\xe2\x41\x01\x01\x12_\n\x17\x61nswer_aggregation_type\x18\x03 \x01(\x0e\x32\x38.google.cloud.datalabeling.v1beta1.StringAggregationTypeB\x04\xe2\x41\x01\x01\"Z\n\x12\x42oundingPolyConfig\x12!\n\x13\x61nnotation_spec_set\x18\x01 \x01(\tB\x04\xe2\x41\x01\x02\x12!\n\x13instruction_message\x18\x02 \x01(\tB\x04\xe2\x41\x01\x01\"V\n\x0ePolylineConfig\x12!\n\x13\x61nnotation_spec_set\x18\x01 \x01(\tB\x04\xe2\x41\x01\x02\x12!\n\x13instruction_message\x18\x02 \x01(\tB\x04\xe2\x41\x01\x01\"T\n\x12SegmentationConfig\x12!\n\x13\x61nnotation_spec_set\x18\x01 \x01(\tB\x04\xe2\x41\x01\x02\x12\x1b\n\x13instruction_message\x18\x02 \x01(\t\"\x9f\x02\n\x19VideoClassificationConfig\x12\x7f\n\x1b\x61nnotation_spec_set_configs\x18\x01 \x03(\x0b\x32T.google.cloud.datalabeling.v1beta1.VideoClassificationConfig.AnnotationSpecSetConfigB\x04\xe2\x41\x01\x02\x12\"\n\x14\x61pply_shot_detection\x18\x02 \x01(\x08\x42\x04\xe2\x41\x01\x01\x1a]\n\x17\x41nnotationSpecSetConfig\x12!\n\x13\x61nnotation_spec_set\x18\x01 \x01(\tB\x04\xe2\x41\x01\x02\x12\x1f\n\x11\x61llow_multi_label\x18\x02 \x01(\x08\x42\x04\xe2\x41\x01\x01\"_\n\x15ObjectDetectionConfig\x12!\n\x13\x61nnotation_spec_set\x18\x01 \x01(\tB\x04\xe2\x41\x01\x02\x12#\n\x15\x65xtraction_frame_rate\x18\x03 \x01(\x01\x42\x04\xe2\x41\x01\x02\"9\n\x14ObjectTrackingConfig\x12!\n\x13\x61nnotation_spec_set\x18\x01 \x01(\tB\x04\xe2\x41\x01\x02\"1\n\x0b\x45ventConfig\x12\"\n\x14\x61nnotation_spec_sets\x18\x01 \x03(\tB\x04\xe2\x41\x01\x02\"\xb2\x01\n\x18TextClassificationConfig\x12\x1f\n\x11\x61llow_multi_label\x18\x01 \x01(\x08\x42\x04\xe2\x41\x01\x01\x12!\n\x13\x61nnotation_spec_set\x18\x02 \x01(\tB\x04\xe2\x41\x01\x02\x12R\n\x10sentiment_config\x18\x03 \x01(\x0b\x32\x32.google.cloud.datalabeling.v1beta1.SentimentConfigB\x04\xe2\x41\x01\x01\";\n\x0fSentimentConfig\x12(\n enable_label_sentiment_selection\x18\x01 \x01(\x08\"?\n\x1aTextEntityExtractionConfig\x12!\n\x13\x61nnotation_spec_set\x18\x01 \x01(\tB\x04\xe2\x41\x01\x02*{\n\x15StringAggregationType\x12\'\n#STRING_AGGREGATION_TYPE_UNSPECIFIED\x10\x00\x12\x11\n\rMAJORITY_VOTE\x10\x01\x12\x12\n\x0eUNANIMOUS_VOTE\x10\x02\x12\x12\n\x0eNO_AGGREGATION\x10\x03\x42\xe3\x01\n%com.google.cloud.datalabeling.v1beta1P\x01ZIcloud.google.com/go/datalabeling/apiv1beta1/datalabelingpb;datalabelingpb\xaa\x02!Google.Cloud.DataLabeling.V1Beta1\xca\x02!Google\\Cloud\\DataLabeling\\V1beta1\xea\x02$Google::Cloud::DataLabeling::V1beta1b\x06proto3"

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
    ["google.protobuf.Duration", "google/protobuf/duration.proto"],
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
    module DataLabeling
      module V1beta1
        HumanAnnotationConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datalabeling.v1beta1.HumanAnnotationConfig").msgclass
        ImageClassificationConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datalabeling.v1beta1.ImageClassificationConfig").msgclass
        BoundingPolyConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datalabeling.v1beta1.BoundingPolyConfig").msgclass
        PolylineConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datalabeling.v1beta1.PolylineConfig").msgclass
        SegmentationConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datalabeling.v1beta1.SegmentationConfig").msgclass
        VideoClassificationConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datalabeling.v1beta1.VideoClassificationConfig").msgclass
        VideoClassificationConfig::AnnotationSpecSetConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datalabeling.v1beta1.VideoClassificationConfig.AnnotationSpecSetConfig").msgclass
        ObjectDetectionConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datalabeling.v1beta1.ObjectDetectionConfig").msgclass
        ObjectTrackingConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datalabeling.v1beta1.ObjectTrackingConfig").msgclass
        EventConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datalabeling.v1beta1.EventConfig").msgclass
        TextClassificationConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datalabeling.v1beta1.TextClassificationConfig").msgclass
        SentimentConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datalabeling.v1beta1.SentimentConfig").msgclass
        TextEntityExtractionConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datalabeling.v1beta1.TextEntityExtractionConfig").msgclass
        StringAggregationType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datalabeling.v1beta1.StringAggregationType").enummodule
      end
    end
  end
end
