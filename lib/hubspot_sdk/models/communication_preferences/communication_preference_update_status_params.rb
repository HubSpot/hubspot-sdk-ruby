# frozen_string_literal: true

module HubSpotSDK
  module Models
    module CommunicationPreferences
      # @see HubSpotSDK::Resources::CommunicationPreferences#update_status
      class CommunicationPreferenceUpdateStatusParams < HubSpotSDK::Models::CommunicationPreferences::PartialPublicStatusRequest
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!attribute subscriber_id_string
        #
        #   @return [String]
        required :subscriber_id_string, String

        # @!method initialize(subscriber_id_string:, request_options: {})
        #   @param subscriber_id_string [String]
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
