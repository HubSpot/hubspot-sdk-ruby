# typed: strong

module HubspotSDK
  module Models
    class PublicRangedTimeOperation < HubspotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            HubspotSDK::PublicRangedTimeOperation,
            HubspotSDK::Internal::AnyHash
          )
        end

      sig { returns(T::Boolean) }
      attr_accessor :include_objects_with_no_value_set

      sig do
        returns(
          T.any(
            HubspotSDK::PublicDatePoint,
            HubspotSDK::PublicIndexedTimePoint,
            HubspotSDK::PublicPropertyReferencedTime
          )
        )
      end
      attr_accessor :lower_bound_time_point

      sig { returns(String) }
      attr_accessor :operation_type

      sig { returns(String) }
      attr_accessor :operator

      sig { returns(HubspotSDK::PublicRangedTimeOperation::Type::OrSymbol) }
      attr_accessor :type

      sig do
        returns(
          T.any(
            HubspotSDK::PublicDatePoint,
            HubspotSDK::PublicIndexedTimePoint,
            HubspotSDK::PublicPropertyReferencedTime
          )
        )
      end
      attr_accessor :upper_bound_time_point

      sig { returns(T.nilable(String)) }
      attr_reader :lower_bound_endpoint_behavior

      sig { params(lower_bound_endpoint_behavior: String).void }
      attr_writer :lower_bound_endpoint_behavior

      sig { returns(T.nilable(String)) }
      attr_reader :property_parser

      sig { params(property_parser: String).void }
      attr_writer :property_parser

      sig { returns(T.nilable(String)) }
      attr_reader :upper_bound_endpoint_behavior

      sig { params(upper_bound_endpoint_behavior: String).void }
      attr_writer :upper_bound_endpoint_behavior

      sig do
        params(
          include_objects_with_no_value_set: T::Boolean,
          lower_bound_time_point:
            T.any(
              HubspotSDK::PublicDatePoint::OrHash,
              HubspotSDK::PublicIndexedTimePoint::OrHash,
              HubspotSDK::PublicPropertyReferencedTime::OrHash
            ),
          operation_type: String,
          operator: String,
          type: HubspotSDK::PublicRangedTimeOperation::Type::OrSymbol,
          upper_bound_time_point:
            T.any(
              HubspotSDK::PublicDatePoint::OrHash,
              HubspotSDK::PublicIndexedTimePoint::OrHash,
              HubspotSDK::PublicPropertyReferencedTime::OrHash
            ),
          lower_bound_endpoint_behavior: String,
          property_parser: String,
          upper_bound_endpoint_behavior: String
        ).returns(T.attached_class)
      end
      def self.new(
        include_objects_with_no_value_set:,
        lower_bound_time_point:,
        operation_type:,
        operator:,
        type:,
        upper_bound_time_point:,
        lower_bound_endpoint_behavior: nil,
        property_parser: nil,
        upper_bound_endpoint_behavior: nil
      )
      end

      sig do
        override.returns(
          {
            include_objects_with_no_value_set: T::Boolean,
            lower_bound_time_point:
              T.any(
                HubspotSDK::PublicDatePoint,
                HubspotSDK::PublicIndexedTimePoint,
                HubspotSDK::PublicPropertyReferencedTime
              ),
            operation_type: String,
            operator: String,
            type: HubspotSDK::PublicRangedTimeOperation::Type::OrSymbol,
            upper_bound_time_point:
              T.any(
                HubspotSDK::PublicDatePoint,
                HubspotSDK::PublicIndexedTimePoint,
                HubspotSDK::PublicPropertyReferencedTime
              ),
            lower_bound_endpoint_behavior: String,
            property_parser: String,
            upper_bound_endpoint_behavior: String
          }
        )
      end
      def to_hash
      end

      module LowerBoundTimePoint
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
            T::Array[
              HubspotSDK::PublicRangedTimeOperation::LowerBoundTimePoint::Variants
            ]
          )
        end
        def self.variants
        end
      end

      module Type
        extend HubspotSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, HubspotSDK::PublicRangedTimeOperation::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TIME_RANGED =
          T.let(
            :TIME_RANGED,
            HubspotSDK::PublicRangedTimeOperation::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[HubspotSDK::PublicRangedTimeOperation::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module UpperBoundTimePoint
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
            T::Array[
              HubspotSDK::PublicRangedTimeOperation::UpperBoundTimePoint::Variants
            ]
          )
        end
        def self.variants
        end
      end
    end
  end
end
