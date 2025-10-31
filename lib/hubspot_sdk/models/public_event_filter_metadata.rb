# frozen_string_literal: true

module HubspotSDK
  module Models
    class PublicEventFilterMetadata < HubspotSDK::Internal::Type::BaseModel
      # @!attribute operation
      #
      #   @return [HubspotSDK::Models::PublicBoolPropertyOperation, HubspotSDK::Models::PublicNumberPropertyOperation, HubspotSDK::Models::PublicStringPropertyOperation, HubspotSDK::Models::PublicDateTimePropertyOperation, HubspotSDK::Models::PublicRangedDatePropertyOperation, HubspotSDK::Models::PublicComparativePropertyUpdatedOperation, HubspotSDK::Models::PublicComparativeDatePropertyOperation, HubspotSDK::Models::PublicRollingDateRangePropertyOperation, HubspotSDK::Models::PublicRollingPropertyUpdatedOperation, HubspotSDK::Models::PublicEnumerationPropertyOperation, HubspotSDK::Models::PublicAllPropertyTypesOperation, HubspotSDK::Models::PublicRangedNumberPropertyOperation, HubspotSDK::Models::PublicMultiStringPropertyOperation, HubspotSDK::Models::PublicDatePropertyOperation, HubspotSDK::Models::PublicCalendarDatePropertyOperation, HubspotSDK::Models::PublicTimePointOperation, HubspotSDK::Models::PublicRangedTimeOperation]
      required :operation, union: -> { HubspotSDK::PublicEventFilterMetadata::Operation }

      # @!attribute property
      #
      #   @return [String]
      required :property, String

      # @!method initialize(operation:, property:)
      #   @param operation [HubspotSDK::Models::PublicBoolPropertyOperation, HubspotSDK::Models::PublicNumberPropertyOperation, HubspotSDK::Models::PublicStringPropertyOperation, HubspotSDK::Models::PublicDateTimePropertyOperation, HubspotSDK::Models::PublicRangedDatePropertyOperation, HubspotSDK::Models::PublicComparativePropertyUpdatedOperation, HubspotSDK::Models::PublicComparativeDatePropertyOperation, HubspotSDK::Models::PublicRollingDateRangePropertyOperation, HubspotSDK::Models::PublicRollingPropertyUpdatedOperation, HubspotSDK::Models::PublicEnumerationPropertyOperation, HubspotSDK::Models::PublicAllPropertyTypesOperation, HubspotSDK::Models::PublicRangedNumberPropertyOperation, HubspotSDK::Models::PublicMultiStringPropertyOperation, HubspotSDK::Models::PublicDatePropertyOperation, HubspotSDK::Models::PublicCalendarDatePropertyOperation, HubspotSDK::Models::PublicTimePointOperation, HubspotSDK::Models::PublicRangedTimeOperation]
      #   @param property [String]

      # @see HubspotSDK::Models::PublicEventFilterMetadata#operation
      module Operation
        extend HubspotSDK::Internal::Type::Union

        variant -> { HubspotSDK::PublicBoolPropertyOperation }

        variant -> { HubspotSDK::PublicNumberPropertyOperation }

        variant -> { HubspotSDK::PublicStringPropertyOperation }

        variant -> { HubspotSDK::PublicDateTimePropertyOperation }

        variant -> { HubspotSDK::PublicRangedDatePropertyOperation }

        variant -> { HubspotSDK::PublicComparativePropertyUpdatedOperation }

        variant -> { HubspotSDK::PublicComparativeDatePropertyOperation }

        variant -> { HubspotSDK::PublicRollingDateRangePropertyOperation }

        variant -> { HubspotSDK::PublicRollingPropertyUpdatedOperation }

        variant -> { HubspotSDK::PublicEnumerationPropertyOperation }

        variant -> { HubspotSDK::PublicAllPropertyTypesOperation }

        variant -> { HubspotSDK::PublicRangedNumberPropertyOperation }

        variant -> { HubspotSDK::PublicMultiStringPropertyOperation }

        variant -> { HubspotSDK::PublicDatePropertyOperation }

        variant -> { HubspotSDK::PublicCalendarDatePropertyOperation }

        variant -> { HubspotSDK::PublicTimePointOperation }

        variant -> { HubspotSDK::PublicRangedTimeOperation }

        # @!method self.variants
        #   @return [Array(HubspotSDK::Models::PublicBoolPropertyOperation, HubspotSDK::Models::PublicNumberPropertyOperation, HubspotSDK::Models::PublicStringPropertyOperation, HubspotSDK::Models::PublicDateTimePropertyOperation, HubspotSDK::Models::PublicRangedDatePropertyOperation, HubspotSDK::Models::PublicComparativePropertyUpdatedOperation, HubspotSDK::Models::PublicComparativeDatePropertyOperation, HubspotSDK::Models::PublicRollingDateRangePropertyOperation, HubspotSDK::Models::PublicRollingPropertyUpdatedOperation, HubspotSDK::Models::PublicEnumerationPropertyOperation, HubspotSDK::Models::PublicAllPropertyTypesOperation, HubspotSDK::Models::PublicRangedNumberPropertyOperation, HubspotSDK::Models::PublicMultiStringPropertyOperation, HubspotSDK::Models::PublicDatePropertyOperation, HubspotSDK::Models::PublicCalendarDatePropertyOperation, HubspotSDK::Models::PublicTimePointOperation, HubspotSDK::Models::PublicRangedTimeOperation)]
      end
    end
  end
end
