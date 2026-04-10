# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class PublicDatePropertyOperation < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::PublicDatePropertyOperation,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The day of the month for the date operation.
        sig { returns(Integer) }
        attr_accessor :day

        # Indicates whether objects with no value set for the property should be included.
        sig { returns(T::Boolean) }
        attr_accessor :include_objects_with_no_value_set

        # The month for the date operation.
        sig { returns(String) }
        attr_accessor :month

        # Specifies the type of operation (DATE).
        sig do
          returns(
            HubSpotSDK::Crm::PublicDatePropertyOperation::OperationType::OrSymbol
          )
        end
        attr_accessor :operation_type

        # Defines the operation to be applied in the date property operation
        # (IS_LESS_THAN_X_DAYS_AGO, IS_MORE_THAN_X_DAYS_AGO, IS_LESS_THAN_X_DAYS_FROM_NOW,
        # IS_MORE_THAN_X_DAYS_FROM_NOW).
        sig { returns(String) }
        attr_accessor :operator

        # The year for the date operation.
        sig { returns(Integer) }
        attr_accessor :year

        sig do
          params(
            day: Integer,
            include_objects_with_no_value_set: T::Boolean,
            month: String,
            operation_type:
              HubSpotSDK::Crm::PublicDatePropertyOperation::OperationType::OrSymbol,
            operator: String,
            year: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # The day of the month for the date operation.
          day:,
          # Indicates whether objects with no value set for the property should be included.
          include_objects_with_no_value_set:,
          # The month for the date operation.
          month:,
          # Specifies the type of operation (DATE).
          operation_type:,
          # Defines the operation to be applied in the date property operation
          # (IS_LESS_THAN_X_DAYS_AGO, IS_MORE_THAN_X_DAYS_AGO, IS_LESS_THAN_X_DAYS_FROM_NOW,
          # IS_MORE_THAN_X_DAYS_FROM_NOW).
          operator:,
          # The year for the date operation.
          year:
        )
        end

        sig do
          override.returns(
            {
              day: Integer,
              include_objects_with_no_value_set: T::Boolean,
              month: String,
              operation_type:
                HubSpotSDK::Crm::PublicDatePropertyOperation::OperationType::OrSymbol,
              operator: String,
              year: Integer
            }
          )
        end
        def to_hash
        end

        # Specifies the type of operation (DATE).
        module OperationType
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Crm::PublicDatePropertyOperation::OperationType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DATE =
            T.let(
              :DATE,
              HubSpotSDK::Crm::PublicDatePropertyOperation::OperationType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::PublicDatePropertyOperation::OperationType::TaggedSymbol
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
