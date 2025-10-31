# typed: strong

module HubspotSDK
  module Models
    class PublicComparativePropertyUpdatedOperation < HubspotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            HubspotSDK::PublicComparativePropertyUpdatedOperation,
            HubspotSDK::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :comparison_property_name

      sig { returns(T::Boolean) }
      attr_accessor :include_objects_with_no_value_set

      sig do
        returns(
          HubspotSDK::PublicComparativePropertyUpdatedOperation::OperationType::OrSymbol
        )
      end
      attr_accessor :operation_type

      sig { returns(String) }
      attr_accessor :operator

      sig { returns(T.nilable(String)) }
      attr_reader :default_comparison_value

      sig { params(default_comparison_value: String).void }
      attr_writer :default_comparison_value

      sig do
        params(
          comparison_property_name: String,
          include_objects_with_no_value_set: T::Boolean,
          operation_type:
            HubspotSDK::PublicComparativePropertyUpdatedOperation::OperationType::OrSymbol,
          operator: String,
          default_comparison_value: String
        ).returns(T.attached_class)
      end
      def self.new(
        comparison_property_name:,
        include_objects_with_no_value_set:,
        operation_type:,
        operator:,
        default_comparison_value: nil
      )
      end

      sig do
        override.returns(
          {
            comparison_property_name: String,
            include_objects_with_no_value_set: T::Boolean,
            operation_type:
              HubspotSDK::PublicComparativePropertyUpdatedOperation::OperationType::OrSymbol,
            operator: String,
            default_comparison_value: String
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
              HubspotSDK::PublicComparativePropertyUpdatedOperation::OperationType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        COMPARATIVE_PROPERTY_UPDATED =
          T.let(
            :COMPARATIVE_PROPERTY_UPDATED,
            HubspotSDK::PublicComparativePropertyUpdatedOperation::OperationType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              HubspotSDK::PublicComparativePropertyUpdatedOperation::OperationType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
