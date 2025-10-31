# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class APIEnrollmentEventPropertyValue < HubspotSDK::Internal::Type::BaseModel
        # @!attribute enrollment_event_property_token
        #
        #   @return [String]
        required :enrollment_event_property_token, String, api_name: :enrollmentEventPropertyToken

        # @!attribute type
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::APIEnrollmentEventPropertyValue::Type]
        required :type, enum: -> { HubspotSDK::Automation::APIEnrollmentEventPropertyValue::Type }

        # @!method initialize(enrollment_event_property_token:, type:)
        #   @param enrollment_event_property_token [String]
        #   @param type [Symbol, HubspotSDK::Models::Automation::APIEnrollmentEventPropertyValue::Type]

        # @see HubspotSDK::Models::Automation::APIEnrollmentEventPropertyValue#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          ENROLLMENT_EVENT_PROPERTY = :ENROLLMENT_EVENT_PROPERTY

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
