# typed: strong

module HubspotSDK
  module Models
    class PublicMultiStringPropertyOperation < HubspotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            HubspotSDK::PublicMultiStringPropertyOperation,
            HubspotSDK::Internal::AnyHash
          )
        end

      sig { returns(T::Boolean) }
      attr_accessor :include_objects_with_no_value_set

      sig do
        returns(
          HubspotSDK::PublicMultiStringPropertyOperation::OperationType::OrSymbol
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
            HubspotSDK::PublicMultiStringPropertyOperation::OperationType::OrSymbol,
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
              HubspotSDK::PublicMultiStringPropertyOperation::OperationType::OrSymbol,
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
              HubspotSDK::PublicMultiStringPropertyOperation::OperationType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MULTISTRING =
          T.let(
            :MULTISTRING,
            HubspotSDK::PublicMultiStringPropertyOperation::OperationType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              HubspotSDK::PublicMultiStringPropertyOperation::OperationType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
