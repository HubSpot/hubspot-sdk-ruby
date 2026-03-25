# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PublicEventFilterMetadata < HubspotSDK::Internal::Type::BaseModel
        # @!attribute operation
        #   Defines the operation to be performed on the property
        #
        #   @return [HubspotSDK::Models::Crm::PublicBoolPropertyOperation, HubspotSDK::Models::Crm::PublicNumberPropertyOperation, HubspotSDK::Models::Crm::PublicStringPropertyOperation, HubspotSDK::Models::Crm::PublicDateTimePropertyOperation, HubspotSDK::Models::Crm::PublicRangedDatePropertyOperation, HubspotSDK::Models::Crm::PublicComparativePropertyUpdatedOperation, HubspotSDK::Models::Crm::PublicComparativeDatePropertyOperation, HubspotSDK::Models::Crm::PublicRollingDateRangePropertyOperation, HubspotSDK::Models::Crm::PublicRollingPropertyUpdatedOperation, HubspotSDK::Models::Crm::PublicEnumerationPropertyOperation, HubspotSDK::Models::Crm::PublicAllPropertyTypesOperation, HubspotSDK::Models::Crm::PublicRangedNumberPropertyOperation, HubspotSDK::Models::Crm::PublicMultiStringPropertyOperation, HubspotSDK::Models::Crm::PublicDatePropertyOperation, HubspotSDK::Models::Crm::PublicCalendarDatePropertyOperation, HubspotSDK::Models::Crm::PublicTimePointOperation, HubspotSDK::Models::Crm::PublicRangedTimeOperation]
        required :operation, union: -> { HubspotSDK::Crm::PublicEventFilterMetadata::Operation }

        # @!attribute property
        #   Specifies the property on which the operation is to be applied.
        #
        #   @return [String]
        required :property, String

        # @!method initialize(operation:, property:)
        #   @param operation [HubspotSDK::Models::Crm::PublicBoolPropertyOperation, HubspotSDK::Models::Crm::PublicNumberPropertyOperation, HubspotSDK::Models::Crm::PublicStringPropertyOperation, HubspotSDK::Models::Crm::PublicDateTimePropertyOperation, HubspotSDK::Models::Crm::PublicRangedDatePropertyOperation, HubspotSDK::Models::Crm::PublicComparativePropertyUpdatedOperation, HubspotSDK::Models::Crm::PublicComparativeDatePropertyOperation, HubspotSDK::Models::Crm::PublicRollingDateRangePropertyOperation, HubspotSDK::Models::Crm::PublicRollingPropertyUpdatedOperation, HubspotSDK::Models::Crm::PublicEnumerationPropertyOperation, HubspotSDK::Models::Crm::PublicAllPropertyTypesOperation, HubspotSDK::Models::Crm::PublicRangedNumberPropertyOperation, HubspotSDK::Models::Crm::PublicMultiStringPropertyOperation, HubspotSDK::Models::Crm::PublicDatePropertyOperation, HubspotSDK::Models::Crm::PublicCalendarDatePropertyOperation, HubspotSDK::Models::Crm::PublicTimePointOperation, HubspotSDK::Models::Crm::PublicRangedTimeOperation] Defines the operation to be performed on the property
        #
        #   @param property [String] Specifies the property on which the operation is to be applied.

        # Defines the operation to be performed on the property
        #
        # @see HubspotSDK::Models::Crm::PublicEventFilterMetadata#operation
        module Operation
          extend HubspotSDK::Internal::Type::Union

          variant -> { HubspotSDK::Crm::PublicBoolPropertyOperation }

          variant -> { HubspotSDK::Crm::PublicNumberPropertyOperation }

          variant -> { HubspotSDK::Crm::PublicStringPropertyOperation }

          variant -> { HubspotSDK::Crm::PublicDateTimePropertyOperation }

          variant -> { HubspotSDK::Crm::PublicRangedDatePropertyOperation }

          variant -> { HubspotSDK::Crm::PublicComparativePropertyUpdatedOperation }

          variant -> { HubspotSDK::Crm::PublicComparativeDatePropertyOperation }

          variant -> { HubspotSDK::Crm::PublicRollingDateRangePropertyOperation }

          variant -> { HubspotSDK::Crm::PublicRollingPropertyUpdatedOperation }

          variant -> { HubspotSDK::Crm::PublicEnumerationPropertyOperation }

          variant -> { HubspotSDK::Crm::PublicAllPropertyTypesOperation }

          variant -> { HubspotSDK::Crm::PublicRangedNumberPropertyOperation }

          variant -> { HubspotSDK::Crm::PublicMultiStringPropertyOperation }

          variant -> { HubspotSDK::Crm::PublicDatePropertyOperation }

          variant -> { HubspotSDK::Crm::PublicCalendarDatePropertyOperation }

          variant -> { HubspotSDK::Crm::PublicTimePointOperation }

          variant -> { HubspotSDK::Crm::PublicRangedTimeOperation }

          # @!method self.variants
          #   @return [Array(HubspotSDK::Models::Crm::PublicBoolPropertyOperation, HubspotSDK::Models::Crm::PublicNumberPropertyOperation, HubspotSDK::Models::Crm::PublicStringPropertyOperation, HubspotSDK::Models::Crm::PublicDateTimePropertyOperation, HubspotSDK::Models::Crm::PublicRangedDatePropertyOperation, HubspotSDK::Models::Crm::PublicComparativePropertyUpdatedOperation, HubspotSDK::Models::Crm::PublicComparativeDatePropertyOperation, HubspotSDK::Models::Crm::PublicRollingDateRangePropertyOperation, HubspotSDK::Models::Crm::PublicRollingPropertyUpdatedOperation, HubspotSDK::Models::Crm::PublicEnumerationPropertyOperation, HubspotSDK::Models::Crm::PublicAllPropertyTypesOperation, HubspotSDK::Models::Crm::PublicRangedNumberPropertyOperation, HubspotSDK::Models::Crm::PublicMultiStringPropertyOperation, HubspotSDK::Models::Crm::PublicDatePropertyOperation, HubspotSDK::Models::Crm::PublicCalendarDatePropertyOperation, HubspotSDK::Models::Crm::PublicTimePointOperation, HubspotSDK::Models::Crm::PublicRangedTimeOperation)]
        end
      end
    end
  end
end
