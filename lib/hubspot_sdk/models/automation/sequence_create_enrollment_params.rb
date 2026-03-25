# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      # @see HubspotSDK::Resources::Automation::Sequences#create_enrollment
      class SequenceCreateEnrollmentParams < HubspotSDK::Models::Automation::PublicSequenceEnrollmentRequest
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute user_id
        #   The unique identifier of the user performing the enrollment. This parameter is
        #   required.
        #
        #   @return [String]
        required :user_id, String

        # @!method initialize(user_id:, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Automation::SequenceCreateEnrollmentParams} for more
        #   details.
        #
        #   @param user_id [String] The unique identifier of the user performing the enrollment. This parameter is r
        #
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
