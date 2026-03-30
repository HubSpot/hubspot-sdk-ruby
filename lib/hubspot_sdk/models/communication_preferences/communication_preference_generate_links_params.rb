# frozen_string_literal: true

module HubspotSDK
  module Models
    module CommunicationPreferences
      # @see HubspotSDK::Resources::CommunicationPreferences#generate_links
      class CommunicationPreferenceGenerateLinksParams < HubspotSDK::Models::CommunicationPreferences::LinkGenerationRequest
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute channel
        #
        #   @return [Symbol, HubspotSDK::Models::CommunicationPreferences::LinkGenerationRequest::Channel]
        required :channel, enum: -> { HubspotSDK::CommunicationPreferences::LinkGenerationRequest::Channel }

        # @!attribute business_unit_id
        #
        #   @return [Integer, nil]
        optional :business_unit_id, Integer

        # @!method initialize(channel:, business_unit_id: nil, request_options: {})
        #   @param channel [Symbol, HubspotSDK::Models::CommunicationPreferences::LinkGenerationRequest::Channel]
        #   @param business_unit_id [Integer]
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]

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
