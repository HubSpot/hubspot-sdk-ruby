# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class PublicEventFilterMetadata < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::PublicEventFilterMetadata,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # Defines the operation to be performed on the property
        sig do
          returns(
            T.any(
              HubSpotSDK::Crm::PublicBoolPropertyOperation,
              HubSpotSDK::Crm::PublicNumberPropertyOperation,
              HubSpotSDK::Crm::PublicStringPropertyOperation,
              HubSpotSDK::Crm::PublicDateTimePropertyOperation,
              HubSpotSDK::Crm::PublicRangedDatePropertyOperation,
              HubSpotSDK::Crm::PublicComparativePropertyUpdatedOperation,
              HubSpotSDK::Crm::PublicComparativeDatePropertyOperation,
              HubSpotSDK::Crm::PublicRollingDateRangePropertyOperation,
              HubSpotSDK::Crm::PublicRollingPropertyUpdatedOperation,
              HubSpotSDK::Crm::PublicEnumerationPropertyOperation,
              HubSpotSDK::Crm::PublicAllPropertyTypesOperation,
              HubSpotSDK::Crm::PublicRangedNumberPropertyOperation,
              HubSpotSDK::Crm::PublicMultiStringPropertyOperation,
              HubSpotSDK::Crm::PublicDatePropertyOperation,
              HubSpotSDK::Crm::PublicCalendarDatePropertyOperation,
              HubSpotSDK::Crm::PublicTimePointOperation,
              HubSpotSDK::Crm::PublicRangedTimeOperation
            )
          )
        end
        attr_accessor :operation

        # Specifies the property on which the operation is to be applied.
        sig { returns(String) }
        attr_accessor :property

        sig do
          params(
            operation:
              T.any(
                HubSpotSDK::Crm::PublicBoolPropertyOperation::OrHash,
                HubSpotSDK::Crm::PublicNumberPropertyOperation::OrHash,
                HubSpotSDK::Crm::PublicStringPropertyOperation::OrHash,
                HubSpotSDK::Crm::PublicDateTimePropertyOperation::OrHash,
                HubSpotSDK::Crm::PublicRangedDatePropertyOperation::OrHash,
                HubSpotSDK::Crm::PublicComparativePropertyUpdatedOperation::OrHash,
                HubSpotSDK::Crm::PublicComparativeDatePropertyOperation::OrHash,
                HubSpotSDK::Crm::PublicRollingDateRangePropertyOperation::OrHash,
                HubSpotSDK::Crm::PublicRollingPropertyUpdatedOperation::OrHash,
                HubSpotSDK::Crm::PublicEnumerationPropertyOperation::OrHash,
                HubSpotSDK::Crm::PublicAllPropertyTypesOperation::OrHash,
                HubSpotSDK::Crm::PublicRangedNumberPropertyOperation::OrHash,
                HubSpotSDK::Crm::PublicMultiStringPropertyOperation::OrHash,
                HubSpotSDK::Crm::PublicDatePropertyOperation::OrHash,
                HubSpotSDK::Crm::PublicCalendarDatePropertyOperation::OrHash,
                HubSpotSDK::Crm::PublicTimePointOperation::OrHash,
                HubSpotSDK::Crm::PublicRangedTimeOperation::OrHash
              ),
            property: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Defines the operation to be performed on the property
          operation:,
          # Specifies the property on which the operation is to be applied.
          property:
        )
        end

        sig do
          override.returns(
            {
              operation:
                T.any(
                  HubSpotSDK::Crm::PublicBoolPropertyOperation,
                  HubSpotSDK::Crm::PublicNumberPropertyOperation,
                  HubSpotSDK::Crm::PublicStringPropertyOperation,
                  HubSpotSDK::Crm::PublicDateTimePropertyOperation,
                  HubSpotSDK::Crm::PublicRangedDatePropertyOperation,
                  HubSpotSDK::Crm::PublicComparativePropertyUpdatedOperation,
                  HubSpotSDK::Crm::PublicComparativeDatePropertyOperation,
                  HubSpotSDK::Crm::PublicRollingDateRangePropertyOperation,
                  HubSpotSDK::Crm::PublicRollingPropertyUpdatedOperation,
                  HubSpotSDK::Crm::PublicEnumerationPropertyOperation,
                  HubSpotSDK::Crm::PublicAllPropertyTypesOperation,
                  HubSpotSDK::Crm::PublicRangedNumberPropertyOperation,
                  HubSpotSDK::Crm::PublicMultiStringPropertyOperation,
                  HubSpotSDK::Crm::PublicDatePropertyOperation,
                  HubSpotSDK::Crm::PublicCalendarDatePropertyOperation,
                  HubSpotSDK::Crm::PublicTimePointOperation,
                  HubSpotSDK::Crm::PublicRangedTimeOperation
                ),
              property: String
            }
          )
        end
        def to_hash
        end

        # Defines the operation to be performed on the property
        module Operation
          extend HubSpotSDK::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                HubSpotSDK::Crm::PublicBoolPropertyOperation,
                HubSpotSDK::Crm::PublicNumberPropertyOperation,
                HubSpotSDK::Crm::PublicStringPropertyOperation,
                HubSpotSDK::Crm::PublicDateTimePropertyOperation,
                HubSpotSDK::Crm::PublicRangedDatePropertyOperation,
                HubSpotSDK::Crm::PublicComparativePropertyUpdatedOperation,
                HubSpotSDK::Crm::PublicComparativeDatePropertyOperation,
                HubSpotSDK::Crm::PublicRollingDateRangePropertyOperation,
                HubSpotSDK::Crm::PublicRollingPropertyUpdatedOperation,
                HubSpotSDK::Crm::PublicEnumerationPropertyOperation,
                HubSpotSDK::Crm::PublicAllPropertyTypesOperation,
                HubSpotSDK::Crm::PublicRangedNumberPropertyOperation,
                HubSpotSDK::Crm::PublicMultiStringPropertyOperation,
                HubSpotSDK::Crm::PublicDatePropertyOperation,
                HubSpotSDK::Crm::PublicCalendarDatePropertyOperation,
                HubSpotSDK::Crm::PublicTimePointOperation,
                HubSpotSDK::Crm::PublicRangedTimeOperation
              )
            end

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::PublicEventFilterMetadata::Operation::Variants
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
