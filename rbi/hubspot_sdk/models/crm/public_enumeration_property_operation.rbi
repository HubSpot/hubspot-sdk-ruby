# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class PublicEnumerationPropertyOperation < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::PublicEnumerationPropertyOperation,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # Indicates whether objects with no value set for the property should be included
        # in the operation.
        sig { returns(T::Boolean) }
        attr_accessor :include_objects_with_no_value_set

        # Specifies the type of operation (ENUMERATION).
        sig do
          returns(
            HubSpotSDK::Crm::PublicEnumerationPropertyOperation::OperationType::OrSymbol
          )
        end
        attr_accessor :operation_type

        # Defines the operation to be applied in the enumeration property operation
        # (IS_ANY_OF, IS_NONE_OF, IS_EXACTLY, IS_NOT_EXACTLY, CONTAINS_ALL,
        # DOES_NOT_CONTAIN_ALL, HAS_EVER_BEEN_ANY_OF, HAS_NEVER_BEEN_ANY_OF,
        # HAS_EVER_BEEN_EXACTLY, HAS_NEVER_BEEN_EXACTLY, HAS_EVER_CONTAINED_ALL,
        # HAS_NEVER_CONTAINED_ALL).
        sig { returns(String) }
        attr_accessor :operator

        sig { returns(T::Array[String]) }
        attr_accessor :values

        sig do
          params(
            include_objects_with_no_value_set: T::Boolean,
            operation_type:
              HubSpotSDK::Crm::PublicEnumerationPropertyOperation::OperationType::OrSymbol,
            operator: String,
            values: T::Array[String]
          ).returns(T.attached_class)
        end
        def self.new(
          # Indicates whether objects with no value set for the property should be included
          # in the operation.
          include_objects_with_no_value_set:,
          # Specifies the type of operation (ENUMERATION).
          operation_type:,
          # Defines the operation to be applied in the enumeration property operation
          # (IS_ANY_OF, IS_NONE_OF, IS_EXACTLY, IS_NOT_EXACTLY, CONTAINS_ALL,
          # DOES_NOT_CONTAIN_ALL, HAS_EVER_BEEN_ANY_OF, HAS_NEVER_BEEN_ANY_OF,
          # HAS_EVER_BEEN_EXACTLY, HAS_NEVER_BEEN_EXACTLY, HAS_EVER_CONTAINED_ALL,
          # HAS_NEVER_CONTAINED_ALL).
          operator:,
          values:
        )
        end

        sig do
          override.returns(
            {
              include_objects_with_no_value_set: T::Boolean,
              operation_type:
                HubSpotSDK::Crm::PublicEnumerationPropertyOperation::OperationType::OrSymbol,
              operator: String,
              values: T::Array[String]
            }
          )
        end
        def to_hash
        end

        # Specifies the type of operation (ENUMERATION).
        module OperationType
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Crm::PublicEnumerationPropertyOperation::OperationType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ENUMERATION =
            T.let(
              :ENUMERATION,
              HubSpotSDK::Crm::PublicEnumerationPropertyOperation::OperationType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::PublicEnumerationPropertyOperation::OperationType::TaggedSymbol
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
