# frozen_string_literal: true

module HubspotSDK
  module Models
    module CommunicationPreferences
      class BatchInputPublicStatusRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #   An array of PublicStatusRequest objects, each representing a subscription status
        #   update request. This property is required.
        #
        #   @return [Array<HubspotSDK::Models::CommunicationPreferences::PublicStatusRequest>]
        required :inputs,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CommunicationPreferences::PublicStatusRequest] }

        # @!method initialize(inputs:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::CommunicationPreferences::BatchInputPublicStatusRequest}
        #   for more details.
        #
        #   @param inputs [Array<HubspotSDK::Models::CommunicationPreferences::PublicStatusRequest>] An array of PublicStatusRequest objects, each representing a subscription status
      end
    end
  end
end
