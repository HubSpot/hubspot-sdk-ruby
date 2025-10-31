# typed: strong

module HubspotSDK
  module Models
    class PublicEventFilterMetadata < HubspotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            HubspotSDK::PublicEventFilterMetadata,
            HubspotSDK::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.any(
            HubspotSDK::PublicBoolPropertyOperation,
            HubspotSDK::PublicNumberPropertyOperation,
            HubspotSDK::PublicStringPropertyOperation,
            HubspotSDK::PublicDateTimePropertyOperation,
            HubspotSDK::PublicRangedDatePropertyOperation,
            HubspotSDK::PublicComparativePropertyUpdatedOperation,
            HubspotSDK::PublicComparativeDatePropertyOperation,
            HubspotSDK::PublicRollingDateRangePropertyOperation,
            HubspotSDK::PublicRollingPropertyUpdatedOperation,
            HubspotSDK::PublicEnumerationPropertyOperation,
            HubspotSDK::PublicAllPropertyTypesOperation,
            HubspotSDK::PublicRangedNumberPropertyOperation,
            HubspotSDK::PublicMultiStringPropertyOperation,
            HubspotSDK::PublicDatePropertyOperation,
            HubspotSDK::PublicCalendarDatePropertyOperation,
            HubspotSDK::PublicTimePointOperation,
            HubspotSDK::PublicRangedTimeOperation
          )
        )
      end
      attr_accessor :operation

      sig { returns(String) }
      attr_accessor :property

      sig do
        params(
          operation:
            T.any(
              HubspotSDK::PublicBoolPropertyOperation::OrHash,
              HubspotSDK::PublicNumberPropertyOperation::OrHash,
              HubspotSDK::PublicStringPropertyOperation::OrHash,
              HubspotSDK::PublicDateTimePropertyOperation::OrHash,
              HubspotSDK::PublicRangedDatePropertyOperation::OrHash,
              HubspotSDK::PublicComparativePropertyUpdatedOperation::OrHash,
              HubspotSDK::PublicComparativeDatePropertyOperation::OrHash,
              HubspotSDK::PublicRollingDateRangePropertyOperation::OrHash,
              HubspotSDK::PublicRollingPropertyUpdatedOperation::OrHash,
              HubspotSDK::PublicEnumerationPropertyOperation::OrHash,
              HubspotSDK::PublicAllPropertyTypesOperation::OrHash,
              HubspotSDK::PublicRangedNumberPropertyOperation::OrHash,
              HubspotSDK::PublicMultiStringPropertyOperation::OrHash,
              HubspotSDK::PublicDatePropertyOperation::OrHash,
              HubspotSDK::PublicCalendarDatePropertyOperation::OrHash,
              HubspotSDK::PublicTimePointOperation::OrHash,
              HubspotSDK::PublicRangedTimeOperation::OrHash
            ),
          property: String
        ).returns(T.attached_class)
      end
      def self.new(operation:, property:)
      end

      sig do
        override.returns(
          {
            operation:
              T.any(
                HubspotSDK::PublicBoolPropertyOperation,
                HubspotSDK::PublicNumberPropertyOperation,
                HubspotSDK::PublicStringPropertyOperation,
                HubspotSDK::PublicDateTimePropertyOperation,
                HubspotSDK::PublicRangedDatePropertyOperation,
                HubspotSDK::PublicComparativePropertyUpdatedOperation,
                HubspotSDK::PublicComparativeDatePropertyOperation,
                HubspotSDK::PublicRollingDateRangePropertyOperation,
                HubspotSDK::PublicRollingPropertyUpdatedOperation,
                HubspotSDK::PublicEnumerationPropertyOperation,
                HubspotSDK::PublicAllPropertyTypesOperation,
                HubspotSDK::PublicRangedNumberPropertyOperation,
                HubspotSDK::PublicMultiStringPropertyOperation,
                HubspotSDK::PublicDatePropertyOperation,
                HubspotSDK::PublicCalendarDatePropertyOperation,
                HubspotSDK::PublicTimePointOperation,
                HubspotSDK::PublicRangedTimeOperation
              ),
            property: String
          }
        )
      end
      def to_hash
      end

      module Operation
        extend HubspotSDK::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              HubspotSDK::PublicBoolPropertyOperation,
              HubspotSDK::PublicNumberPropertyOperation,
              HubspotSDK::PublicStringPropertyOperation,
              HubspotSDK::PublicDateTimePropertyOperation,
              HubspotSDK::PublicRangedDatePropertyOperation,
              HubspotSDK::PublicComparativePropertyUpdatedOperation,
              HubspotSDK::PublicComparativeDatePropertyOperation,
              HubspotSDK::PublicRollingDateRangePropertyOperation,
              HubspotSDK::PublicRollingPropertyUpdatedOperation,
              HubspotSDK::PublicEnumerationPropertyOperation,
              HubspotSDK::PublicAllPropertyTypesOperation,
              HubspotSDK::PublicRangedNumberPropertyOperation,
              HubspotSDK::PublicMultiStringPropertyOperation,
              HubspotSDK::PublicDatePropertyOperation,
              HubspotSDK::PublicCalendarDatePropertyOperation,
              HubspotSDK::PublicTimePointOperation,
              HubspotSDK::PublicRangedTimeOperation
            )
          end

        sig do
          override.returns(
            T::Array[HubspotSDK::PublicEventFilterMetadata::Operation::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
