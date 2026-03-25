# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      # @see HubspotSDK::Resources::Automation::Sequences#get_enrollment_by_contact_id
      class SequenceGetEnrollmentByContactIDParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute contact_id
        #
        #   @return [String]
        required :contact_id, String

        # @!method initialize(contact_id:, request_options: {})
        #   @param contact_id [String]
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
