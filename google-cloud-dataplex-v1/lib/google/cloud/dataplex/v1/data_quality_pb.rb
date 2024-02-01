# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/dataplex/v1/data_quality.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/dataplex/v1/processing_pb'


descriptor_data = "\n+google/cloud/dataplex/v1/data_quality.proto\x12\x18google.cloud.dataplex.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a)google/cloud/dataplex/v1/processing.proto\"\x93\x03\n\x0f\x44\x61taQualitySpec\x12>\n\x05rules\x18\x01 \x03(\x0b\x32).google.cloud.dataplex.v1.DataQualityRuleB\x04\xe2\x41\x01\x02\x12\x1e\n\x10sampling_percent\x18\x04 \x01(\x02\x42\x04\xe2\x41\x01\x01\x12\x18\n\nrow_filter\x18\x05 \x01(\tB\x04\xe2\x41\x01\x01\x12Z\n\x11post_scan_actions\x18\x06 \x01(\x0b\x32\x39.google.cloud.dataplex.v1.DataQualitySpec.PostScanActionsB\x04\xe2\x41\x01\x01\x1a\xa9\x01\n\x0fPostScanActions\x12g\n\x0f\x62igquery_export\x18\x01 \x01(\x0b\x32H.google.cloud.dataplex.v1.DataQualitySpec.PostScanActions.BigQueryExportB\x04\xe2\x41\x01\x01\x1a-\n\x0e\x42igQueryExport\x12\x1b\n\rresults_table\x18\x01 \x01(\tB\x04\xe2\x41\x01\x01\"\xd9\x06\n\x11\x44\x61taQualityResult\x12\x0e\n\x06passed\x18\x05 \x01(\x08\x12\x18\n\x05score\x18\t \x01(\x02\x42\x04\xe2\x41\x01\x03H\x00\x88\x01\x01\x12H\n\ndimensions\x18\x02 \x03(\x0b\x32\x34.google.cloud.dataplex.v1.DataQualityDimensionResult\x12H\n\x07\x63olumns\x18\n \x03(\x0b\x32\x31.google.cloud.dataplex.v1.DataQualityColumnResultB\x04\xe2\x41\x01\x03\x12>\n\x05rules\x18\x03 \x03(\x0b\x32/.google.cloud.dataplex.v1.DataQualityRuleResult\x12\x11\n\trow_count\x18\x04 \x01(\x03\x12;\n\x0cscanned_data\x18\x07 \x01(\x0b\x32%.google.cloud.dataplex.v1.ScannedData\x12i\n\x18post_scan_actions_result\x18\x08 \x01(\x0b\x32\x41.google.cloud.dataplex.v1.DataQualityResult.PostScanActionsResultB\x04\xe2\x41\x01\x03\x1a\x80\x03\n\x15PostScanActionsResult\x12|\n\x16\x62igquery_export_result\x18\x01 \x01(\x0b\x32V.google.cloud.dataplex.v1.DataQualityResult.PostScanActionsResult.BigQueryExportResultB\x04\xe2\x41\x01\x03\x1a\xe8\x01\n\x14\x42igQueryExportResult\x12q\n\x05state\x18\x01 \x01(\x0e\x32\\.google.cloud.dataplex.v1.DataQualityResult.PostScanActionsResult.BigQueryExportResult.StateB\x04\xe2\x41\x01\x03\x12\x15\n\x07message\x18\x02 \x01(\tB\x04\xe2\x41\x01\x03\"F\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\r\n\tSUCCEEDED\x10\x01\x12\n\n\x06\x46\x41ILED\x10\x02\x12\x0b\n\x07SKIPPED\x10\x03\x42\x08\n\x06_score\"\xd3\x01\n\x15\x44\x61taQualityRuleResult\x12\x37\n\x04rule\x18\x01 \x01(\x0b\x32).google.cloud.dataplex.v1.DataQualityRule\x12\x0e\n\x06passed\x18\x07 \x01(\x08\x12\x17\n\x0f\x65valuated_count\x18\t \x01(\x03\x12\x14\n\x0cpassed_count\x18\x08 \x01(\x03\x12\x12\n\nnull_count\x18\x05 \x01(\x03\x12\x12\n\npass_ratio\x18\x06 \x01(\x01\x12\x1a\n\x12\x66\x61iling_rows_query\x18\n \x01(\t\"\x99\x01\n\x1a\x44\x61taQualityDimensionResult\x12G\n\tdimension\x18\x01 \x01(\x0b\x32..google.cloud.dataplex.v1.DataQualityDimensionB\x04\xe2\x41\x01\x03\x12\x0e\n\x06passed\x18\x03 \x01(\x08\x12\x18\n\x05score\x18\x04 \x01(\x02\x42\x04\xe2\x41\x01\x03H\x00\x88\x01\x01\x42\x08\n\x06_score\"$\n\x14\x44\x61taQualityDimension\x12\x0c\n\x04name\x18\x01 \x01(\t\"\x89\r\n\x0f\x44\x61taQualityRule\x12W\n\x11range_expectation\x18\x01 \x01(\x0b\x32:.google.cloud.dataplex.v1.DataQualityRule.RangeExpectationH\x00\x12\\\n\x14non_null_expectation\x18\x02 \x01(\x0b\x32<.google.cloud.dataplex.v1.DataQualityRule.NonNullExpectationH\x00\x12S\n\x0fset_expectation\x18\x03 \x01(\x0b\x32\x38.google.cloud.dataplex.v1.DataQualityRule.SetExpectationH\x00\x12W\n\x11regex_expectation\x18\x04 \x01(\x0b\x32:.google.cloud.dataplex.v1.DataQualityRule.RegexExpectationH\x00\x12\x61\n\x16uniqueness_expectation\x18\x64 \x01(\x0b\x32?.google.cloud.dataplex.v1.DataQualityRule.UniquenessExpectationH\x00\x12j\n\x1bstatistic_range_expectation\x18\x65 \x01(\x0b\x32\x43.google.cloud.dataplex.v1.DataQualityRule.StatisticRangeExpectationH\x00\x12g\n\x19row_condition_expectation\x18\xc8\x01 \x01(\x0b\x32\x41.google.cloud.dataplex.v1.DataQualityRule.RowConditionExpectationH\x00\x12k\n\x1btable_condition_expectation\x18\xc9\x01 \x01(\x0b\x32\x43.google.cloud.dataplex.v1.DataQualityRule.TableConditionExpectationH\x00\x12\x15\n\x06\x63olumn\x18\xf4\x03 \x01(\tB\x04\xe2\x41\x01\x01\x12\x1a\n\x0bignore_null\x18\xf5\x03 \x01(\x08\x42\x04\xe2\x41\x01\x01\x12\x18\n\tdimension\x18\xf6\x03 \x01(\tB\x04\xe2\x41\x01\x02\x12\x18\n\tthreshold\x18\xf7\x03 \x01(\x01\x42\x04\xe2\x41\x01\x01\x12\x13\n\x04name\x18\xf8\x03 \x01(\tB\x04\xe2\x41\x01\x01\x12\x1a\n\x0b\x64\x65scription\x18\xf9\x03 \x01(\tB\x04\xe2\x41\x01\x01\x1a\x88\x01\n\x10RangeExpectation\x12\x17\n\tmin_value\x18\x01 \x01(\tB\x04\xe2\x41\x01\x01\x12\x17\n\tmax_value\x18\x02 \x01(\tB\x04\xe2\x41\x01\x01\x12 \n\x12strict_min_enabled\x18\x03 \x01(\x08\x42\x04\xe2\x41\x01\x01\x12 \n\x12strict_max_enabled\x18\x04 \x01(\x08\x42\x04\xe2\x41\x01\x01\x1a\x14\n\x12NonNullExpectation\x1a&\n\x0eSetExpectation\x12\x14\n\x06values\x18\x01 \x03(\tB\x04\xe2\x41\x01\x01\x1a\'\n\x10RegexExpectation\x12\x13\n\x05regex\x18\x01 \x01(\tB\x04\xe2\x41\x01\x01\x1a\x17\n\x15UniquenessExpectation\x1a\xc7\x02\n\x19StatisticRangeExpectation\x12l\n\tstatistic\x18\x01 \x01(\x0e\x32S.google.cloud.dataplex.v1.DataQualityRule.StatisticRangeExpectation.ColumnStatisticB\x04\xe2\x41\x01\x01\x12\x17\n\tmin_value\x18\x02 \x01(\tB\x04\xe2\x41\x01\x01\x12\x17\n\tmax_value\x18\x03 \x01(\tB\x04\xe2\x41\x01\x01\x12 \n\x12strict_min_enabled\x18\x04 \x01(\x08\x42\x04\xe2\x41\x01\x01\x12 \n\x12strict_max_enabled\x18\x05 \x01(\x08\x42\x04\xe2\x41\x01\x01\"F\n\x0f\x43olumnStatistic\x12\x17\n\x13STATISTIC_UNDEFINED\x10\x00\x12\x08\n\x04MEAN\x10\x01\x12\x07\n\x03MIN\x10\x02\x12\x07\n\x03MAX\x10\x03\x1a\x37\n\x17RowConditionExpectation\x12\x1c\n\x0esql_expression\x18\x01 \x01(\tB\x04\xe2\x41\x01\x01\x1a\x39\n\x19TableConditionExpectation\x12\x1c\n\x0esql_expression\x18\x01 \x01(\tB\x04\xe2\x41\x01\x01\x42\x0b\n\trule_type\"S\n\x17\x44\x61taQualityColumnResult\x12\x14\n\x06\x63olumn\x18\x01 \x01(\tB\x04\xe2\x41\x01\x03\x12\x18\n\x05score\x18\x02 \x01(\x02\x42\x04\xe2\x41\x01\x03H\x00\x88\x01\x01\x42\x08\n\x06_scoreB\xc4\x01\n\x1c\x63om.google.cloud.dataplex.v1B\x10\x44\x61taQualityProtoP\x01Z8cloud.google.com/go/dataplex/apiv1/dataplexpb;dataplexpb\xea\x41U\n\x1d\x62igquery.googleapis.com/Table\x12\x34projects/{project}/datasets/{dataset}/tables/{table}b\x06proto3"

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
    ["google.cloud.dataplex.v1.ScannedData", "google/cloud/dataplex/v1/processing.proto"],
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
    module Dataplex
      module V1
        DataQualitySpec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.DataQualitySpec").msgclass
        DataQualitySpec::PostScanActions = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.DataQualitySpec.PostScanActions").msgclass
        DataQualitySpec::PostScanActions::BigQueryExport = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.DataQualitySpec.PostScanActions.BigQueryExport").msgclass
        DataQualityResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.DataQualityResult").msgclass
        DataQualityResult::PostScanActionsResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.DataQualityResult.PostScanActionsResult").msgclass
        DataQualityResult::PostScanActionsResult::BigQueryExportResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.DataQualityResult.PostScanActionsResult.BigQueryExportResult").msgclass
        DataQualityResult::PostScanActionsResult::BigQueryExportResult::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.DataQualityResult.PostScanActionsResult.BigQueryExportResult.State").enummodule
        DataQualityRuleResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.DataQualityRuleResult").msgclass
        DataQualityDimensionResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.DataQualityDimensionResult").msgclass
        DataQualityDimension = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.DataQualityDimension").msgclass
        DataQualityRule = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.DataQualityRule").msgclass
        DataQualityRule::RangeExpectation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.DataQualityRule.RangeExpectation").msgclass
        DataQualityRule::NonNullExpectation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.DataQualityRule.NonNullExpectation").msgclass
        DataQualityRule::SetExpectation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.DataQualityRule.SetExpectation").msgclass
        DataQualityRule::RegexExpectation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.DataQualityRule.RegexExpectation").msgclass
        DataQualityRule::UniquenessExpectation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.DataQualityRule.UniquenessExpectation").msgclass
        DataQualityRule::StatisticRangeExpectation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.DataQualityRule.StatisticRangeExpectation").msgclass
        DataQualityRule::StatisticRangeExpectation::ColumnStatistic = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.DataQualityRule.StatisticRangeExpectation.ColumnStatistic").enummodule
        DataQualityRule::RowConditionExpectation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.DataQualityRule.RowConditionExpectation").msgclass
        DataQualityRule::TableConditionExpectation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.DataQualityRule.TableConditionExpectation").msgclass
        DataQualityColumnResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.DataQualityColumnResult").msgclass
      end
    end
  end
end
