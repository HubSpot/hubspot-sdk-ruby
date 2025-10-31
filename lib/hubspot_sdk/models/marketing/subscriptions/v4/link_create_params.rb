# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      module Subscriptions
        module V4
          # @see HubspotSDK::Resources::Marketing::Subscriptions::V4::Links#create
          class LinkCreateParams < HubspotSDK::Models::Marketing::Subscriptions::LinkGenerationRequest
            extend HubspotSDK::Internal::Type::RequestParameters::Converter
            include HubspotSDK::Internal::Type::RequestParameters

            # @!attribute channel
            #
            #   @return [Symbol, HubspotSDK::Models::Marketing::Subscriptions::LinkGenerationRequest::Channel]
            required :channel, enum: -> { HubspotSDK::Marketing::Subscriptions::LinkGenerationRequest::Channel }

            # @!attribute business_unit_id
            #
            #   @return [Integer, nil]
            optional :business_unit_id, Integer

            # @!method initialize(channel:, business_unit_id: nil, request_options: {})
            #   @param channel [Symbol, HubspotSDK::Models::Marketing::Subscriptions::LinkGenerationRequest::Channel]
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
  end
end
