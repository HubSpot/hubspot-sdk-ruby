# frozen_string_literal: true

module HubspotSDK
  module Models
    module Scheduler
      class ExternalLegalConsentResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute communication_type_id
        #   The ID of communication consent form being recorded.
        #
        #   @return [String]
        required :communication_type_id, String, api_name: :communicationTypeId

        # @!attribute consented
        #   Whether the user has given consent for the specified communication type.
        #
        #   @return [Boolean]
        required :consented, HubspotSDK::Internal::Type::Boolean

        # @!method initialize(communication_type_id:, consented:)
        #   @param communication_type_id [String] The ID of communication consent form being recorded.
        #
        #   @param consented [Boolean] Whether the user has given consent for the specified communication type.
      end
    end
  end
end
