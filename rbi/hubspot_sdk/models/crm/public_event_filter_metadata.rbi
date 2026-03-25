# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PublicEventFilterMetadata < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PublicEventFilterMetadata,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Defines the operation to be performed on the property
        sig do
          returns(
            T.any(
              HubspotSDK::Crm::PublicBoolPropertyOperation,
              HubspotSDK::Crm::PublicNumberPropertyOperation,
              HubspotSDK::Crm::PublicStringPropertyOperation,
              HubspotSDK::Crm::PublicDateTimePropertyOperation,
              HubspotSDK::Crm::PublicRangedDatePropertyOperation,
              HubspotSDK::Crm::PublicComparativePropertyUpdatedOperation,
              HubspotSDK::Crm::PublicComparativeDatePropertyOperation,
              HubspotSDK::Crm::PublicRollingDateRangePropertyOperation,
              HubspotSDK::Crm::PublicRollingPropertyUpdatedOperation,
              HubspotSDK::Crm::PublicEnumerationPropertyOperation,
              HubspotSDK::Crm::PublicAllPropertyTypesOperation,
              HubspotSDK::Crm::PublicRangedNumberPropertyOperation,
              HubspotSDK::Crm::PublicMultiStringPropertyOperation,
              HubspotSDK::Crm::PublicDatePropertyOperation,
              HubspotSDK::Crm::PublicCalendarDatePropertyOperation,
              HubspotSDK::Crm::PublicTimePointOperation,
              HubspotSDK::Crm::PublicRangedTimeOperation
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
                HubspotSDK::Crm::PublicBoolPropertyOperation::OrHash,
                HubspotSDK::Crm::PublicNumberPropertyOperation::OrHash,
                HubspotSDK::Crm::PublicStringPropertyOperation::OrHash,
                HubspotSDK::Crm::PublicDateTimePropertyOperation::OrHash,
                HubspotSDK::Crm::PublicRangedDatePropertyOperation::OrHash,
                HubspotSDK::Crm::PublicComparativePropertyUpdatedOperation::OrHash,
                HubspotSDK::Crm::PublicComparativeDatePropertyOperation::OrHash,
                HubspotSDK::Crm::PublicRollingDateRangePropertyOperation::OrHash,
                HubspotSDK::Crm::PublicRollingPropertyUpdatedOperation::OrHash,
                HubspotSDK::Crm::PublicEnumerationPropertyOperation::OrHash,
                HubspotSDK::Crm::PublicAllPropertyTypesOperation::OrHash,
                HubspotSDK::Crm::PublicRangedNumberPropertyOperation::OrHash,
                HubspotSDK::Crm::PublicMultiStringPropertyOperation::OrHash,
                HubspotSDK::Crm::PublicDatePropertyOperation::OrHash,
                HubspotSDK::Crm::PublicCalendarDatePropertyOperation::OrHash,
                HubspotSDK::Crm::PublicTimePointOperation::OrHash,
                HubspotSDK::Crm::PublicRangedTimeOperation::OrHash
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
                  HubspotSDK::Crm::PublicBoolPropertyOperation,
                  HubspotSDK::Crm::PublicNumberPropertyOperation,
                  HubspotSDK::Crm::PublicStringPropertyOperation,
                  HubspotSDK::Crm::PublicDateTimePropertyOperation,
                  HubspotSDK::Crm::PublicRangedDatePropertyOperation,
                  HubspotSDK::Crm::PublicComparativePropertyUpdatedOperation,
                  HubspotSDK::Crm::PublicComparativeDatePropertyOperation,
                  HubspotSDK::Crm::PublicRollingDateRangePropertyOperation,
                  HubspotSDK::Crm::PublicRollingPropertyUpdatedOperation,
                  HubspotSDK::Crm::PublicEnumerationPropertyOperation,
                  HubspotSDK::Crm::PublicAllPropertyTypesOperation,
                  HubspotSDK::Crm::PublicRangedNumberPropertyOperation,
                  HubspotSDK::Crm::PublicMultiStringPropertyOperation,
                  HubspotSDK::Crm::PublicDatePropertyOperation,
                  HubspotSDK::Crm::PublicCalendarDatePropertyOperation,
                  HubspotSDK::Crm::PublicTimePointOperation,
                  HubspotSDK::Crm::PublicRangedTimeOperation
                ),
              property: String
            }
          )
        end
        def to_hash
        end

        # Defines the operation to be performed on the property
        module Operation
          extend HubspotSDK::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                HubspotSDK::Crm::PublicBoolPropertyOperation,
                HubspotSDK::Crm::PublicNumberPropertyOperation,
                HubspotSDK::Crm::PublicStringPropertyOperation,
                HubspotSDK::Crm::PublicDateTimePropertyOperation,
                HubspotSDK::Crm::PublicRangedDatePropertyOperation,
                HubspotSDK::Crm::PublicComparativePropertyUpdatedOperation,
                HubspotSDK::Crm::PublicComparativeDatePropertyOperation,
                HubspotSDK::Crm::PublicRollingDateRangePropertyOperation,
                HubspotSDK::Crm::PublicRollingPropertyUpdatedOperation,
                HubspotSDK::Crm::PublicEnumerationPropertyOperation,
                HubspotSDK::Crm::PublicAllPropertyTypesOperation,
                HubspotSDK::Crm::PublicRangedNumberPropertyOperation,
                HubspotSDK::Crm::PublicMultiStringPropertyOperation,
                HubspotSDK::Crm::PublicDatePropertyOperation,
                HubspotSDK::Crm::PublicCalendarDatePropertyOperation,
                HubspotSDK::Crm::PublicTimePointOperation,
                HubspotSDK::Crm::PublicRangedTimeOperation
              )
            end

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::PublicEventFilterMetadata::Operation::Variants
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
