# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class PublicComparativePropertyUpdatedOperation < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::PublicComparativePropertyUpdatedOperation,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The name of the property to compare against in the operation.
        sig { returns(String) }
        attr_accessor :comparison_property_name

        # Indicates whether objects with no value set for the property should be included
        # in the operation.
        sig { returns(T::Boolean) }
        attr_accessor :include_objects_with_no_value_set

        # Specifies the type of operation (COMPARATIVE_PROPERTY_UPDATED).
        sig do
          returns(
            HubSpotSDK::Crm::PublicComparativePropertyUpdatedOperation::OperationType::OrSymbol
          )
        end
        attr_accessor :operation_type

        # Defines the operation to be applied, such as comparison operators (IS_BEFORE,
        # IS_AFTER).
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
              HubSpotSDK::Crm::PublicComparativePropertyUpdatedOperation::OperationType::OrSymbol,
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
          # Specifies the type of operation (COMPARATIVE_PROPERTY_UPDATED).
          operation_type:,
          # Defines the operation to be applied, such as comparison operators (IS_BEFORE,
          # IS_AFTER).
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
                HubSpotSDK::Crm::PublicComparativePropertyUpdatedOperation::OperationType::OrSymbol,
              operator: String,
              default_comparison_value: String
            }
          )
        end
        def to_hash
        end

        # Specifies the type of operation (COMPARATIVE_PROPERTY_UPDATED).
        module OperationType
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Crm::PublicComparativePropertyUpdatedOperation::OperationType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          COMPARATIVE_PROPERTY_UPDATED =
            T.let(
              :COMPARATIVE_PROPERTY_UPDATED,
              HubSpotSDK::Crm::PublicComparativePropertyUpdatedOperation::OperationType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::PublicComparativePropertyUpdatedOperation::OperationType::TaggedSymbol
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
