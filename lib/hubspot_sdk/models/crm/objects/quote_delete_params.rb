# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      module Objects
        # @see HubSpotSDK::Resources::Crm::Objects::Quotes#delete
        class QuoteDeleteParams < HubSpotSDK::Internal::Type::BaseModel
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          # @!attribute quote_id
          #
          #   @return [String]
          required :quote_id, String

          # @!method initialize(quote_id:, request_options: {})
          #   @param quote_id [String]
          #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
