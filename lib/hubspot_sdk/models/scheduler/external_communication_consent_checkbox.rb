# frozen_string_literal: true

module HubspotSDK
  module Models
    module Scheduler
      class ExternalCommunicationConsentCheckbox < HubspotSDK::Internal::Type::BaseModel
        # @!attribute communication_type_id
        #
        #   @return [String]
        required :communication_type_id, String, api_name: :communicationTypeId

        # @!attribute label
        #
        #   @return [String]
        required :label, String

        # @!attribute required
        #
        #   @return [Boolean]
        required :required, HubspotSDK::Internal::Type::Boolean

        # @!method initialize(communication_type_id:, label:, required:)
        #   @param communication_type_id [String]
        #   @param label [String]
        #   @param required [Boolean]
      end
    end
  end
end
