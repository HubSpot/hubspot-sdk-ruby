# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PublicComparativeDatePropertyOperation < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PublicComparativeDatePropertyOperation,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The name of the property to compare against in the operation.
        sig { returns(String) }
        attr_accessor :comparison_property_name

        # Indicates whether objects with no value set for the property should be included
        # in the operation.
        sig { returns(T::Boolean) }
        attr_accessor :include_objects_with_no_value_set

        # The type of operation (COMPARATIVE_DATE).
        sig do
          returns(
            HubspotSDK::Crm::PublicComparativeDatePropertyOperation::OperationType::OrSymbol
          )
        end
        attr_accessor :operation_type

        # Defines the operation to be applied in the comparative date property operation
        # (IS_BEFORE, IS_AFTER).
        sig { returns(String) }
        attr_accessor :operator

        # The default value used for comparison if the actual comparison property value is
        # not set.
        sig { returns(T.nilable(String)) }
        attr_reader :default_comparison_value

        sig { params(default_comparison_value: String).void }
        attr_writer :default_comparison_value

        sig do
          params(
            comparison_property_name: String,
            include_objects_with_no_value_set: T::Boolean,
            operation_type:
              HubspotSDK::Crm::PublicComparativeDatePropertyOperation::OperationType::OrSymbol,
            operator: String,
            default_comparison_value: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The name of the property to compare against in the operation.
          comparison_property_name:,
          # Indicates whether objects with no value set for the property should be included
          # in the operation.
          include_objects_with_no_value_set:,
          # The type of operation (COMPARATIVE_DATE).
          operation_type:,
          # Defines the operation to be applied in the comparative date property operation
          # (IS_BEFORE, IS_AFTER).
          operator:,
          # The default value used for comparison if the actual comparison property value is
          # not set.
          default_comparison_value: nil
        )
        end

        sig do
          override.returns(
            {
              comparison_property_name: String,
              include_objects_with_no_value_set: T::Boolean,
              operation_type:
                HubspotSDK::Crm::PublicComparativeDatePropertyOperation::OperationType::OrSymbol,
              operator: String,
              default_comparison_value: String
            }
          )
        end
        def to_hash
        end

        # The type of operation (COMPARATIVE_DATE).
        module OperationType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Crm::PublicComparativeDatePropertyOperation::OperationType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          COMPARATIVE_DATE =
            T.let(
              :COMPARATIVE_DATE,
              HubspotSDK::Crm::PublicComparativeDatePropertyOperation::OperationType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::PublicComparativeDatePropertyOperation::OperationType::TaggedSymbol
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
