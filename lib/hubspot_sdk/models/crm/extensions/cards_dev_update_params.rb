# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      module Extensions
        # @see HubSpotSDK::Resources::Crm::Extensions::CardsDev#update
        class CardsDevUpdateParams < HubSpotSDK::Models::Crm::Extensions::CardPatchRequest
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          # @!attribute app_id
          #
          #   @return [Integer]
          required :app_id, Integer

          # @!attribute card_id
          #
          #   @return [String]
          required :card_id, String

          # @!method initialize(app_id:, card_id:, request_options: {})
          #   @param app_id [Integer]
          #   @param card_id [String]
          #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
