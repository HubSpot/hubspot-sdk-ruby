# typed: strong

module HubSpotSDK
  module Models
    module Webhooks
      class Condition < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Webhooks::Condition,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # A string representing the type of filter. Valid value is 'CRM_OBJECT_PROPERTY'.
        sig { returns(HubSpotSDK::Webhooks::Condition::FilterType::OrSymbol) }
        attr_accessor :filter_type

        # A string indicating the operation to apply for filtering. Valid values include
        # 'EQ', 'N_EQ', 'LT', 'GT', 'LTE', 'GTE', 'CONTAINS', 'STARTS_WITH', 'ENDS_WITH',
        # 'IN', 'NOT_IN', 'IS_EMPTY', and 'IS_NOT_EMPTY'.
        sig { returns(HubSpotSDK::Webhooks::Condition::Operator::OrSymbol) }
        attr_accessor :operator

        # A string specifying the property of the CRM object to be filtered.
        sig { returns(String) }
        attr_accessor :property

        # A string representing the value to compare against the specified property when
        # filtering.
        sig { returns(T.nilable(String)) }
        attr_reader :value

        sig { params(value: String).void }
        attr_writer :value

        # An array of strings, each representing a value to be used in the filtering
        # operation.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :values

        sig { params(values: T::Array[String]).void }
        attr_writer :values

        sig do
          params(
            filter_type: HubSpotSDK::Webhooks::Condition::FilterType::OrSymbol,
            operator: HubSpotSDK::Webhooks::Condition::Operator::OrSymbol,
            property: String,
            value: String,
            values: T::Array[String]
          ).returns(T.attached_class)
        end
        def self.new(
          # A string representing the type of filter. Valid value is 'CRM_OBJECT_PROPERTY'.
          filter_type:,
          # A string indicating the operation to apply for filtering. Valid values include
          # 'EQ', 'N_EQ', 'LT', 'GT', 'LTE', 'GTE', 'CONTAINS', 'STARTS_WITH', 'ENDS_WITH',
          # 'IN', 'NOT_IN', 'IS_EMPTY', and 'IS_NOT_EMPTY'.
          operator:,
          # A string specifying the property of the CRM object to be filtered.
          property:,
          # A string representing the value to compare against the specified property when
          # filtering.
          value: nil,
          # An array of strings, each representing a value to be used in the filtering
          # operation.
          values: nil
        )
        end

        sig do
          override.returns(
            {
              filter_type:
                HubSpotSDK::Webhooks::Condition::FilterType::OrSymbol,
              operator: HubSpotSDK::Webhooks::Condition::Operator::OrSymbol,
              property: String,
              value: String,
              values: T::Array[String]
            }
          )
        end
        def to_hash
        end

        # A string representing the type of filter. Valid value is 'CRM_OBJECT_PROPERTY'.
        module FilterType
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Webhooks::Condition::FilterType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CRM_OBJECT_PROPERTY =
            T.let(
              :CRM_OBJECT_PROPERTY,
              HubSpotSDK::Webhooks::Condition::FilterType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Webhooks::Condition::FilterType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # A string indicating the operation to apply for filtering. Valid values include
        # 'EQ', 'N_EQ', 'LT', 'GT', 'LTE', 'GTE', 'CONTAINS', 'STARTS_WITH', 'ENDS_WITH',
        # 'IN', 'NOT_IN', 'IS_EMPTY', and 'IS_NOT_EMPTY'.
        module Operator
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Webhooks::Condition::Operator)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CONTAINS =
            T.let(
              :CONTAINS,
              HubSpotSDK::Webhooks::Condition::Operator::TaggedSymbol
            )
          ENDS_WITH =
            T.let(
              :ENDS_WITH,
              HubSpotSDK::Webhooks::Condition::Operator::TaggedSymbol
            )
          EQ =
            T.let(:EQ, HubSpotSDK::Webhooks::Condition::Operator::TaggedSymbol)
          GT =
            T.let(:GT, HubSpotSDK::Webhooks::Condition::Operator::TaggedSymbol)
          GTE =
            T.let(:GTE, HubSpotSDK::Webhooks::Condition::Operator::TaggedSymbol)
          IN =
            T.let(:IN, HubSpotSDK::Webhooks::Condition::Operator::TaggedSymbol)
          IS_EMPTY =
            T.let(
              :IS_EMPTY,
              HubSpotSDK::Webhooks::Condition::Operator::TaggedSymbol
            )
          IS_NOT_EMPTY =
            T.let(
              :IS_NOT_EMPTY,
              HubSpotSDK::Webhooks::Condition::Operator::TaggedSymbol
            )
          LT =
            T.let(:LT, HubSpotSDK::Webhooks::Condition::Operator::TaggedSymbol)
          LTE =
            T.let(:LTE, HubSpotSDK::Webhooks::Condition::Operator::TaggedSymbol)
          N_EQ =
            T.let(
              :N_EQ,
              HubSpotSDK::Webhooks::Condition::Operator::TaggedSymbol
            )
          NOT_IN =
            T.let(
              :NOT_IN,
              HubSpotSDK::Webhooks::Condition::Operator::TaggedSymbol
            )
          STARTS_WITH =
            T.let(
              :STARTS_WITH,
              HubSpotSDK::Webhooks::Condition::Operator::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[HubSpotSDK::Webhooks::Condition::Operator::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
