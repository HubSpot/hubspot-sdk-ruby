# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Settings
      class TaxRates
        # Retrieve a paginated list of all tax rates set up in the account tax rate
        # library
        #
        # @overload list(request_options: {})
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Settings::TaxRateListResponse]
        #
        # @see HubspotSDK::Models::Settings::TaxRateListParams
        def list(params = {})
          @client.request(
            method: :get,
            path: "tax-rates/v1/tax-rates",
            model: HubspotSDK::Models::Settings::TaxRateListResponse,
            options: params[:request_options]
          )
        end

        # Retrieve a specific tax rate by its `taxRateGroupId`.
        #
        # @overload get(tax_rate_group_id, request_options: {})
        #
        # @param tax_rate_group_id [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Settings::TaxRateGetResponse]
        #
        # @see HubspotSDK::Models::Settings::TaxRateGetParams
        def get(tax_rate_group_id, params = {})
          @client.request(
            method: :get,
            path: ["tax-rates/v1/tax-rates/%1$s", tax_rate_group_id],
            model: HubspotSDK::Models::Settings::TaxRateGetResponse,
            options: params[:request_options]
          )
        end

        # @api private
        #
        # @param client [HubspotSDK::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
