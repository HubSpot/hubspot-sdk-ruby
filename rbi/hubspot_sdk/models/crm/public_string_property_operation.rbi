# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PublicStringPropertyOperation < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PublicStringPropertyOperation,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Indicates whether objects with no value set for the property should be included
        # in the operation.
        sig { returns(T::Boolean) }
        attr_accessor :include_objects_with_no_value_set

        # Specifies the type of operation (STRING).
        sig do
          returns(
            HubspotSDK::Crm::PublicStringPropertyOperation::OperationType::OrSymbol
          )
        end
        attr_accessor :operation_type

        # Defines the operation to be applied in the string property operation
        # ()IS_EQUAL_TO, IS_NOT_EQUAL_TO, CONTAINS, DOES_NOT_CONTAIN, STARTS_WITH,
        # ENDS_WITH, HAS_EVER_BEEN_EQUAL_TO, HAS_NEVER_BEEN_EQUAL_TO, HAS_EVER_CONTAINED,
        # HAS_NEVER_CONTAINED).
        sig { returns(String) }
        attr_accessor :operator

        # The string value to be used in the operation.
        sig { returns(String) }
        attr_accessor :value

        sig do
          params(
            include_objects_with_no_value_set: T::Boolean,
            operation_type:
              HubspotSDK::Crm::PublicStringPropertyOperation::OperationType::OrSymbol,
            operator: String,
            value: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Indicates whether objects with no value set for the property should be included
          # in the operation.
          include_objects_with_no_value_set:,
          # Specifies the type of operation (STRING).
          operation_type:,
          # Defines the operation to be applied in the string property operation
          # ()IS_EQUAL_TO, IS_NOT_EQUAL_TO, CONTAINS, DOES_NOT_CONTAIN, STARTS_WITH,
          # ENDS_WITH, HAS_EVER_BEEN_EQUAL_TO, HAS_NEVER_BEEN_EQUAL_TO, HAS_EVER_CONTAINED,
          # HAS_NEVER_CONTAINED).
          operator:,
          # The string value to be used in the operation.
          value:
        )
        end

        sig do
          override.returns(
            {
              include_objects_with_no_value_set: T::Boolean,
              operation_type:
                HubspotSDK::Crm::PublicStringPropertyOperation::OperationType::OrSymbol,
              operator: String,
              value: String
            }
          )
        end
        def to_hash
        end

        # Specifies the type of operation (STRING).
        module OperationType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Crm::PublicStringPropertyOperation::OperationType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          STRING =
            T.let(
              :STRING,
              HubspotSDK::Crm::PublicStringPropertyOperation::OperationType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::PublicStringPropertyOperation::OperationType::TaggedSymbol
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
