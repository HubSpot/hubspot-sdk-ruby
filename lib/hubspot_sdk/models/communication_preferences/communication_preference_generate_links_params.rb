# frozen_string_literal: true

module HubSpotSDK
  module Models
    module CommunicationPreferences
      # @see HubSpotSDK::Resources::CommunicationPreferences#generate_links
      class CommunicationPreferenceGenerateLinksParams < HubSpotSDK::Models::CommunicationPreferences::LinkGenerationRequest
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!attribute channel
        #   The communication channel for which the links are generated. Must be 'EMAIL'.
        #
        #   @return [Symbol, HubSpotSDK::Models::CommunicationPreferences::LinkGenerationRequest::Channel]
        required :channel, enum: -> { HubSpotSDK::CommunicationPreferences::LinkGenerationRequest::Channel }

        # @!attribute business_unit_id
        #   The identifier of the business unit. Defaults to 0 if not specified.
        #
        #   @return [Integer, nil]
        optional :business_unit_id, Integer

        # @!method initialize(channel:, business_unit_id: nil, request_options: {})
        #   @param channel [Symbol, HubSpotSDK::Models::CommunicationPreferences::LinkGenerationRequest::Channel] The communication channel for which the links are generated. Must be 'EMAIL'.
        #
        #   @param business_unit_id [Integer] The identifier of the business unit. Defaults to 0 if not specified.
        #
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]

        # The communication channel for which the links are generated. Must be 'EMAIL'.
        module Channel
          extend HubSpotSDK::Internal::Type::Enum

          EMAIL = :EMAIL

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
