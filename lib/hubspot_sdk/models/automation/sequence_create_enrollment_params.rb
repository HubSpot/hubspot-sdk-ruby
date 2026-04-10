# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Automation
      # @see HubSpotSDK::Resources::Automation::Sequences#create_enrollment
      class SequenceCreateEnrollmentParams < HubSpotSDK::Models::Automation::PublicSequenceEnrollmentRequest
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!attribute user_id
        #
        #   @return [String]
        required :user_id, String

        # @!method initialize(user_id:, request_options: {})
        #   @param user_id [String]
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
