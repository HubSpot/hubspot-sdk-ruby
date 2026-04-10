# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Settings
      # @see HubSpotSDK::Resources::Settings::Currencies#update_company_currency
      class CurrencyUpdateCompanyCurrencyParams < HubSpotSDK::Models::Settings::CompanyCurrencyUpdateRequest
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!method initialize(request_options: {})
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
