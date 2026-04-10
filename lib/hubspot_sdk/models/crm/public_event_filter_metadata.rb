# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class PublicEventFilterMetadata < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute operation
        #   Defines the operation to be performed on the property
        #
        #   @return [HubSpotSDK::Models::Crm::PublicBoolPropertyOperation, HubSpotSDK::Models::Crm::PublicNumberPropertyOperation, HubSpotSDK::Models::Crm::PublicStringPropertyOperation, HubSpotSDK::Models::Crm::PublicDateTimePropertyOperation, HubSpotSDK::Models::Crm::PublicRangedDatePropertyOperation, HubSpotSDK::Models::Crm::PublicComparativePropertyUpdatedOperation, HubSpotSDK::Models::Crm::PublicComparativeDatePropertyOperation, HubSpotSDK::Models::Crm::PublicRollingDateRangePropertyOperation, HubSpotSDK::Models::Crm::PublicRollingPropertyUpdatedOperation, HubSpotSDK::Models::Crm::PublicEnumerationPropertyOperation, HubSpotSDK::Models::Crm::PublicAllPropertyTypesOperation, HubSpotSDK::Models::Crm::PublicRangedNumberPropertyOperation, HubSpotSDK::Models::Crm::PublicMultiStringPropertyOperation, HubSpotSDK::Models::Crm::PublicDatePropertyOperation, HubSpotSDK::Models::Crm::PublicCalendarDatePropertyOperation, HubSpotSDK::Models::Crm::PublicTimePointOperation, HubSpotSDK::Models::Crm::PublicRangedTimeOperation]
        required :operation, union: -> { HubSpotSDK::Crm::PublicEventFilterMetadata::Operation }

        # @!attribute property
        #   Specifies the property on which the operation is to be applied.
        #
        #   @return [String]
        required :property, String

        # @!method initialize(operation:, property:)
        #   @param operation [HubSpotSDK::Models::Crm::PublicBoolPropertyOperation, HubSpotSDK::Models::Crm::PublicNumberPropertyOperation, HubSpotSDK::Models::Crm::PublicStringPropertyOperation, HubSpotSDK::Models::Crm::PublicDateTimePropertyOperation, HubSpotSDK::Models::Crm::PublicRangedDatePropertyOperation, HubSpotSDK::Models::Crm::PublicComparativePropertyUpdatedOperation, HubSpotSDK::Models::Crm::PublicComparativeDatePropertyOperation, HubSpotSDK::Models::Crm::PublicRollingDateRangePropertyOperation, HubSpotSDK::Models::Crm::PublicRollingPropertyUpdatedOperation, HubSpotSDK::Models::Crm::PublicEnumerationPropertyOperation, HubSpotSDK::Models::Crm::PublicAllPropertyTypesOperation, HubSpotSDK::Models::Crm::PublicRangedNumberPropertyOperation, HubSpotSDK::Models::Crm::PublicMultiStringPropertyOperation, HubSpotSDK::Models::Crm::PublicDatePropertyOperation, HubSpotSDK::Models::Crm::PublicCalendarDatePropertyOperation, HubSpotSDK::Models::Crm::PublicTimePointOperation, HubSpotSDK::Models::Crm::PublicRangedTimeOperation] Defines the operation to be performed on the property
        #
        #   @param property [String] Specifies the property on which the operation is to be applied.

        # Defines the operation to be performed on the property
        #
        # @see HubSpotSDK::Models::Crm::PublicEventFilterMetadata#operation
        module Operation
          extend HubSpotSDK::Internal::Type::Union

          variant -> { HubSpotSDK::Crm::PublicBoolPropertyOperation }

          variant -> { HubSpotSDK::Crm::PublicNumberPropertyOperation }

          variant -> { HubSpotSDK::Crm::PublicStringPropertyOperation }

          variant -> { HubSpotSDK::Crm::PublicDateTimePropertyOperation }

          variant -> { HubSpotSDK::Crm::PublicRangedDatePropertyOperation }

          variant -> { HubSpotSDK::Crm::PublicComparativePropertyUpdatedOperation }

          variant -> { HubSpotSDK::Crm::PublicComparativeDatePropertyOperation }

          variant -> { HubSpotSDK::Crm::PublicRollingDateRangePropertyOperation }

          variant -> { HubSpotSDK::Crm::PublicRollingPropertyUpdatedOperation }

          variant -> { HubSpotSDK::Crm::PublicEnumerationPropertyOperation }

          variant -> { HubSpotSDK::Crm::PublicAllPropertyTypesOperation }

          variant -> { HubSpotSDK::Crm::PublicRangedNumberPropertyOperation }

          variant -> { HubSpotSDK::Crm::PublicMultiStringPropertyOperation }

          variant -> { HubSpotSDK::Crm::PublicDatePropertyOperation }

          variant -> { HubSpotSDK::Crm::PublicCalendarDatePropertyOperation }

          variant -> { HubSpotSDK::Crm::PublicTimePointOperation }

          variant -> { HubSpotSDK::Crm::PublicRangedTimeOperation }

          # @!method self.variants
          #   @return [Array(HubSpotSDK::Models::Crm::PublicBoolPropertyOperation, HubSpotSDK::Models::Crm::PublicNumberPropertyOperation, HubSpotSDK::Models::Crm::PublicStringPropertyOperation, HubSpotSDK::Models::Crm::PublicDateTimePropertyOperation, HubSpotSDK::Models::Crm::PublicRangedDatePropertyOperation, HubSpotSDK::Models::Crm::PublicComparativePropertyUpdatedOperation, HubSpotSDK::Models::Crm::PublicComparativeDatePropertyOperation, HubSpotSDK::Models::Crm::PublicRollingDateRangePropertyOperation, HubSpotSDK::Models::Crm::PublicRollingPropertyUpdatedOperation, HubSpotSDK::Models::Crm::PublicEnumerationPropertyOperation, HubSpotSDK::Models::Crm::PublicAllPropertyTypesOperation, HubSpotSDK::Models::Crm::PublicRangedNumberPropertyOperation, HubSpotSDK::Models::Crm::PublicMultiStringPropertyOperation, HubSpotSDK::Models::Crm::PublicDatePropertyOperation, HubSpotSDK::Models::Crm::PublicCalendarDatePropertyOperation, HubSpotSDK::Models::Crm::PublicTimePointOperation, HubSpotSDK::Models::Crm::PublicRangedTimeOperation)]
        end
      end
    end
  end
end
