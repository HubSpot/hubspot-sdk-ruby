# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class PublicAllPropertyTypesOperation < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::PublicAllPropertyTypesOperation,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # Indication of whether objects with no value should be included
        sig { returns(T::Boolean) }
        attr_accessor :include_objects_with_no_value_set

        # Type of operation (ALL_PROPERTY)
        sig do
          returns(
            HubSpotSDK::Crm::PublicAllPropertyTypesOperation::OperationType::OrSymbol
          )
        end
        attr_accessor :operation_type

        # Operator to be applied (IS_KNOWN, IS_UNKNOWN)
        sig { returns(String) }
        attr_accessor :operator

        sig do
          params(
            include_objects_with_no_value_set: T::Boolean,
            operation_type:
              HubSpotSDK::Crm::PublicAllPropertyTypesOperation::OperationType::OrSymbol,
            operator: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Indication of whether objects with no value should be included
          include_objects_with_no_value_set:,
          # Type of operation (ALL_PROPERTY)
          operation_type:,
          # Operator to be applied (IS_KNOWN, IS_UNKNOWN)
          operator:
        )
        end

        sig do
          override.returns(
            {
              include_objects_with_no_value_set: T::Boolean,
              operation_type:
                HubSpotSDK::Crm::PublicAllPropertyTypesOperation::OperationType::OrSymbol,
              operator: String
            }
          )
        end
        def to_hash
        end

        # Type of operation (ALL_PROPERTY)
        module OperationType
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Crm::PublicAllPropertyTypesOperation::OperationType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ALL_PROPERTY =
            T.let(
              :ALL_PROPERTY,
              HubSpotSDK::Crm::PublicAllPropertyTypesOperation::OperationType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::PublicAllPropertyTypesOperation::OperationType::TaggedSymbol
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
