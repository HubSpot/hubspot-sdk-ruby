# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PublicDateTimePropertyOperation < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PublicDateTimePropertyOperation,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Specifies whether objects without a set value should be included in the
        # operation.
        sig { returns(T::Boolean) }
        attr_accessor :include_objects_with_no_value_set

        # The type of operation (DATETIME).
        sig do
          returns(
            HubspotSDK::Crm::PublicDateTimePropertyOperation::OperationType::OrSymbol
          )
        end
        attr_accessor :operation_type

        # Defines the operation to be applied, such as comparison operators (IS_BEFORE,
        # IS_AFTER).
        sig { returns(String) }
        attr_accessor :operator

        # Indicates whether the timestamp requires conversion to a different time zone.
        sig { returns(T::Boolean) }
        attr_accessor :requires_time_zone_conversion

        # The specific point in time used in the operation.
        sig { returns(Integer) }
        attr_accessor :timestamp

        sig do
          params(
            include_objects_with_no_value_set: T::Boolean,
            operation_type:
              HubspotSDK::Crm::PublicDateTimePropertyOperation::OperationType::OrSymbol,
            operator: String,
            requires_time_zone_conversion: T::Boolean,
            timestamp: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # Specifies whether objects without a set value should be included in the
          # operation.
          include_objects_with_no_value_set:,
          # The type of operation (DATETIME).
          operation_type:,
          # Defines the operation to be applied, such as comparison operators (IS_BEFORE,
          # IS_AFTER).
          operator:,
          # Indicates whether the timestamp requires conversion to a different time zone.
          requires_time_zone_conversion:,
          # The specific point in time used in the operation.
          timestamp:
        )
        end

        sig do
          override.returns(
            {
              include_objects_with_no_value_set: T::Boolean,
              operation_type:
                HubspotSDK::Crm::PublicDateTimePropertyOperation::OperationType::OrSymbol,
              operator: String,
              requires_time_zone_conversion: T::Boolean,
              timestamp: Integer
            }
          )
        end
        def to_hash
        end

        # The type of operation (DATETIME).
        module OperationType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Crm::PublicDateTimePropertyOperation::OperationType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DATETIME =
            T.let(
              :DATETIME,
              HubspotSDK::Crm::PublicDateTimePropertyOperation::OperationType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::PublicDateTimePropertyOperation::OperationType::TaggedSymbol
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
