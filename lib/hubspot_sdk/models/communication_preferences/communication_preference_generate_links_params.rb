# frozen_string_literal: true

module HubspotSDK
  module Models
    module CommunicationPreferences
      # @see HubspotSDK::Resources::CommunicationPreferences#generate_links
      class CommunicationPreferenceGenerateLinksParams < HubspotSDK::Models::CommunicationPreferences::LinkGenerationRequest
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute channel
        #   The communication channel for which the links are generated. Must be 'EMAIL'.
        #
        #   @return [Symbol, HubspotSDK::Models::CommunicationPreferences::LinkGenerationRequest::Channel]
        required :channel, enum: -> { HubspotSDK::CommunicationPreferences::LinkGenerationRequest::Channel }

        # @!attribute business_unit_id
        #   The ID of the business unit associated with the request. Defaults to 0.
        #
        #   @return [Integer, nil]
        optional :business_unit_id, Integer

        # @!method initialize(channel:, business_unit_id: nil, request_options: {})
        #   @param channel [Symbol, HubspotSDK::Models::CommunicationPreferences::LinkGenerationRequest::Channel] The communication channel for which the links are generated. Must be 'EMAIL'.
        #
        #   @param business_unit_id [Integer] The ID of the business unit associated with the request. Defaults to 0.
        #
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]

        # The communication channel for which the links are generated. Must be 'EMAIL'.
        module Channel
          extend HubspotSDK::Internal::Type::Enum

          EMAIL = :EMAIL

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
