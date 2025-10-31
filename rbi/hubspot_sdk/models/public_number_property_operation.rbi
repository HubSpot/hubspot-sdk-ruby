# typed: strong

module HubspotSDK
  module Models
    class PublicNumberPropertyOperation < HubspotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            HubspotSDK::PublicNumberPropertyOperation,
            HubspotSDK::Internal::AnyHash
          )
        end

      sig { returns(T::Boolean) }
      attr_accessor :include_objects_with_no_value_set

      sig do
        returns(
          HubspotSDK::PublicNumberPropertyOperation::OperationType::OrSymbol
        )
      end
      attr_accessor :operation_type

      sig { returns(String) }
      attr_accessor :operator

      sig { returns(Float) }
      attr_accessor :value

      sig do
        params(
          include_objects_with_no_value_set: T::Boolean,
          operation_type:
            HubspotSDK::PublicNumberPropertyOperation::OperationType::OrSymbol,
          operator: String,
          value: Float
        ).returns(T.attached_class)
      end
      def self.new(
        include_objects_with_no_value_set:,
        operation_type:,
        operator:,
        value:
      )
      end

      sig do
        override.returns(
          {
            include_objects_with_no_value_set: T::Boolean,
            operation_type:
              HubspotSDK::PublicNumberPropertyOperation::OperationType::OrSymbol,
            operator: String,
            value: Float
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
              HubspotSDK::PublicNumberPropertyOperation::OperationType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        NUMBER =
          T.let(
            :NUMBER,
            HubspotSDK::PublicNumberPropertyOperation::OperationType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              HubspotSDK::PublicNumberPropertyOperation::OperationType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
