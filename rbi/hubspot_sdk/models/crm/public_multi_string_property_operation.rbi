# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PublicMultiStringPropertyOperation < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PublicMultiStringPropertyOperation,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Indicates whether objects with no value set for the property should be included
        # in the operation.
        sig { returns(T::Boolean) }
        attr_accessor :include_objects_with_no_value_set

        # Specifies the type of operation (MULTISTRING).
        sig do
          returns(
            HubspotSDK::Crm::PublicMultiStringPropertyOperation::OperationType::OrSymbol
          )
        end
        attr_accessor :operation_type

        # Defines the operation to be applied in the multi-string property operation
        # (IS_EQUAL_TO, IS_NOT_EQUAL_TO, CONTAINS, CONTAINS_EXACTLY, DOES_NOT_CONTAIN,
        # DOES_NOT_CONTAIN_EXACTLY, STARTS_WITH, ENDS_WITH).
        sig { returns(String) }
        attr_accessor :operator

        sig { returns(T::Array[String]) }
        attr_accessor :values

        sig do
          params(
            include_objects_with_no_value_set: T::Boolean,
            operation_type:
              HubspotSDK::Crm::PublicMultiStringPropertyOperation::OperationType::OrSymbol,
            operator: String,
            values: T::Array[String]
          ).returns(T.attached_class)
        end
        def self.new(
          # Indicates whether objects with no value set for the property should be included
          # in the operation.
          include_objects_with_no_value_set:,
          # Specifies the type of operation (MULTISTRING).
          operation_type:,
          # Defines the operation to be applied in the multi-string property operation
          # (IS_EQUAL_TO, IS_NOT_EQUAL_TO, CONTAINS, CONTAINS_EXACTLY, DOES_NOT_CONTAIN,
          # DOES_NOT_CONTAIN_EXACTLY, STARTS_WITH, ENDS_WITH).
          operator:,
          values:
        )
        end

        sig do
          override.returns(
            {
              include_objects_with_no_value_set: T::Boolean,
              operation_type:
                HubspotSDK::Crm::PublicMultiStringPropertyOperation::OperationType::OrSymbol,
              operator: String,
              values: T::Array[String]
            }
          )
        end
        def to_hash
        end

        # Specifies the type of operation (MULTISTRING).
        module OperationType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Crm::PublicMultiStringPropertyOperation::OperationType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MULTISTRING =
            T.let(
              :MULTISTRING,
              HubspotSDK::Crm::PublicMultiStringPropertyOperation::OperationType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::PublicMultiStringPropertyOperation::OperationType::TaggedSymbol
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
