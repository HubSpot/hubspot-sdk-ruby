# typed: strong

module HubspotSDK
  module Models
    class PublicEnumerationPropertyOperation < HubspotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            HubspotSDK::PublicEnumerationPropertyOperation,
            HubspotSDK::Internal::AnyHash
          )
        end

      sig { returns(T::Boolean) }
      attr_accessor :include_objects_with_no_value_set

      sig do
        returns(
          HubspotSDK::PublicEnumerationPropertyOperation::OperationType::OrSymbol
        )
      end
      attr_accessor :operation_type

      sig { returns(String) }
      attr_accessor :operator

      sig { returns(T::Array[String]) }
      attr_accessor :values

      sig do
        params(
          include_objects_with_no_value_set: T::Boolean,
          operation_type:
            HubspotSDK::PublicEnumerationPropertyOperation::OperationType::OrSymbol,
          operator: String,
          values: T::Array[String]
        ).returns(T.attached_class)
      end
      def self.new(
        include_objects_with_no_value_set:,
        operation_type:,
        operator:,
        values:
      )
      end

      sig do
        override.returns(
          {
            include_objects_with_no_value_set: T::Boolean,
            operation_type:
              HubspotSDK::PublicEnumerationPropertyOperation::OperationType::OrSymbol,
            operator: String,
            values: T::Array[String]
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
              HubspotSDK::PublicEnumerationPropertyOperation::OperationType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ENUMERATION =
          T.let(
            :ENUMERATION,
            HubspotSDK::PublicEnumerationPropertyOperation::OperationType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              HubspotSDK::PublicEnumerationPropertyOperation::OperationType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
