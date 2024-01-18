# frozen_string_literal: true

# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!


module Google
  module Cloud
    module Spanner
      module V1
        # `Type` indicates the type of a Cloud Spanner value, as might be stored in a
        # table cell or returned from an SQL query.
        # @!attribute [rw] code
        #   @return [::Google::Cloud::Spanner::V1::TypeCode]
        #     Required. The {::Google::Cloud::Spanner::V1::TypeCode TypeCode} for this type.
        # @!attribute [rw] array_element_type
        #   @return [::Google::Cloud::Spanner::V1::Type]
        #     If {::Google::Cloud::Spanner::V1::Type#code code} == {::Google::Cloud::Spanner::V1::TypeCode::ARRAY ARRAY}, then `array_element_type`
        #     is the type of the array elements.
        # @!attribute [rw] struct_type
        #   @return [::Google::Cloud::Spanner::V1::StructType]
        #     If {::Google::Cloud::Spanner::V1::Type#code code} == {::Google::Cloud::Spanner::V1::TypeCode::STRUCT STRUCT}, then `struct_type`
        #     provides type information for the struct's fields.
        # @!attribute [rw] type_annotation
        #   @return [::Google::Cloud::Spanner::V1::TypeAnnotationCode]
        #     The {::Google::Cloud::Spanner::V1::TypeAnnotationCode TypeAnnotationCode} that disambiguates SQL type that Spanner will
        #     use to represent values of this type during query processing. This is
        #     necessary for some type codes because a single {::Google::Cloud::Spanner::V1::TypeCode TypeCode} can be mapped
        #     to different SQL types depending on the SQL dialect. {::Google::Cloud::Spanner::V1::Type#type_annotation type_annotation}
        #     typically is not needed to process the content of a value (it doesn't
        #     affect serialization) and clients can ignore it on the read path.
        # @!attribute [rw] proto_type_fqn
        #   @return [::String]
        #     If {::Google::Cloud::Spanner::V1::Type#code code} ==
        #     {::Google::Cloud::Spanner::V1::TypeCode::PROTO PROTO} or
        #     {::Google::Cloud::Spanner::V1::Type#code code} ==
        #     {::Google::Cloud::Spanner::V1::TypeCode::ENUM ENUM}, then `proto_type_fqn` is the fully
        #     qualified name of the proto type representing the proto/enum definition.
        class Type
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # `StructType` defines the fields of a {::Google::Cloud::Spanner::V1::TypeCode::STRUCT STRUCT} type.
        # @!attribute [rw] fields
        #   @return [::Array<::Google::Cloud::Spanner::V1::StructType::Field>]
        #     The list of fields that make up this struct. Order is
        #     significant, because values of this struct type are represented as
        #     lists, where the order of field values matches the order of
        #     fields in the {::Google::Cloud::Spanner::V1::StructType StructType}. In turn, the order of fields
        #     matches the order of columns in a read request, or the order of
        #     fields in the `SELECT` clause of a query.
        class StructType
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Message representing a single field of a struct.
          # @!attribute [rw] name
          #   @return [::String]
          #     The name of the field. For reads, this is the column name. For
          #     SQL queries, it is the column alias (e.g., `"Word"` in the
          #     query `"SELECT 'hello' AS Word"`), or the column name (e.g.,
          #     `"ColName"` in the query `"SELECT ColName FROM Table"`). Some
          #     columns might have an empty name (e.g., `"SELECT
          #     UPPER(ColName)"`). Note that a query result can contain
          #     multiple fields with the same name.
          # @!attribute [rw] type
          #   @return [::Google::Cloud::Spanner::V1::Type]
          #     The type of the field.
          class Field
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # `TypeCode` is used as part of {::Google::Cloud::Spanner::V1::Type Type} to
        # indicate the type of a Cloud Spanner value.
        #
        # Each legal value of a type can be encoded to or decoded from a JSON
        # value, using the encodings described below. All Cloud Spanner values can
        # be `null`, regardless of type; `null`s are always encoded as a JSON
        # `null`.
        module TypeCode
          # Not specified.
          TYPE_CODE_UNSPECIFIED = 0

          # Encoded as JSON `true` or `false`.
          BOOL = 1

          # Encoded as `string`, in decimal format.
          INT64 = 2

          # Encoded as `number`, or the strings `"NaN"`, `"Infinity"`, or
          # `"-Infinity"`.
          FLOAT64 = 3

          # Encoded as `string` in RFC 3339 timestamp format. The time zone
          # must be present, and must be `"Z"`.
          #
          # If the schema has the column option
          # `allow_commit_timestamp=true`, the placeholder string
          # `"spanner.commit_timestamp()"` can be used to instruct the system
          # to insert the commit timestamp associated with the transaction
          # commit.
          TIMESTAMP = 4

          # Encoded as `string` in RFC 3339 date format.
          DATE = 5

          # Encoded as `string`.
          STRING = 6

          # Encoded as a base64-encoded `string`, as described in RFC 4648,
          # section 4.
          BYTES = 7

          # Encoded as `list`, where the list elements are represented
          # according to
          # {::Google::Cloud::Spanner::V1::Type#array_element_type array_element_type}.
          ARRAY = 8

          # Encoded as `list`, where list element `i` is represented according
          # to [struct_type.fields[i]][google.spanner.v1.StructType.fields].
          STRUCT = 9

          # Encoded as `string`, in decimal format or scientific notation format.
          # <br>Decimal format:
          # <br>`[+-]Digits[.[Digits]]` or
          # <br>`[+-][Digits].Digits`
          #
          # Scientific notation:
          # <br>`[+-]Digits[.[Digits]][ExponentIndicator[+-]Digits]` or
          # <br>`[+-][Digits].Digits[ExponentIndicator[+-]Digits]`
          # <br>(ExponentIndicator is `"e"` or `"E"`)
          NUMERIC = 10

          # Encoded as a JSON-formatted `string` as described in RFC 7159. The
          # following rules are applied when parsing JSON input:
          #
          # - Whitespace characters are not preserved.
          # - If a JSON object has duplicate keys, only the first key is preserved.
          # - Members of a JSON object are not guaranteed to have their order
          #   preserved.
          # - JSON array elements will have their order preserved.
          JSON = 11

          # Encoded as a base64-encoded `string`, as described in RFC 4648,
          # section 4.
          PROTO = 13

          # Encoded as `string`, in decimal format.
          ENUM = 14
        end

        # `TypeAnnotationCode` is used as a part of {::Google::Cloud::Spanner::V1::Type Type} to
        # disambiguate SQL types that should be used for a given Cloud Spanner value.
        # Disambiguation is needed because the same Cloud Spanner type can be mapped to
        # different SQL types depending on SQL dialect. TypeAnnotationCode doesn't
        # affect the way value is serialized.
        module TypeAnnotationCode
          # Not specified.
          TYPE_ANNOTATION_CODE_UNSPECIFIED = 0

          # PostgreSQL compatible NUMERIC type. This annotation needs to be applied to
          # {::Google::Cloud::Spanner::V1::Type Type} instances having {::Google::Cloud::Spanner::V1::TypeCode::NUMERIC NUMERIC}
          # type code to specify that values of this type should be treated as
          # PostgreSQL NUMERIC values. Currently this annotation is always needed for
          # {::Google::Cloud::Spanner::V1::TypeCode::NUMERIC NUMERIC} when a client interacts with PostgreSQL-enabled
          # Spanner databases.
          PG_NUMERIC = 2

          # PostgreSQL compatible JSONB type. This annotation needs to be applied to
          # {::Google::Cloud::Spanner::V1::Type Type} instances having {::Google::Cloud::Spanner::V1::TypeCode::JSON JSON}
          # type code to specify that values of this type should be treated as
          # PostgreSQL JSONB values. Currently this annotation is always needed for
          # {::Google::Cloud::Spanner::V1::TypeCode::JSON JSON} when a client interacts with PostgreSQL-enabled
          # Spanner databases.
          PG_JSONB = 3

          # PostgreSQL compatible OID type. This annotation can be used by a client
          # interacting with PostgreSQL-enabled Spanner database to specify that a
          # value should be treated using the semantics of the OID type.
          PG_OID = 4
        end
      end
    end
  end
end
