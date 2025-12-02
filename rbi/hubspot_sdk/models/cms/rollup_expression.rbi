# typed: strong

module HubspotSDK
  module Models
    module Cms
      class RollupExpression < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::RollupExpression,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubspotSDK::AssociationSpec]) }
        attr_accessor :association_types

        sig { returns(String) }
        attr_accessor :rollup_operator

        sig { returns(String) }
        attr_accessor :source_object_type_id

        sig { returns(String) }
        attr_accessor :source_property_name

        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_reader :conditional_expression

        sig { params(conditional_expression: T::Hash[Symbol, T.anything]).void }
        attr_writer :conditional_expression

        sig { returns(T.nilable(String)) }
        attr_reader :conditional_formula

        sig { params(conditional_formula: String).void }
        attr_writer :conditional_formula

        sig { returns(T.nilable(String)) }
        attr_reader :empty_rollup_value

        sig { params(empty_rollup_value: String).void }
        attr_writer :empty_rollup_value

        sig { returns(T.nilable(String)) }
        attr_reader :source_compare_by_property_name

        sig { params(source_compare_by_property_name: String).void }
        attr_writer :source_compare_by_property_name

        sig do
          params(
            association_types: T::Array[HubspotSDK::AssociationSpec::OrHash],
            rollup_operator: String,
            source_object_type_id: String,
            source_property_name: String,
            conditional_expression: T::Hash[Symbol, T.anything],
            conditional_formula: String,
            empty_rollup_value: String,
            source_compare_by_property_name: String
          ).returns(T.attached_class)
        end
        def self.new(
          association_types:,
          rollup_operator:,
          source_object_type_id:,
          source_property_name:,
          conditional_expression: nil,
          conditional_formula: nil,
          empty_rollup_value: nil,
          source_compare_by_property_name: nil
        )
        end

        sig do
          override.returns(
            {
              association_types: T::Array[HubspotSDK::AssociationSpec],
              rollup_operator: String,
              source_object_type_id: String,
              source_property_name: String,
              conditional_expression: T::Hash[Symbol, T.anything],
              conditional_formula: String,
              empty_rollup_value: String,
              source_compare_by_property_name: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
