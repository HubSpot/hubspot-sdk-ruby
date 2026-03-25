# frozen_string_literal: true

module HubspotSDK
  module Models
    module Settings
      # @see HubspotSDK::Resources::Settings::TaxRates#get
      class TaxRateGetParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute tax_rate_group_id
        #
        #   @return [String]
        required :tax_rate_group_id, String

        # @!method initialize(tax_rate_group_id:, request_options: {})
        #   @param tax_rate_group_id [String]
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
