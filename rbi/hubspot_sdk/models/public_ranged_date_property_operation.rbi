# typed: strong

module HubspotSDK
  module Models
    class PublicRangedDatePropertyOperation < HubspotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            HubspotSDK::PublicRangedDatePropertyOperation,
            HubspotSDK::Internal::AnyHash
          )
        end

      sig { returns(T::Boolean) }
      attr_accessor :include_objects_with_no_value_set

      sig { returns(Integer) }
      attr_accessor :lower_bound

      sig do
        returns(
          HubspotSDK::PublicRangedDatePropertyOperation::OperationType::OrSymbol
        )
      end
      attr_accessor :operation_type

      sig { returns(String) }
      attr_accessor :operator

      sig { returns(T::Boolean) }
      attr_accessor :requires_time_zone_conversion

      sig { returns(Integer) }
      attr_accessor :upper_bound

      sig do
        params(
          include_objects_with_no_value_set: T::Boolean,
          lower_bound: Integer,
          operation_type:
            HubspotSDK::PublicRangedDatePropertyOperation::OperationType::OrSymbol,
          operator: String,
          requires_time_zone_conversion: T::Boolean,
          upper_bound: Integer
        ).returns(T.attached_class)
      end
      def self.new(
        include_objects_with_no_value_set:,
        lower_bound:,
        operation_type:,
        operator:,
        requires_time_zone_conversion:,
        upper_bound:
      )
      end

      sig do
        override.returns(
          {
            include_objects_with_no_value_set: T::Boolean,
            lower_bound: Integer,
            operation_type:
              HubspotSDK::PublicRangedDatePropertyOperation::OperationType::OrSymbol,
            operator: String,
            requires_time_zone_conversion: T::Boolean,
            upper_bound: Integer
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
              HubspotSDK::PublicRangedDatePropertyOperation::OperationType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        RANGED_DATE =
          T.let(
            :RANGED_DATE,
            HubspotSDK::PublicRangedDatePropertyOperation::OperationType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              HubspotSDK::PublicRangedDatePropertyOperation::OperationType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
