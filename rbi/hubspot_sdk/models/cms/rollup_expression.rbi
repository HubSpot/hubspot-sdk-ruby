# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class RollupExpression < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Cms::RollupExpression,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubSpotSDK::AssociationSpec]) }
        attr_accessor :association_types

        sig do
          returns(
            HubSpotSDK::Cms::RollupExpression::RollupOperator::TaggedSymbol
          )
        end
        attr_accessor :rollup_operator

        sig { returns(String) }
        attr_accessor :source_object_type_id

        sig { returns(String) }
        attr_accessor :source_property_name

        sig { returns(T.nilable(T.anything)) }
        attr_reader :conditional_expression

        sig { params(conditional_expression: T.anything).void }
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
            association_types: T::Array[HubSpotSDK::AssociationSpec::OrHash],
            rollup_operator:
              HubSpotSDK::Cms::RollupExpression::RollupOperator::OrSymbol,
            source_object_type_id: String,
            source_property_name: String,
            conditional_expression: T.anything,
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
              association_types: T::Array[HubSpotSDK::AssociationSpec],
              rollup_operator:
                HubSpotSDK::Cms::RollupExpression::RollupOperator::TaggedSymbol,
              source_object_type_id: String,
              source_property_name: String,
              conditional_expression: T.anything,
              conditional_formula: String,
              empty_rollup_value: String,
              source_compare_by_property_name: String
            }
          )
        end
        def to_hash
        end

        module RollupOperator
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Cms::RollupExpression::RollupOperator)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AVERAGE =
            T.let(
              :AVERAGE,
              HubSpotSDK::Cms::RollupExpression::RollupOperator::TaggedSymbol
            )
          COUNT =
            T.let(
              :COUNT,
              HubSpotSDK::Cms::RollupExpression::RollupOperator::TaggedSymbol
            )
          EARLIEST_VALUE =
            T.let(
              :EARLIEST_VALUE,
              HubSpotSDK::Cms::RollupExpression::RollupOperator::TaggedSymbol
            )
          LATEST_VALUE =
            T.let(
              :LATEST_VALUE,
              HubSpotSDK::Cms::RollupExpression::RollupOperator::TaggedSymbol
            )
          MAX =
            T.let(
              :MAX,
              HubSpotSDK::Cms::RollupExpression::RollupOperator::TaggedSymbol
            )
          MAX_BY =
            T.let(
              :MAX_BY,
              HubSpotSDK::Cms::RollupExpression::RollupOperator::TaggedSymbol
            )
          MIN =
            T.let(
              :MIN,
              HubSpotSDK::Cms::RollupExpression::RollupOperator::TaggedSymbol
            )
          MIN_BY =
            T.let(
              :MIN_BY,
              HubSpotSDK::Cms::RollupExpression::RollupOperator::TaggedSymbol
            )
          REFERENCED_ID_SET =
            T.let(
              :REFERENCED_ID_SET,
              HubSpotSDK::Cms::RollupExpression::RollupOperator::TaggedSymbol
            )
          REFERENCED_STRING_SET =
            T.let(
              :REFERENCED_STRING_SET,
              HubSpotSDK::Cms::RollupExpression::RollupOperator::TaggedSymbol
            )
          REFERENCED_STRING_SET_INTERSECTION =
            T.let(
              :REFERENCED_STRING_SET_INTERSECTION,
              HubSpotSDK::Cms::RollupExpression::RollupOperator::TaggedSymbol
            )
          SUM =
            T.let(
              :SUM,
              HubSpotSDK::Cms::RollupExpression::RollupOperator::TaggedSymbol
            )
          SYNC_MAX_BY =
            T.let(
              :SYNC_MAX_BY,
              HubSpotSDK::Cms::RollupExpression::RollupOperator::TaggedSymbol
            )
          SYNC_MIN_BY =
            T.let(
              :SYNC_MIN_BY,
              HubSpotSDK::Cms::RollupExpression::RollupOperator::TaggedSymbol
            )
          SYNC_VALUE =
            T.let(
              :SYNC_VALUE,
              HubSpotSDK::Cms::RollupExpression::RollupOperator::TaggedSymbol
            )
          UNKNOWN_ROLLUP_OPERATOR =
            T.let(
              :UNKNOWN_ROLLUP_OPERATOR,
              HubSpotSDK::Cms::RollupExpression::RollupOperator::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Cms::RollupExpression::RollupOperator::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
