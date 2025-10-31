# typed: strong

module HubspotSDK
  module Models
    class PublicRangedNumberPropertyOperation < HubspotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            HubspotSDK::PublicRangedNumberPropertyOperation,
            HubspotSDK::Internal::AnyHash
          )
        end

      sig { returns(T::Boolean) }
      attr_accessor :include_objects_with_no_value_set

      sig { returns(Integer) }
      attr_accessor :lower_bound

      sig do
        returns(
          HubspotSDK::PublicRangedNumberPropertyOperation::OperationType::OrSymbol
        )
      end
      attr_accessor :operation_type

      sig { returns(String) }
      attr_accessor :operator

      sig { returns(Integer) }
      attr_accessor :upper_bound

      sig do
        params(
          include_objects_with_no_value_set: T::Boolean,
          lower_bound: Integer,
          operation_type:
            HubspotSDK::PublicRangedNumberPropertyOperation::OperationType::OrSymbol,
          operator: String,
          upper_bound: Integer
        ).returns(T.attached_class)
      end
      def self.new(
        include_objects_with_no_value_set:,
        lower_bound:,
        operation_type:,
        operator:,
        upper_bound:
      )
      end

      sig do
        override.returns(
          {
            include_objects_with_no_value_set: T::Boolean,
            lower_bound: Integer,
            operation_type:
              HubspotSDK::PublicRangedNumberPropertyOperation::OperationType::OrSymbol,
            operator: String,
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
              HubspotSDK::PublicRangedNumberPropertyOperation::OperationType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        NUMBER_RANGED =
          T.let(
            :NUMBER_RANGED,
            HubspotSDK::PublicRangedNumberPropertyOperation::OperationType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              HubspotSDK::PublicRangedNumberPropertyOperation::OperationType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
