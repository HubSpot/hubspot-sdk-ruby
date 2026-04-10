# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      module Transactional
        # @see HubSpotSDK::Resources::Marketing::Transactional::SmtpTokens#delete
        class SmtpTokenDeleteParams < HubSpotSDK::Internal::Type::BaseModel
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          # @!attribute token_id
          #
          #   @return [String]
          required :token_id, String

          # @!method initialize(token_id:, request_options: {})
          #   @param token_id [String]
          #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
