# frozen_string_literal: true

module HubspotSDK
  module Models
    module Settings
      module Currencies
        module ExchangeRates
          # @see HubspotSDK::Resources::Settings::Currencies::ExchangeRates::Batch#get
          class BatchGetParams < HubspotSDK::Models::Settings::BatchInputPublicObjectID
            extend HubspotSDK::Internal::Type::RequestParameters::Converter
            include HubspotSDK::Internal::Type::RequestParameters

            # @!method initialize(request_options: {})
            #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
