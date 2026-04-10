# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Scheduler
      class ExternalCommunicationConsentCheckbox < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute communication_type_id
        #   The ID of the communication consent form being recorded.
        #
        #   @return [String]
        required :communication_type_id, String, api_name: :communicationTypeId

        # @!attribute label
        #   The text label describing the consent being given.
        #
        #   @return [String]
        required :label, String

        # @!attribute required
        #   Whether the consent checkbox is required.
        #
        #   @return [Boolean]
        required :required, HubSpotSDK::Internal::Type::Boolean

        # @!method initialize(communication_type_id:, label:, required:)
        #   @param communication_type_id [String] The ID of the communication consent form being recorded.
        #
        #   @param label [String] The text label describing the consent being given.
        #
        #   @param required [Boolean] Whether the consent checkbox is required.
      end
    end
  end
end
