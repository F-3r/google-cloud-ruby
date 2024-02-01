# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/dataplex/v1/data_taxonomy.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/dataplex/v1/security_pb'
require 'google/cloud/dataplex/v1/service_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n,google/cloud/dataplex/v1/data_taxonomy.proto\x12\x18google.cloud.dataplex.v1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\'google/cloud/dataplex/v1/security.proto\x1a&google/cloud/dataplex/v1/service.proto\x1a#google/longrunning/operations.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a google/protobuf/field_mask.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xba\x04\n\x0c\x44\x61taTaxonomy\x12;\n\x04name\x18\x01 \x01(\tB-\xe2\x41\x01\x03\xfa\x41&\n$dataplex.googleapis.com/DataTaxonomy\x12\x11\n\x03uid\x18\x02 \x01(\tB\x04\xe2\x41\x01\x03\x12\x35\n\x0b\x63reate_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x04\xe2\x41\x01\x03\x12\x35\n\x0bupdate_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x04\xe2\x41\x01\x03\x12\x19\n\x0b\x64\x65scription\x18\x05 \x01(\tB\x04\xe2\x41\x01\x01\x12\x1a\n\x0c\x64isplay_name\x18\x06 \x01(\tB\x04\xe2\x41\x01\x01\x12H\n\x06labels\x18\x08 \x03(\x0b\x32\x32.google.cloud.dataplex.v1.DataTaxonomy.LabelsEntryB\x04\xe2\x41\x01\x01\x12\x1d\n\x0f\x61ttribute_count\x18\t \x01(\x05\x42\x04\xe2\x41\x01\x03\x12\x0c\n\x04\x65tag\x18\n \x01(\t\x12\x19\n\x0b\x63lass_count\x18\x0b \x01(\x05\x42\x04\xe2\x41\x01\x03\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01:t\xea\x41q\n$dataplex.googleapis.com/DataTaxonomy\x12Iprojects/{project}/locations/{location}/dataTaxonomies/{data_taxonomy_id}\"\x9f\x06\n\rDataAttribute\x12<\n\x04name\x18\x01 \x01(\tB.\xe2\x41\x01\x03\xfa\x41\'\n%dataplex.googleapis.com/DataAttribute\x12\x11\n\x03uid\x18\x02 \x01(\tB\x04\xe2\x41\x01\x03\x12\x35\n\x0b\x63reate_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x04\xe2\x41\x01\x03\x12\x35\n\x0bupdate_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x04\xe2\x41\x01\x03\x12\x19\n\x0b\x64\x65scription\x18\x05 \x01(\tB\x04\xe2\x41\x01\x01\x12\x1a\n\x0c\x64isplay_name\x18\x06 \x01(\tB\x04\xe2\x41\x01\x01\x12I\n\x06labels\x18\x07 \x03(\x0b\x32\x33.google.cloud.dataplex.v1.DataAttribute.LabelsEntryB\x04\xe2\x41\x01\x01\x12\x41\n\tparent_id\x18\x08 \x01(\tB.\xe2\x41\x01\x01\xfa\x41\'\n%dataplex.googleapis.com/DataAttribute\x12\x1d\n\x0f\x61ttribute_count\x18\t \x01(\x05\x42\x04\xe2\x41\x01\x03\x12\x0c\n\x04\x65tag\x18\n \x01(\t\x12P\n\x14resource_access_spec\x18\x64 \x01(\x0b\x32,.google.cloud.dataplex.v1.ResourceAccessSpecB\x04\xe2\x41\x01\x01\x12H\n\x10\x64\x61ta_access_spec\x18\x65 \x01(\x0b\x32(.google.cloud.dataplex.v1.DataAccessSpecB\x04\xe2\x41\x01\x01\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01:\x91\x01\xea\x41\x8d\x01\n%dataplex.googleapis.com/DataAttribute\x12\x64projects/{project}/locations/{location}/dataTaxonomies/{dataTaxonomy}/attributes/{data_attribute_id}\"\xd1\x06\n\x14\x44\x61taAttributeBinding\x12\x43\n\x04name\x18\x01 \x01(\tB5\xe2\x41\x01\x03\xfa\x41.\n,dataplex.googleapis.com/DataAttributeBinding\x12\x11\n\x03uid\x18\x02 \x01(\tB\x04\xe2\x41\x01\x03\x12\x35\n\x0b\x63reate_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x04\xe2\x41\x01\x03\x12\x35\n\x0bupdate_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x04\xe2\x41\x01\x03\x12\x19\n\x0b\x64\x65scription\x18\x05 \x01(\tB\x04\xe2\x41\x01\x01\x12\x1a\n\x0c\x64isplay_name\x18\x06 \x01(\tB\x04\xe2\x41\x01\x01\x12P\n\x06labels\x18\x07 \x03(\x0b\x32:.google.cloud.dataplex.v1.DataAttributeBinding.LabelsEntryB\x04\xe2\x41\x01\x01\x12\x0c\n\x04\x65tag\x18\x08 \x01(\t\x12\x19\n\x08resource\x18\x64 \x01(\tB\x05\xe2\x41\x02\x01\x05H\x00\x12\x42\n\nattributes\x18n \x03(\tB.\xe2\x41\x01\x01\xfa\x41\'\n%dataplex.googleapis.com/DataAttribute\x12H\n\x05paths\x18x \x03(\x0b\x32\x33.google.cloud.dataplex.v1.DataAttributeBinding.PathB\x04\xe2\x41\x01\x01\x1a^\n\x04Path\x12\x12\n\x04name\x18\x01 \x01(\tB\x04\xe2\x41\x01\x02\x12\x42\n\nattributes\x18\x02 \x03(\tB.\xe2\x41\x01\x01\xfa\x41\'\n%dataplex.googleapis.com/DataAttribute\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01:\x8d\x01\xea\x41\x89\x01\n,dataplex.googleapis.com/DataAttributeBinding\x12Yprojects/{project}/locations/{location}/dataAttributeBindings/{data_attribute_binding_id}B\x14\n\x12resource_reference\"\xd9\x01\n\x19\x43reateDataTaxonomyRequest\x12:\n\x06parent\x18\x01 \x01(\tB*\xe2\x41\x01\x02\xfa\x41#\n!locations.googleapis.com/Location\x12\x1e\n\x10\x64\x61ta_taxonomy_id\x18\x02 \x01(\tB\x04\xe2\x41\x01\x02\x12\x43\n\rdata_taxonomy\x18\x03 \x01(\x0b\x32&.google.cloud.dataplex.v1.DataTaxonomyB\x04\xe2\x41\x01\x02\x12\x1b\n\rvalidate_only\x18\x04 \x01(\x08\x42\x04\xe2\x41\x01\x01\"\xb4\x01\n\x19UpdateDataTaxonomyRequest\x12\x35\n\x0bupdate_mask\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x04\xe2\x41\x01\x02\x12\x43\n\rdata_taxonomy\x18\x02 \x01(\x0b\x32&.google.cloud.dataplex.v1.DataTaxonomyB\x04\xe2\x41\x01\x02\x12\x1b\n\rvalidate_only\x18\x03 \x01(\x08\x42\x04\xe2\x41\x01\x01\"U\n\x16GetDataTaxonomyRequest\x12;\n\x04name\x18\x01 \x01(\tB-\xe2\x41\x01\x02\xfa\x41&\n$dataplex.googleapis.com/DataTaxonomy\"\xb8\x01\n\x19ListDataTaxonomiesRequest\x12:\n\x06parent\x18\x01 \x01(\tB*\xe2\x41\x01\x02\xfa\x41#\n!locations.googleapis.com/Location\x12\x17\n\tpage_size\x18\x02 \x01(\x05\x42\x04\xe2\x41\x01\x01\x12\x18\n\npage_token\x18\x03 \x01(\tB\x04\xe2\x41\x01\x01\x12\x14\n\x06\x66ilter\x18\x04 \x01(\tB\x04\xe2\x41\x01\x01\x12\x16\n\x08order_by\x18\x05 \x01(\tB\x04\xe2\x41\x01\x01\"\x95\x01\n\x1aListDataTaxonomiesResponse\x12?\n\x0f\x64\x61ta_taxonomies\x18\x01 \x03(\x0b\x32&.google.cloud.dataplex.v1.DataTaxonomy\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x1d\n\x15unreachable_locations\x18\x03 \x03(\t\"l\n\x19\x44\x65leteDataTaxonomyRequest\x12;\n\x04name\x18\x01 \x01(\tB-\xe2\x41\x01\x02\xfa\x41&\n$dataplex.googleapis.com/DataTaxonomy\x12\x12\n\x04\x65tag\x18\x02 \x01(\tB\x04\xe2\x41\x01\x01\"\xe0\x01\n\x1a\x43reateDataAttributeRequest\x12=\n\x06parent\x18\x01 \x01(\tB-\xe2\x41\x01\x02\xfa\x41&\n$dataplex.googleapis.com/DataTaxonomy\x12\x1f\n\x11\x64\x61ta_attribute_id\x18\x02 \x01(\tB\x04\xe2\x41\x01\x02\x12\x45\n\x0e\x64\x61ta_attribute\x18\x03 \x01(\x0b\x32\'.google.cloud.dataplex.v1.DataAttributeB\x04\xe2\x41\x01\x02\x12\x1b\n\rvalidate_only\x18\x04 \x01(\x08\x42\x04\xe2\x41\x01\x01\"\xb7\x01\n\x1aUpdateDataAttributeRequest\x12\x35\n\x0bupdate_mask\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x04\xe2\x41\x01\x02\x12\x45\n\x0e\x64\x61ta_attribute\x18\x02 \x01(\x0b\x32\'.google.cloud.dataplex.v1.DataAttributeB\x04\xe2\x41\x01\x02\x12\x1b\n\rvalidate_only\x18\x03 \x01(\x08\x42\x04\xe2\x41\x01\x01\"W\n\x17GetDataAttributeRequest\x12<\n\x04name\x18\x01 \x01(\tB.\xe2\x41\x01\x02\xfa\x41\'\n%dataplex.googleapis.com/DataAttribute\"\xbb\x01\n\x19ListDataAttributesRequest\x12=\n\x06parent\x18\x01 \x01(\tB-\xe2\x41\x01\x02\xfa\x41&\n$dataplex.googleapis.com/DataTaxonomy\x12\x17\n\tpage_size\x18\x02 \x01(\x05\x42\x04\xe2\x41\x01\x01\x12\x18\n\npage_token\x18\x03 \x01(\tB\x04\xe2\x41\x01\x01\x12\x14\n\x06\x66ilter\x18\x04 \x01(\tB\x04\xe2\x41\x01\x01\x12\x16\n\x08order_by\x18\x05 \x01(\tB\x04\xe2\x41\x01\x01\"\x96\x01\n\x1aListDataAttributesResponse\x12@\n\x0f\x64\x61ta_attributes\x18\x01 \x03(\x0b\x32\'.google.cloud.dataplex.v1.DataAttribute\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x1d\n\x15unreachable_locations\x18\x03 \x03(\t\"n\n\x1a\x44\x65leteDataAttributeRequest\x12<\n\x04name\x18\x01 \x01(\tB.\xe2\x41\x01\x02\xfa\x41\'\n%dataplex.googleapis.com/DataAttribute\x12\x12\n\x04\x65tag\x18\x02 \x01(\tB\x04\xe2\x41\x01\x01\"\xfb\x01\n!CreateDataAttributeBindingRequest\x12:\n\x06parent\x18\x01 \x01(\tB*\xe2\x41\x01\x02\xfa\x41#\n!locations.googleapis.com/Location\x12\'\n\x19\x64\x61ta_attribute_binding_id\x18\x02 \x01(\tB\x04\xe2\x41\x01\x02\x12T\n\x16\x64\x61ta_attribute_binding\x18\x03 \x01(\x0b\x32..google.cloud.dataplex.v1.DataAttributeBindingB\x04\xe2\x41\x01\x02\x12\x1b\n\rvalidate_only\x18\x04 \x01(\x08\x42\x04\xe2\x41\x01\x01\"\xcd\x01\n!UpdateDataAttributeBindingRequest\x12\x35\n\x0bupdate_mask\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x04\xe2\x41\x01\x02\x12T\n\x16\x64\x61ta_attribute_binding\x18\x02 \x01(\x0b\x32..google.cloud.dataplex.v1.DataAttributeBindingB\x04\xe2\x41\x01\x02\x12\x1b\n\rvalidate_only\x18\x03 \x01(\x08\x42\x04\xe2\x41\x01\x01\"e\n\x1eGetDataAttributeBindingRequest\x12\x43\n\x04name\x18\x01 \x01(\tB5\xe2\x41\x01\x02\xfa\x41.\n,dataplex.googleapis.com/DataAttributeBinding\"\xbf\x01\n ListDataAttributeBindingsRequest\x12:\n\x06parent\x18\x01 \x01(\tB*\xe2\x41\x01\x02\xfa\x41#\n!locations.googleapis.com/Location\x12\x17\n\tpage_size\x18\x02 \x01(\x05\x42\x04\xe2\x41\x01\x01\x12\x18\n\npage_token\x18\x03 \x01(\tB\x04\xe2\x41\x01\x01\x12\x14\n\x06\x66ilter\x18\x04 \x01(\tB\x04\xe2\x41\x01\x01\x12\x16\n\x08order_by\x18\x05 \x01(\tB\x04\xe2\x41\x01\x01\"\xac\x01\n!ListDataAttributeBindingsResponse\x12O\n\x17\x64\x61ta_attribute_bindings\x18\x01 \x03(\x0b\x32..google.cloud.dataplex.v1.DataAttributeBinding\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x1d\n\x15unreachable_locations\x18\x03 \x03(\t\"|\n!DeleteDataAttributeBindingRequest\x12\x43\n\x04name\x18\x01 \x01(\tB5\xe2\x41\x01\x02\xfa\x41.\n,dataplex.googleapis.com/DataAttributeBinding\x12\x12\n\x04\x65tag\x18\x02 \x01(\tB\x04\xe2\x41\x01\x02\x32\x8b\x1d\n\x13\x44\x61taTaxonomyService\x12\x80\x02\n\x12\x43reateDataTaxonomy\x12\x33.google.cloud.dataplex.v1.CreateDataTaxonomyRequest\x1a\x1d.google.longrunning.Operation\"\x95\x01\xca\x41!\n\x0c\x44\x61taTaxonomy\x12\x11OperationMetadata\xda\x41%parent,data_taxonomy,data_taxonomy_id\x82\xd3\xe4\x93\x02\x43\"2/v1/{parent=projects/*/locations/*}/dataTaxonomies:\rdata_taxonomy\x12\x82\x02\n\x12UpdateDataTaxonomy\x12\x33.google.cloud.dataplex.v1.UpdateDataTaxonomyRequest\x1a\x1d.google.longrunning.Operation\"\x97\x01\xca\x41!\n\x0c\x44\x61taTaxonomy\x12\x11OperationMetadata\xda\x41\x19\x64\x61ta_taxonomy,update_mask\x82\xd3\xe4\x93\x02Q2@/v1/{data_taxonomy.name=projects/*/locations/*/dataTaxonomies/*}:\rdata_taxonomy\x12\xd8\x01\n\x12\x44\x65leteDataTaxonomy\x12\x33.google.cloud.dataplex.v1.DeleteDataTaxonomyRequest\x1a\x1d.google.longrunning.Operation\"n\xca\x41*\n\x15google.protobuf.Empty\x12\x11OperationMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02\x34*2/v1/{name=projects/*/locations/*/dataTaxonomies/*}\x12\xc4\x01\n\x12ListDataTaxonomies\x12\x33.google.cloud.dataplex.v1.ListDataTaxonomiesRequest\x1a\x34.google.cloud.dataplex.v1.ListDataTaxonomiesResponse\"C\xda\x41\x06parent\x82\xd3\xe4\x93\x02\x34\x12\x32/v1/{parent=projects/*/locations/*}/dataTaxonomies\x12\xae\x01\n\x0fGetDataTaxonomy\x12\x30.google.cloud.dataplex.v1.GetDataTaxonomyRequest\x1a&.google.cloud.dataplex.v1.DataTaxonomy\"A\xda\x41\x04name\x82\xd3\xe4\x93\x02\x34\x12\x32/v1/{name=projects/*/locations/*/dataTaxonomies/*}\x12\xba\x02\n\x1a\x43reateDataAttributeBinding\x12;.google.cloud.dataplex.v1.CreateDataAttributeBindingRequest\x1a\x1d.google.longrunning.Operation\"\xbf\x01\xca\x41)\n\x14\x44\x61taAttributeBinding\x12\x11OperationMetadata\xda\x41\x37parent,data_attribute_binding,data_attribute_binding_id\x82\xd3\xe4\x93\x02S\"9/v1/{parent=projects/*/locations/*}/dataAttributeBindings:\x16\x64\x61ta_attribute_binding\x12\xbc\x02\n\x1aUpdateDataAttributeBinding\x12;.google.cloud.dataplex.v1.UpdateDataAttributeBindingRequest\x1a\x1d.google.longrunning.Operation\"\xc1\x01\xca\x41)\n\x14\x44\x61taAttributeBinding\x12\x11OperationMetadata\xda\x41\"data_attribute_binding,update_mask\x82\xd3\xe4\x93\x02j2P/v1/{data_attribute_binding.name=projects/*/locations/*/dataAttributeBindings/*}:\x16\x64\x61ta_attribute_binding\x12\xef\x01\n\x1a\x44\x65leteDataAttributeBinding\x12;.google.cloud.dataplex.v1.DeleteDataAttributeBindingRequest\x1a\x1d.google.longrunning.Operation\"u\xca\x41*\n\x15google.protobuf.Empty\x12\x11OperationMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02;*9/v1/{name=projects/*/locations/*/dataAttributeBindings/*}\x12\xe0\x01\n\x19ListDataAttributeBindings\x12:.google.cloud.dataplex.v1.ListDataAttributeBindingsRequest\x1a;.google.cloud.dataplex.v1.ListDataAttributeBindingsResponse\"J\xda\x41\x06parent\x82\xd3\xe4\x93\x02;\x12\x39/v1/{parent=projects/*/locations/*}/dataAttributeBindings\x12\xcd\x01\n\x17GetDataAttributeBinding\x12\x38.google.cloud.dataplex.v1.GetDataAttributeBindingRequest\x1a..google.cloud.dataplex.v1.DataAttributeBinding\"H\xda\x41\x04name\x82\xd3\xe4\x93\x02;\x12\x39/v1/{name=projects/*/locations/*/dataAttributeBindings/*}\x12\x93\x02\n\x13\x43reateDataAttribute\x12\x34.google.cloud.dataplex.v1.CreateDataAttributeRequest\x1a\x1d.google.longrunning.Operation\"\xa6\x01\xca\x41\"\n\rDataAttribute\x12\x11OperationMetadata\xda\x41\'parent,data_attribute,data_attribute_id\x82\xd3\xe4\x93\x02Q\"?/v1/{parent=projects/*/locations/*/dataTaxonomies/*}/attributes:\x0e\x64\x61ta_attribute\x12\x95\x02\n\x13UpdateDataAttribute\x12\x34.google.cloud.dataplex.v1.UpdateDataAttributeRequest\x1a\x1d.google.longrunning.Operation\"\xa8\x01\xca\x41\"\n\rDataAttribute\x12\x11OperationMetadata\xda\x41\x1a\x64\x61ta_attribute,update_mask\x82\xd3\xe4\x93\x02`2N/v1/{data_attribute.name=projects/*/locations/*/dataTaxonomies/*/attributes/*}:\x0e\x64\x61ta_attribute\x12\xe7\x01\n\x13\x44\x65leteDataAttribute\x12\x34.google.cloud.dataplex.v1.DeleteDataAttributeRequest\x1a\x1d.google.longrunning.Operation\"{\xca\x41*\n\x15google.protobuf.Empty\x12\x11OperationMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02\x41*?/v1/{name=projects/*/locations/*/dataTaxonomies/*/attributes/*}\x12\xd1\x01\n\x12ListDataAttributes\x12\x33.google.cloud.dataplex.v1.ListDataAttributesRequest\x1a\x34.google.cloud.dataplex.v1.ListDataAttributesResponse\"P\xda\x41\x06parent\x82\xd3\xe4\x93\x02\x41\x12?/v1/{parent=projects/*/locations/*/dataTaxonomies/*}/attributes\x12\xbe\x01\n\x10GetDataAttribute\x12\x31.google.cloud.dataplex.v1.GetDataAttributeRequest\x1a\'.google.cloud.dataplex.v1.DataAttribute\"N\xda\x41\x04name\x82\xd3\xe4\x93\x02\x41\x12?/v1/{name=projects/*/locations/*/dataTaxonomies/*/attributes/*}\x1aK\xca\x41\x17\x64\x61taplex.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformBm\n\x1c\x63om.google.cloud.dataplex.v1B\x11\x44\x61taTaxonomyProtoP\x01Z8cloud.google.com/go/dataplex/apiv1/dataplexpb;dataplexpbb\x06proto3"

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
    ["google.cloud.dataplex.v1.ResourceAccessSpec", "google/cloud/dataplex/v1/security.proto"],
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
    module Dataplex
      module V1
        DataTaxonomy = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.DataTaxonomy").msgclass
        DataAttribute = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.DataAttribute").msgclass
        DataAttributeBinding = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.DataAttributeBinding").msgclass
        DataAttributeBinding::Path = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.DataAttributeBinding.Path").msgclass
        CreateDataTaxonomyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.CreateDataTaxonomyRequest").msgclass
        UpdateDataTaxonomyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.UpdateDataTaxonomyRequest").msgclass
        GetDataTaxonomyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.GetDataTaxonomyRequest").msgclass
        ListDataTaxonomiesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.ListDataTaxonomiesRequest").msgclass
        ListDataTaxonomiesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.ListDataTaxonomiesResponse").msgclass
        DeleteDataTaxonomyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.DeleteDataTaxonomyRequest").msgclass
        CreateDataAttributeRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.CreateDataAttributeRequest").msgclass
        UpdateDataAttributeRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.UpdateDataAttributeRequest").msgclass
        GetDataAttributeRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.GetDataAttributeRequest").msgclass
        ListDataAttributesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.ListDataAttributesRequest").msgclass
        ListDataAttributesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.ListDataAttributesResponse").msgclass
        DeleteDataAttributeRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.DeleteDataAttributeRequest").msgclass
        CreateDataAttributeBindingRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.CreateDataAttributeBindingRequest").msgclass
        UpdateDataAttributeBindingRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.UpdateDataAttributeBindingRequest").msgclass
        GetDataAttributeBindingRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.GetDataAttributeBindingRequest").msgclass
        ListDataAttributeBindingsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.ListDataAttributeBindingsRequest").msgclass
        ListDataAttributeBindingsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.ListDataAttributeBindingsResponse").msgclass
        DeleteDataAttributeBindingRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.DeleteDataAttributeBindingRequest").msgclass
      end
    end
  end
end
