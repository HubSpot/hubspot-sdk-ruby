# frozen_string_literal: true

module HubSpotSDK
  module Models
    module CommunicationPreferences
      class BatchInputPublicStatusRequest < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #   An array of PublicStatusRequest objects, each representing a subscription status
        #   update request. This property is required.
        #
        #   @return [Array<HubSpotSDK::Models::CommunicationPreferences::PublicStatusRequest>]
        required :inputs,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::CommunicationPreferences::PublicStatusRequest] }

        # @!method initialize(inputs:)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::CommunicationPreferences::BatchInputPublicStatusRequest}
        #   for more details.
        #
        #   @param inputs [Array<HubSpotSDK::Models::CommunicationPreferences::PublicStatusRequest>] An array of PublicStatusRequest objects, each representing a subscription status
      end
    end
  end
end
