# typed: strong

module HubspotSDK
  module Models
    class PublicRollingPropertyUpdatedOperation < HubspotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            HubspotSDK::PublicRollingPropertyUpdatedOperation,
            HubspotSDK::Internal::AnyHash
          )
        end

      sig { returns(T::Boolean) }
      attr_accessor :include_objects_with_no_value_set

      sig { returns(Integer) }
      attr_accessor :number_of_days

      sig do
        returns(
          HubspotSDK::PublicRollingPropertyUpdatedOperation::OperationType::OrSymbol
        )
      end
      attr_accessor :operation_type

      sig { returns(String) }
      attr_accessor :operator

      sig do
        params(
          include_objects_with_no_value_set: T::Boolean,
          number_of_days: Integer,
          operation_type:
            HubspotSDK::PublicRollingPropertyUpdatedOperation::OperationType::OrSymbol,
          operator: String
        ).returns(T.attached_class)
      end
      def self.new(
        include_objects_with_no_value_set:,
        number_of_days:,
        operation_type:,
        operator:
      )
      end

      sig do
        override.returns(
          {
            include_objects_with_no_value_set: T::Boolean,
            number_of_days: Integer,
            operation_type:
              HubspotSDK::PublicRollingPropertyUpdatedOperation::OperationType::OrSymbol,
            operator: String
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
              HubspotSDK::PublicRollingPropertyUpdatedOperation::OperationType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ROLLING_PROPERTY_UPDATED =
          T.let(
            :ROLLING_PROPERTY_UPDATED,
            HubspotSDK::PublicRollingPropertyUpdatedOperation::OperationType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              HubspotSDK::PublicRollingPropertyUpdatedOperation::OperationType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
