# typed: strong

module HubspotSDK
  module Models
    class PublicAllPropertyTypesOperation < HubspotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            HubspotSDK::PublicAllPropertyTypesOperation,
            HubspotSDK::Internal::AnyHash
          )
        end

      sig { returns(T::Boolean) }
      attr_accessor :include_objects_with_no_value_set

      sig do
        returns(
          HubspotSDK::PublicAllPropertyTypesOperation::OperationType::OrSymbol
        )
      end
      attr_accessor :operation_type

      sig { returns(String) }
      attr_accessor :operator

      sig do
        params(
          include_objects_with_no_value_set: T::Boolean,
          operation_type:
            HubspotSDK::PublicAllPropertyTypesOperation::OperationType::OrSymbol,
          operator: String
        ).returns(T.attached_class)
      end
      def self.new(
        include_objects_with_no_value_set:,
        operation_type:,
        operator:
      )
      end

      sig do
        override.returns(
          {
            include_objects_with_no_value_set: T::Boolean,
            operation_type:
              HubspotSDK::PublicAllPropertyTypesOperation::OperationType::OrSymbol,
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
              HubspotSDK::PublicAllPropertyTypesOperation::OperationType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ALL_PROPERTY =
          T.let(
            :ALL_PROPERTY,
            HubspotSDK::PublicAllPropertyTypesOperation::OperationType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              HubspotSDK::PublicAllPropertyTypesOperation::OperationType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
