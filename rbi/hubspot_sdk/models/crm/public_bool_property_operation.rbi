# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PublicBoolPropertyOperation < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PublicBoolPropertyOperation,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Indicates whether objects with no value set for the property should be included
        # in the operation.
        sig { returns(T::Boolean) }
        attr_accessor :include_objects_with_no_value_set

        # Specifies the type of operation (BOOL).
        sig do
          returns(
            HubspotSDK::Crm::PublicBoolPropertyOperation::OperationType::OrSymbol
          )
        end
        attr_accessor :operation_type

        # Defines the operation to be applied in the boolean property operation
        # (IS_EQUAL_TO, IS_NOT_EQUAL_TO, HAS_EVER_BEEN_EQUAL_TO, HAS_NEVER_BEEN_EQUAL_TO).
        sig { returns(String) }
        attr_accessor :operator

        # The boolean value to be used in the operation.
        sig { returns(T::Boolean) }
        attr_accessor :value

        sig do
          params(
            include_objects_with_no_value_set: T::Boolean,
            operation_type:
              HubspotSDK::Crm::PublicBoolPropertyOperation::OperationType::OrSymbol,
            operator: String,
            value: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          # Indicates whether objects with no value set for the property should be included
          # in the operation.
          include_objects_with_no_value_set:,
          # Specifies the type of operation (BOOL).
          operation_type:,
          # Defines the operation to be applied in the boolean property operation
          # (IS_EQUAL_TO, IS_NOT_EQUAL_TO, HAS_EVER_BEEN_EQUAL_TO, HAS_NEVER_BEEN_EQUAL_TO).
          operator:,
          # The boolean value to be used in the operation.
          value:
        )
        end

        sig do
          override.returns(
            {
              include_objects_with_no_value_set: T::Boolean,
              operation_type:
                HubspotSDK::Crm::PublicBoolPropertyOperation::OperationType::OrSymbol,
              operator: String,
              value: T::Boolean
            }
          )
        end
        def to_hash
        end

        # Specifies the type of operation (BOOL).
        module OperationType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Crm::PublicBoolPropertyOperation::OperationType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BOOL =
            T.let(
              :BOOL,
              HubspotSDK::Crm::PublicBoolPropertyOperation::OperationType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::PublicBoolPropertyOperation::OperationType::TaggedSymbol
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
