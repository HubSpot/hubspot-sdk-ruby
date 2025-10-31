# typed: strong

module HubspotSDK
  module Models
    class PublicTimePointOperation < HubspotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            HubspotSDK::PublicTimePointOperation,
            HubspotSDK::Internal::AnyHash
          )
        end

      sig { returns(T::Boolean) }
      attr_accessor :include_objects_with_no_value_set

      sig do
        returns(HubspotSDK::PublicTimePointOperation::OperationType::OrSymbol)
      end
      attr_accessor :operation_type

      sig { returns(String) }
      attr_accessor :operator

      sig do
        returns(
          T.any(
            HubspotSDK::PublicDatePoint,
            HubspotSDK::PublicIndexedTimePoint,
            HubspotSDK::PublicPropertyReferencedTime
          )
        )
      end
      attr_accessor :time_point

      sig { returns(String) }
      attr_accessor :type

      sig { returns(T.nilable(String)) }
      attr_reader :endpoint_behavior

      sig { params(endpoint_behavior: String).void }
      attr_writer :endpoint_behavior

      sig { returns(T.nilable(String)) }
      attr_reader :property_parser

      sig { params(property_parser: String).void }
      attr_writer :property_parser

      sig do
        params(
          include_objects_with_no_value_set: T::Boolean,
          operation_type:
            HubspotSDK::PublicTimePointOperation::OperationType::OrSymbol,
          operator: String,
          time_point:
            T.any(
              HubspotSDK::PublicDatePoint::OrHash,
              HubspotSDK::PublicIndexedTimePoint::OrHash,
              HubspotSDK::PublicPropertyReferencedTime::OrHash
            ),
          type: String,
          endpoint_behavior: String,
          property_parser: String
        ).returns(T.attached_class)
      end
      def self.new(
        include_objects_with_no_value_set:,
        operation_type:,
        operator:,
        time_point:,
        type:,
        endpoint_behavior: nil,
        property_parser: nil
      )
      end

      sig do
        override.returns(
          {
            include_objects_with_no_value_set: T::Boolean,
            operation_type:
              HubspotSDK::PublicTimePointOperation::OperationType::OrSymbol,
            operator: String,
            time_point:
              T.any(
                HubspotSDK::PublicDatePoint,
                HubspotSDK::PublicIndexedTimePoint,
                HubspotSDK::PublicPropertyReferencedTime
              ),
            type: String,
            endpoint_behavior: String,
            property_parser: String
          }
        )
      end
      def to_hash
      end

      module OperationType
        extend HubspotSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, HubspotSDK::PublicTimePointOperation::OperationType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TIME_POINT =
          T.let(
            :TIME_POINT,
            HubspotSDK::PublicTimePointOperation::OperationType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              HubspotSDK::PublicTimePointOperation::OperationType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      module TimePoint
        extend HubspotSDK::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              HubspotSDK::PublicDatePoint,
              HubspotSDK::PublicIndexedTimePoint,
              HubspotSDK::PublicPropertyReferencedTime
            )
          end

        sig do
          override.returns(
            T::Array[HubspotSDK::PublicTimePointOperation::TimePoint::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
