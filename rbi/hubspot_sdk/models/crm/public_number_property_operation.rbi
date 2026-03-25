# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PublicNumberPropertyOperation < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PublicNumberPropertyOperation,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Indicates whether objects with no value set for the property should be included
        # in the operation.
        sig { returns(T::Boolean) }
        attr_accessor :include_objects_with_no_value_set

        # Specifies the type of operation (NUMBER).
        sig do
          returns(
            HubspotSDK::Crm::PublicNumberPropertyOperation::OperationType::OrSymbol
          )
        end
        attr_accessor :operation_type

        # Defines the operation to be applied in the number property operation
        # (IS_EQUAL_TO, IS_NOT_EQUAL_TO, IS_GREATER_THAN, IS_GREATER_THAN_OR_EQUAL_TO,
        # IS_LESS_THAN, IS_LESS_THAN_OR_EQUAL_TO, HAS_EVER_BEEN_EQUAL_TO,
        # HAS_NEVER_BEEN_EQUAL_TO).
        sig { returns(String) }
        attr_accessor :operator

        # The numeric value to be used in the operation.
        sig { returns(Float) }
        attr_accessor :value

        sig do
          params(
            include_objects_with_no_value_set: T::Boolean,
            operation_type:
              HubspotSDK::Crm::PublicNumberPropertyOperation::OperationType::OrSymbol,
            operator: String,
            value: Float
          ).returns(T.attached_class)
        end
        def self.new(
          # Indicates whether objects with no value set for the property should be included
          # in the operation.
          include_objects_with_no_value_set:,
          # Specifies the type of operation (NUMBER).
          operation_type:,
          # Defines the operation to be applied in the number property operation
          # (IS_EQUAL_TO, IS_NOT_EQUAL_TO, IS_GREATER_THAN, IS_GREATER_THAN_OR_EQUAL_TO,
          # IS_LESS_THAN, IS_LESS_THAN_OR_EQUAL_TO, HAS_EVER_BEEN_EQUAL_TO,
          # HAS_NEVER_BEEN_EQUAL_TO).
          operator:,
          # The numeric value to be used in the operation.
          value:
        )
        end

        sig do
          override.returns(
            {
              include_objects_with_no_value_set: T::Boolean,
              operation_type:
                HubspotSDK::Crm::PublicNumberPropertyOperation::OperationType::OrSymbol,
              operator: String,
              value: Float
            }
          )
        end
        def to_hash
        end

        # Specifies the type of operation (NUMBER).
        module OperationType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Crm::PublicNumberPropertyOperation::OperationType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NUMBER =
            T.let(
              :NUMBER,
              HubspotSDK::Crm::PublicNumberPropertyOperation::OperationType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::PublicNumberPropertyOperation::OperationType::TaggedSymbol
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
