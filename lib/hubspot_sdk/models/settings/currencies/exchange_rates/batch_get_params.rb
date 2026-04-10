# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Settings
      module Currencies
        module ExchangeRates
          # @see HubSpotSDK::Resources::Settings::Currencies::ExchangeRates::Batch#get
          class BatchGetParams < HubSpotSDK::Models::BatchInputPublicObjectID
            extend HubSpotSDK::Internal::Type::RequestParameters::Converter
            include HubSpotSDK::Internal::Type::RequestParameters

            # @!method initialize(request_options: {})
            #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
