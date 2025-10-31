# typed: strong

module HubspotSDK
  module Models
    class PublicRollingDateRangePropertyOperation < HubspotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            HubspotSDK::PublicRollingDateRangePropertyOperation,
            HubspotSDK::Internal::AnyHash
          )
        end

      sig { returns(T::Boolean) }
      attr_accessor :include_objects_with_no_value_set

      sig { returns(Integer) }
      attr_accessor :number_of_days

      sig do
        returns(
          HubspotSDK::PublicRollingDateRangePropertyOperation::OperationType::OrSymbol
        )
      end
      attr_accessor :operation_type

      sig { returns(String) }
      attr_accessor :operator

      sig { returns(T::Boolean) }
      attr_accessor :requires_time_zone_conversion

      sig do
        params(
          include_objects_with_no_value_set: T::Boolean,
          number_of_days: Integer,
          operation_type:
            HubspotSDK::PublicRollingDateRangePropertyOperation::OperationType::OrSymbol,
          operator: String,
          requires_time_zone_conversion: T::Boolean
        ).returns(T.attached_class)
      end
      def self.new(
        include_objects_with_no_value_set:,
        number_of_days:,
        operation_type:,
        operator:,
        requires_time_zone_conversion:
      )
      end

      sig do
        override.returns(
          {
            include_objects_with_no_value_set: T::Boolean,
            number_of_days: Integer,
            operation_type:
              HubspotSDK::PublicRollingDateRangePropertyOperation::OperationType::OrSymbol,
            operator: String,
            requires_time_zone_conversion: T::Boolean
          }
        )
      end
      def to_hash
      end

      module OperationType
        extend HubspotSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              HubspotSDK::PublicRollingDateRangePropertyOperation::OperationType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ROLLING_DATE_RANGE =
          T.let(
            :ROLLING_DATE_RANGE,
            HubspotSDK::PublicRollingDateRangePropertyOperation::OperationType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              HubspotSDK::PublicRollingDateRangePropertyOperation::OperationType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
