# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class APIInputVariable < HubspotSDK::Internal::Type::BaseModel
        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute value
        #
        #   @return [HubspotSDK::Models::Automation::APIActionDataValue, HubspotSDK::Models::Automation::APIObjectPropertyValue, HubspotSDK::Models::Automation::APIStaticValue, HubspotSDK::Models::Automation::APIRelativeDateTimeValue, HubspotSDK::Models::Automation::APITimestampValue, HubspotSDK::Models::Automation::APIIncrementValue, HubspotSDK::Models::Automation::APIFetchedObjectPropertyValue, HubspotSDK::Models::Automation::APIAppendObjectPropertyValue, HubspotSDK::Models::Automation::APIStaticAppendValue, HubspotSDK::Models::Automation::APIEnrollmentEventPropertyValue]
        required :value, union: -> { HubspotSDK::Automation::APIInputVariable::Value }

        # @!method initialize(name:, value:)
        #   @param name [String]
        #   @param value [HubspotSDK::Models::Automation::APIActionDataValue, HubspotSDK::Models::Automation::APIObjectPropertyValue, HubspotSDK::Models::Automation::APIStaticValue, HubspotSDK::Models::Automation::APIRelativeDateTimeValue, HubspotSDK::Models::Automation::APITimestampValue, HubspotSDK::Models::Automation::APIIncrementValue, HubspotSDK::Models::Automation::APIFetchedObjectPropertyValue, HubspotSDK::Models::Automation::APIAppendObjectPropertyValue, HubspotSDK::Models::Automation::APIStaticAppendValue, HubspotSDK::Models::Automation::APIEnrollmentEventPropertyValue]

        # @see HubspotSDK::Models::Automation::APIInputVariable#value
        module Value
          extend HubspotSDK::Internal::Type::Union

          variant -> { HubspotSDK::Automation::APIActionDataValue }

          variant -> { HubspotSDK::Automation::APIObjectPropertyValue }

          variant -> { HubspotSDK::Automation::APIStaticValue }

          variant -> { HubspotSDK::Automation::APIRelativeDateTimeValue }

          variant -> { HubspotSDK::Automation::APITimestampValue }

          variant -> { HubspotSDK::Automation::APIIncrementValue }

          variant -> { HubspotSDK::Automation::APIFetchedObjectPropertyValue }

          variant -> { HubspotSDK::Automation::APIAppendObjectPropertyValue }

          variant -> { HubspotSDK::Automation::APIStaticAppendValue }

          variant -> { HubspotSDK::Automation::APIEnrollmentEventPropertyValue }

          # @!method self.variants
          #   @return [Array(HubspotSDK::Models::Automation::APIActionDataValue, HubspotSDK::Models::Automation::APIObjectPropertyValue, HubspotSDK::Models::Automation::APIStaticValue, HubspotSDK::Models::Automation::APIRelativeDateTimeValue, HubspotSDK::Models::Automation::APITimestampValue, HubspotSDK::Models::Automation::APIIncrementValue, HubspotSDK::Models::Automation::APIFetchedObjectPropertyValue, HubspotSDK::Models::Automation::APIAppendObjectPropertyValue, HubspotSDK::Models::Automation::APIStaticAppendValue, HubspotSDK::Models::Automation::APIEnrollmentEventPropertyValue)]
        end
      end
    end
  end
end
