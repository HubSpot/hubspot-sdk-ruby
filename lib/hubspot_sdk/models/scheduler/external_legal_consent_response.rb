# frozen_string_literal: true

module HubspotSDK
  module Models
    module Scheduler
      class ExternalLegalConsentResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute communication_type_id
        #
        #   @return [String]
        required :communication_type_id, String, api_name: :communicationTypeId

        # @!attribute consented
        #
        #   @return [Boolean]
        required :consented, HubspotSDK::Internal::Type::Boolean

        # @!method initialize(communication_type_id:, consented:)
        #   @param communication_type_id [String]
        #   @param consented [Boolean]
      end
    end
  end
end
