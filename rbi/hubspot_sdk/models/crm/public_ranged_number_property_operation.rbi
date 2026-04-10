# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class PublicRangedNumberPropertyOperation < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::PublicRangedNumberPropertyOperation,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # Indicates whether objects with no value set for the property should be included
        # in the operation.
        sig { returns(T::Boolean) }
        attr_accessor :include_objects_with_no_value_set

        # The lower limit of the number range for the operation.
        sig { returns(Integer) }
        attr_accessor :lower_bound

        # Specifies the type of operation (NUMBER_RANGED).
        sig do
          returns(
            HubSpotSDK::Crm::PublicRangedNumberPropertyOperation::OperationType::OrSymbol
          )
        end
        attr_accessor :operation_type

        # Defines the operation to be applied in the ranged number property operation
        # (IS_BETWEEN, IS_NOT_BETWEEN).
        sig { returns(String) }
        attr_accessor :operator

        # The upper limit of the number range for the operation.
        sig { returns(Integer) }
        attr_accessor :upper_bound

        sig do
          params(
            include_objects_with_no_value_set: T::Boolean,
            lower_bound: Integer,
            operation_type:
              HubSpotSDK::Crm::PublicRangedNumberPropertyOperation::OperationType::OrSymbol,
            operator: String,
            upper_bound: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # Indicates whether objects with no value set for the property should be included
          # in the operation.
          include_objects_with_no_value_set:,
          # The lower limit of the number range for the operation.
          lower_bound:,
          # Specifies the type of operation (NUMBER_RANGED).
          operation_type:,
          # Defines the operation to be applied in the ranged number property operation
          # (IS_BETWEEN, IS_NOT_BETWEEN).
          operator:,
          # The upper limit of the number range for the operation.
          upper_bound:
        )
        end

        sig do
          override.returns(
            {
              include_objects_with_no_value_set: T::Boolean,
              lower_bound: Integer,
              operation_type:
                HubSpotSDK::Crm::PublicRangedNumberPropertyOperation::OperationType::OrSymbol,
              operator: String,
              upper_bound: Integer
            }
          )
        end
        def to_hash
        end

        # Specifies the type of operation (NUMBER_RANGED).
        module OperationType
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Crm::PublicRangedNumberPropertyOperation::OperationType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NUMBER_RANGED =
            T.let(
              :NUMBER_RANGED,
              HubSpotSDK::Crm::PublicRangedNumberPropertyOperation::OperationType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::PublicRangedNumberPropertyOperation::OperationType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
