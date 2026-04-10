# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class PublicTimePointOperation < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::PublicTimePointOperation,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # Indicates whether objects with no value set for the property should be included
        # in the operation.
        sig { returns(T::Boolean) }
        attr_accessor :include_objects_with_no_value_set

        # Specifies the type of operation (TIME_POINT).
        sig do
          returns(
            HubSpotSDK::Crm::PublicTimePointOperation::OperationType::OrSymbol
          )
        end
        attr_accessor :operation_type

        # Specifies the operation to be applied within the time point operation
        # (IS_BEFORE, IS_AFTER).
        sig { returns(String) }
        attr_accessor :operator

        # Defines the specific point in time for the operation, which can be a date,
        # indexed time, or property-referenced time.
        sig do
          returns(
            T.any(
              HubSpotSDK::Crm::PublicDatePoint,
              HubSpotSDK::Crm::PublicIndexedTimePoint,
              HubSpotSDK::Crm::PublicPropertyReferencedTime
            )
          )
        end
        attr_accessor :time_point

        # Defines the type of operation being performed.
        sig { returns(String) }
        attr_accessor :type

        # Describes the behavior at the endpoint of the time point operation.
        sig { returns(T.nilable(String)) }
        attr_reader :endpoint_behavior

        sig { params(endpoint_behavior: String).void }
        attr_writer :endpoint_behavior

        # Specifies the parser used for interpreting the property in the operation.
        sig { returns(T.nilable(String)) }
        attr_reader :property_parser

        sig { params(property_parser: String).void }
        attr_writer :property_parser

        sig do
          params(
            include_objects_with_no_value_set: T::Boolean,
            operation_type:
              HubSpotSDK::Crm::PublicTimePointOperation::OperationType::OrSymbol,
            operator: String,
            time_point:
              T.any(
                HubSpotSDK::Crm::PublicDatePoint::OrHash,
                HubSpotSDK::Crm::PublicIndexedTimePoint::OrHash,
                HubSpotSDK::Crm::PublicPropertyReferencedTime::OrHash
              ),
            type: String,
            endpoint_behavior: String,
            property_parser: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Indicates whether objects with no value set for the property should be included
          # in the operation.
          include_objects_with_no_value_set:,
          # Specifies the type of operation (TIME_POINT).
          operation_type:,
          # Specifies the operation to be applied within the time point operation
          # (IS_BEFORE, IS_AFTER).
          operator:,
          # Defines the specific point in time for the operation, which can be a date,
          # indexed time, or property-referenced time.
          time_point:,
          # Defines the type of operation being performed.
          type:,
          # Describes the behavior at the endpoint of the time point operation.
          endpoint_behavior: nil,
          # Specifies the parser used for interpreting the property in the operation.
          property_parser: nil
        )
        end

        sig do
          override.returns(
            {
              include_objects_with_no_value_set: T::Boolean,
              operation_type:
                HubSpotSDK::Crm::PublicTimePointOperation::OperationType::OrSymbol,
              operator: String,
              time_point:
                T.any(
                  HubSpotSDK::Crm::PublicDatePoint,
                  HubSpotSDK::Crm::PublicIndexedTimePoint,
                  HubSpotSDK::Crm::PublicPropertyReferencedTime
                ),
              type: String,
              endpoint_behavior: String,
              property_parser: String
            }
          )
        end
        def to_hash
        end

        # Specifies the type of operation (TIME_POINT).
        module OperationType
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Crm::PublicTimePointOperation::OperationType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TIME_POINT =
            T.let(
              :TIME_POINT,
              HubSpotSDK::Crm::PublicTimePointOperation::OperationType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::PublicTimePointOperation::OperationType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Defines the specific point in time for the operation, which can be a date,
        # indexed time, or property-referenced time.
        module TimePoint
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
                HubSpotSDK::Crm::PublicTimePointOperation::TimePoint::Variants
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
