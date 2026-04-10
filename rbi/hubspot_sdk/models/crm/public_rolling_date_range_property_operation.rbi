# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class PublicRollingDateRangePropertyOperation < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::PublicRollingDateRangePropertyOperation,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # Indicates whether objects with no value set for the property should be included
        # in the operation.
        sig { returns(T::Boolean) }
        attr_accessor :include_objects_with_no_value_set

        # The number of days to be considered in the rolling date range operation.
        sig { returns(Integer) }
        attr_accessor :number_of_days

        # Specifies the type of operation (ROLLING_DATE_RANGE).
        sig do
          returns(
            HubSpotSDK::Crm::PublicRollingDateRangePropertyOperation::OperationType::OrSymbol
          )
        end
        attr_accessor :operation_type

        # Defines the operation to be applied within the rolling date range property
        # operation (IS_LESS_THAN_X_DAYS_AGO, IS_MORE_THAN_X_DAYS_AGO,
        # IS_LESS_THAN_X_DAYS_FROM_NOW, IS_MORE_THAN_X_DAYS_FROM_NOW).
        sig { returns(String) }
        attr_accessor :operator

        # Specifies whether the operation requires conversion to a different time zone.
        sig { returns(T::Boolean) }
        attr_accessor :requires_time_zone_conversion

        sig do
          params(
            include_objects_with_no_value_set: T::Boolean,
            number_of_days: Integer,
            operation_type:
              HubSpotSDK::Crm::PublicRollingDateRangePropertyOperation::OperationType::OrSymbol,
            operator: String,
            requires_time_zone_conversion: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          # Indicates whether objects with no value set for the property should be included
          # in the operation.
          include_objects_with_no_value_set:,
          # The number of days to be considered in the rolling date range operation.
          number_of_days:,
          # Specifies the type of operation (ROLLING_DATE_RANGE).
          operation_type:,
          # Defines the operation to be applied within the rolling date range property
          # operation (IS_LESS_THAN_X_DAYS_AGO, IS_MORE_THAN_X_DAYS_AGO,
          # IS_LESS_THAN_X_DAYS_FROM_NOW, IS_MORE_THAN_X_DAYS_FROM_NOW).
          operator:,
          # Specifies whether the operation requires conversion to a different time zone.
          requires_time_zone_conversion:
        )
        end

        sig do
          override.returns(
            {
              include_objects_with_no_value_set: T::Boolean,
              number_of_days: Integer,
              operation_type:
                HubSpotSDK::Crm::PublicRollingDateRangePropertyOperation::OperationType::OrSymbol,
              operator: String,
              requires_time_zone_conversion: T::Boolean
            }
          )
        end
        def to_hash
        end

        # Specifies the type of operation (ROLLING_DATE_RANGE).
        module OperationType
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Crm::PublicRollingDateRangePropertyOperation::OperationType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ROLLING_DATE_RANGE =
            T.let(
              :ROLLING_DATE_RANGE,
              HubSpotSDK::Crm::PublicRollingDateRangePropertyOperation::OperationType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::PublicRollingDateRangePropertyOperation::OperationType::TaggedSymbol
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
