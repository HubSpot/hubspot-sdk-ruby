# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PublicRollingPropertyUpdatedOperation < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PublicRollingPropertyUpdatedOperation,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Indicates whether objects with no value set for the property should be included
        # in the operation.
        sig { returns(T::Boolean) }
        attr_accessor :include_objects_with_no_value_set

        # The number of days to be considered in the rolling property updated operation.
        sig { returns(Integer) }
        attr_accessor :number_of_days

        # Specifies the type of operation (ROLLING_PROPERTY_UPDATED).
        sig do
          returns(
            HubspotSDK::Crm::PublicRollingPropertyUpdatedOperation::OperationType::OrSymbol
          )
        end
        attr_accessor :operation_type

        # Defines the operation to be applied within the rolling property updated
        # operation (UPDATED_IN_LAST_X_DAYS, NOT_UPDATED_IN_LAST_X_DAYS).
        sig { returns(String) }
        attr_accessor :operator

        sig do
          params(
            include_objects_with_no_value_set: T::Boolean,
            number_of_days: Integer,
            operation_type:
              HubspotSDK::Crm::PublicRollingPropertyUpdatedOperation::OperationType::OrSymbol,
            operator: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Indicates whether objects with no value set for the property should be included
          # in the operation.
          include_objects_with_no_value_set:,
          # The number of days to be considered in the rolling property updated operation.
          number_of_days:,
          # Specifies the type of operation (ROLLING_PROPERTY_UPDATED).
          operation_type:,
          # Defines the operation to be applied within the rolling property updated
          # operation (UPDATED_IN_LAST_X_DAYS, NOT_UPDATED_IN_LAST_X_DAYS).
          operator:
        )
        end

        sig do
          override.returns(
            {
              include_objects_with_no_value_set: T::Boolean,
              number_of_days: Integer,
              operation_type:
                HubspotSDK::Crm::PublicRollingPropertyUpdatedOperation::OperationType::OrSymbol,
              operator: String
            }
          )
        end
        def to_hash
        end

        # Specifies the type of operation (ROLLING_PROPERTY_UPDATED).
        module OperationType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Crm::PublicRollingPropertyUpdatedOperation::OperationType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ROLLING_PROPERTY_UPDATED =
            T.let(
              :ROLLING_PROPERTY_UPDATED,
              HubspotSDK::Crm::PublicRollingPropertyUpdatedOperation::OperationType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::PublicRollingPropertyUpdatedOperation::OperationType::TaggedSymbol
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
