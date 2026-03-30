# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      module Transactional
        # @see HubspotSDK::Resources::Marketing::Transactional::SmtpTokens#delete
        class SmtpTokenDeleteParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute token_id
          #
          #   @return [String]
          required :token_id, String

          # @!method initialize(token_id:, request_options: {})
          #   @param token_id [String]
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
