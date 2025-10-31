# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      module Transactional
        # @see HubspotSDK::Resources::Marketing::Transactional::SmtpTokens#create
        class SmtpTokenCreateParams < HubspotSDK::Models::Marketing::SmtpAPITokenRequestEgg
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!method initialize(request_options: {})
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
