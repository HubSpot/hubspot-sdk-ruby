# typed: strong

module HubspotSDK
  module Models
    class PublicDatePropertyOperation < HubspotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            HubspotSDK::PublicDatePropertyOperation,
            HubspotSDK::Internal::AnyHash
          )
        end

      sig { returns(Integer) }
      attr_accessor :day

      sig { returns(T::Boolean) }
      attr_accessor :include_objects_with_no_value_set

      sig { returns(String) }
      attr_accessor :month

      sig do
        returns(
          HubspotSDK::PublicDatePropertyOperation::OperationType::OrSymbol
        )
      end
      attr_accessor :operation_type

      sig { returns(String) }
      attr_accessor :operator

      sig { returns(Integer) }
      attr_accessor :year

      sig do
        params(
          day: Integer,
          include_objects_with_no_value_set: T::Boolean,
          month: String,
          operation_type:
            HubspotSDK::PublicDatePropertyOperation::OperationType::OrSymbol,
          operator: String,
          year: Integer
        ).returns(T.attached_class)
      end
      def self.new(
        day:,
        include_objects_with_no_value_set:,
        month:,
        operation_type:,
        operator:,
        year:
      )
      end

      sig do
        override.returns(
          {
            day: Integer,
            include_objects_with_no_value_set: T::Boolean,
            month: String,
            operation_type:
              HubspotSDK::PublicDatePropertyOperation::OperationType::OrSymbol,
            operator: String,
            year: Integer
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
              HubspotSDK::PublicDatePropertyOperation::OperationType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DATE =
          T.let(
            :DATE,
            HubspotSDK::PublicDatePropertyOperation::OperationType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              HubspotSDK::PublicDatePropertyOperation::OperationType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
