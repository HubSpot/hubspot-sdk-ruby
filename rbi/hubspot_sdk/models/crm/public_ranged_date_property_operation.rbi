# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class PublicRangedDatePropertyOperation < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::PublicRangedDatePropertyOperation,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # Specifies whether objects without a set value should be included in the
        # operation.
        sig { returns(T::Boolean) }
        attr_accessor :include_objects_with_no_value_set

        # The lower limit of the date range for the operation.
        sig { returns(Integer) }
        attr_accessor :lower_bound

        # Specifies the type of operation (RANGED_DATE).
        sig do
          returns(
            HubSpotSDK::Crm::PublicRangedDatePropertyOperation::OperationType::OrSymbol
          )
        end
        attr_accessor :operation_type

        # Defines the operation to be applied in the ranged date property operation
        # (IS_BETWEEN, IS_NOT_BETWEEN).
        sig { returns(String) }
        attr_accessor :operator

        # Indicates whether the operation requires conversion to a different time zone.
        sig { returns(T::Boolean) }
        attr_accessor :requires_time_zone_conversion

        # The upper limit of the date range for the operation.
        sig { returns(Integer) }
        attr_accessor :upper_bound

        sig do
          params(
            include_objects_with_no_value_set: T::Boolean,
            lower_bound: Integer,
            operation_type:
              HubSpotSDK::Crm::PublicRangedDatePropertyOperation::OperationType::OrSymbol,
            operator: String,
            requires_time_zone_conversion: T::Boolean,
            upper_bound: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # Specifies whether objects without a set value should be included in the
          # operation.
          include_objects_with_no_value_set:,
          # The lower limit of the date range for the operation.
          lower_bound:,
          # Specifies the type of operation (RANGED_DATE).
          operation_type:,
          # Defines the operation to be applied in the ranged date property operation
          # (IS_BETWEEN, IS_NOT_BETWEEN).
          operator:,
          # Indicates whether the operation requires conversion to a different time zone.
          requires_time_zone_conversion:,
          # The upper limit of the date range for the operation.
          upper_bound:
        )
        end

        sig do
          override.returns(
            {
              include_objects_with_no_value_set: T::Boolean,
              lower_bound: Integer,
              operation_type:
                HubSpotSDK::Crm::PublicRangedDatePropertyOperation::OperationType::OrSymbol,
              operator: String,
              requires_time_zone_conversion: T::Boolean,
              upper_bound: Integer
            }
          )
        end
        def to_hash
        end

        # Specifies the type of operation (RANGED_DATE).
        module OperationType
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Crm::PublicRangedDatePropertyOperation::OperationType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          RANGED_DATE =
            T.let(
              :RANGED_DATE,
              HubSpotSDK::Crm::PublicRangedDatePropertyOperation::OperationType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::PublicRangedDatePropertyOperation::OperationType::TaggedSymbol
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
