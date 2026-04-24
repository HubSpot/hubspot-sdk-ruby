# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class PublicRangedTimeOperation < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::PublicRangedTimeOperation,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # Indicates whether objects with no value set for the property should be included
        # in the operation.
        sig { returns(T::Boolean) }
        attr_accessor :include_objects_with_no_value_set

        # Defines the lower bound time point for the operation.
        sig do
          returns(
            T.any(
              HubSpotSDK::Crm::PublicDatePoint,
              HubSpotSDK::Crm::PublicIndexedTimePoint,
              HubSpotSDK::Crm::PublicPropertyReferencedTime
            )
          )
        end
        attr_accessor :lower_bound_time_point

        # Specifies the type of operation (TIME_RANGED).
        sig do
          returns(
            HubSpotSDK::Crm::PublicRangedTimeOperation::OperationType::OrSymbol
          )
        end
        attr_accessor :operation_type

        # Defines the operation to be applied within the time range (IS_BETWEEN,
        # IS_NOT_BETWEEN).
        sig { returns(String) }
        attr_accessor :operator

        # Specifies the type of operation (TIME_RANGED).
        sig do
          returns(HubSpotSDK::Crm::PublicRangedTimeOperation::Type::OrSymbol)
        end
        attr_accessor :type

        # Defines the upper bound time point for the operation.
        sig do
          returns(
            T.any(
              HubSpotSDK::Crm::PublicDatePoint,
              HubSpotSDK::Crm::PublicIndexedTimePoint,
              HubSpotSDK::Crm::PublicPropertyReferencedTime
            )
          )
        end
        attr_accessor :upper_bound_time_point

        # Describes the behavior at the lower bound endpoint of the time range.
        sig { returns(T.nilable(String)) }
        attr_reader :lower_bound_endpoint_behavior

        sig { params(lower_bound_endpoint_behavior: String).void }
        attr_writer :lower_bound_endpoint_behavior

        # Specifies the parser used for the property in the operation.
        sig { returns(T.nilable(String)) }
        attr_reader :property_parser

        sig { params(property_parser: String).void }
        attr_writer :property_parser

        # Describes the behavior at the upper bound endpoint of the time range.
        sig { returns(T.nilable(String)) }
        attr_reader :upper_bound_endpoint_behavior

        sig { params(upper_bound_endpoint_behavior: String).void }
        attr_writer :upper_bound_endpoint_behavior

        sig do
          params(
            include_objects_with_no_value_set: T::Boolean,
            lower_bound_time_point:
              T.any(
                HubSpotSDK::Crm::PublicDatePoint::OrHash,
                HubSpotSDK::Crm::PublicIndexedTimePoint::OrHash,
                HubSpotSDK::Crm::PublicPropertyReferencedTime::OrHash
              ),
            operation_type:
              HubSpotSDK::Crm::PublicRangedTimeOperation::OperationType::OrSymbol,
            operator: String,
            type: HubSpotSDK::Crm::PublicRangedTimeOperation::Type::OrSymbol,
            upper_bound_time_point:
              T.any(
                HubSpotSDK::Crm::PublicDatePoint::OrHash,
                HubSpotSDK::Crm::PublicIndexedTimePoint::OrHash,
                HubSpotSDK::Crm::PublicPropertyReferencedTime::OrHash
              ),
            lower_bound_endpoint_behavior: String,
            property_parser: String,
            upper_bound_endpoint_behavior: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Indicates whether objects with no value set for the property should be included
          # in the operation.
          include_objects_with_no_value_set:,
          # Defines the lower bound time point for the operation.
          lower_bound_time_point:,
          # Specifies the type of operation (TIME_RANGED).
          operation_type:,
          # Defines the operation to be applied within the time range (IS_BETWEEN,
          # IS_NOT_BETWEEN).
          operator:,
          # Specifies the type of operation (TIME_RANGED).
          type:,
          # Defines the upper bound time point for the operation.
          upper_bound_time_point:,
          # Describes the behavior at the lower bound endpoint of the time range.
          lower_bound_endpoint_behavior: nil,
          # Specifies the parser used for the property in the operation.
          property_parser: nil,
          # Describes the behavior at the upper bound endpoint of the time range.
          upper_bound_endpoint_behavior: nil
        )
        end

        sig do
          override.returns(
            {
              include_objects_with_no_value_set: T::Boolean,
              lower_bound_time_point:
                T.any(
                  HubSpotSDK::Crm::PublicDatePoint,
                  HubSpotSDK::Crm::PublicIndexedTimePoint,
                  HubSpotSDK::Crm::PublicPropertyReferencedTime
                ),
              operation_type:
                HubSpotSDK::Crm::PublicRangedTimeOperation::OperationType::OrSymbol,
              operator: String,
              type: HubSpotSDK::Crm::PublicRangedTimeOperation::Type::OrSymbol,
              upper_bound_time_point:
                T.any(
                  HubSpotSDK::Crm::PublicDatePoint,
                  HubSpotSDK::Crm::PublicIndexedTimePoint,
                  HubSpotSDK::Crm::PublicPropertyReferencedTime
                ),
              lower_bound_endpoint_behavior: String,
              property_parser: String,
              upper_bound_endpoint_behavior: String
            }
          )
        end
        def to_hash
        end

        # Defines the lower bound time point for the operation.
        module LowerBoundTimePoint
          extend HubSpotSDK::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                HubSpotSDK::Crm::PublicDatePoint,
                HubSpotSDK::Crm::PublicIndexedTimePoint,
                HubSpotSDK::Crm::PublicPropertyReferencedTime
              )
            end

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::PublicRangedTimeOperation::LowerBoundTimePoint::Variants
              ]
            )
          end
          def self.variants
          end
        end

        # Specifies the type of operation (TIME_RANGED).
        module OperationType
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Crm::PublicRangedTimeOperation::OperationType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TIME_RANGED =
            T.let(
              :TIME_RANGED,
              HubSpotSDK::Crm::PublicRangedTimeOperation::OperationType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::PublicRangedTimeOperation::OperationType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Specifies the type of operation (TIME_RANGED).
        module Type
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Crm::PublicRangedTimeOperation::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TIME_RANGED =
            T.let(
              :TIME_RANGED,
              HubSpotSDK::Crm::PublicRangedTimeOperation::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::PublicRangedTimeOperation::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Defines the upper bound time point for the operation.
        module UpperBoundTimePoint
          extend HubSpotSDK::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                HubSpotSDK::Crm::PublicDatePoint,
                HubSpotSDK::Crm::PublicIndexedTimePoint,
                HubSpotSDK::Crm::PublicPropertyReferencedTime
              )
            end

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::PublicRangedTimeOperation::UpperBoundTimePoint::Variants
              ]
            )
          end
          def self.variants
          end
        end
      end
    end
  end
end
