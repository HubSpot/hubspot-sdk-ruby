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

          discriminator :operationType

          variant :BOOL, -> { HubSpotSDK::Crm::PublicBoolPropertyOperation }

          variant :NUMBER, -> { HubSpotSDK::Crm::PublicNumberPropertyOperation }

          variant :STRING, -> { HubSpotSDK::Crm::PublicStringPropertyOperation }

          variant :DATETIME, -> { HubSpotSDK::Crm::PublicDateTimePropertyOperation }

          variant :RANGED_DATE, -> { HubSpotSDK::Crm::PublicRangedDatePropertyOperation }

          variant :COMPARATIVE_PROPERTY_UPDATED, -> { HubSpotSDK::Crm::PublicComparativePropertyUpdatedOperation }

          variant :COMPARATIVE_DATE, -> { HubSpotSDK::Crm::PublicComparativeDatePropertyOperation }

          variant :ROLLING_DATE_RANGE, -> { HubSpotSDK::Crm::PublicRollingDateRangePropertyOperation }

          variant :ROLLING_PROPERTY_UPDATED, -> { HubSpotSDK::Crm::PublicRollingPropertyUpdatedOperation }

          variant :ENUMERATION, -> { HubSpotSDK::Crm::PublicEnumerationPropertyOperation }

          variant :ALL_PROPERTY, -> { HubSpotSDK::Crm::PublicAllPropertyTypesOperation }

          variant :NUMBER_RANGED, -> { HubSpotSDK::Crm::PublicRangedNumberPropertyOperation }

          variant :MULTISTRING, -> { HubSpotSDK::Crm::PublicMultiStringPropertyOperation }

          variant :DATE, -> { HubSpotSDK::Crm::PublicDatePropertyOperation }

          variant :CALENDAR_DATE, -> { HubSpotSDK::Crm::PublicCalendarDatePropertyOperation }

          variant :TIME_POINT, -> { HubSpotSDK::Crm::PublicTimePointOperation }

          variant :TIME_RANGED, -> { HubSpotSDK::Crm::PublicRangedTimeOperation }

          # @!method self.variants
          #   @return [Array(HubSpotSDK::Models::Crm::PublicBoolPropertyOperation, HubSpotSDK::Models::Crm::PublicNumberPropertyOperation, HubSpotSDK::Models::Crm::PublicStringPropertyOperation, HubSpotSDK::Models::Crm::PublicDateTimePropertyOperation, HubSpotSDK::Models::Crm::PublicRangedDatePropertyOperation, HubSpotSDK::Models::Crm::PublicComparativePropertyUpdatedOperation, HubSpotSDK::Models::Crm::PublicComparativeDatePropertyOperation, HubSpotSDK::Models::Crm::PublicRollingDateRangePropertyOperation, HubSpotSDK::Models::Crm::PublicRollingPropertyUpdatedOperation, HubSpotSDK::Models::Crm::PublicEnumerationPropertyOperation, HubSpotSDK::Models::Crm::PublicAllPropertyTypesOperation, HubSpotSDK::Models::Crm::PublicRangedNumberPropertyOperation, HubSpotSDK::Models::Crm::PublicMultiStringPropertyOperation, HubSpotSDK::Models::Crm::PublicDatePropertyOperation, HubSpotSDK::Models::Crm::PublicCalendarDatePropertyOperation, HubSpotSDK::Models::Crm::PublicTimePointOperation, HubSpotSDK::Models::Crm::PublicRangedTimeOperation)]
        end
      end
    end
  end
end
