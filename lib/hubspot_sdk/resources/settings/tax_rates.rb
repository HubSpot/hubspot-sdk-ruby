# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Settings
      class TaxRates
        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Settings::TaxRateListParams} for more details.
        #
        # Retrieve a paginated list of all tax rates set up in the account tax rate
        # library
        #
        # @overload list(active: nil, after: nil, limit: nil, request_options: {})
        #
        # @param active [Boolean]
        #
        # @param after [String] The paging cursor token of the last successfully read resource will be returned
        #
        # @param limit [Integer] The maximum number of results to display per page.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Internal::Page<HubspotSDK::Models::Settings::PublicTaxRateGroup>]
        #
        # @see HubspotSDK::Models::Settings::TaxRateListParams
        def list(params = {})
          parsed, options = HubspotSDK::Settings::TaxRateListParams.dump_request(params)
          query = HubspotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "tax-rates/2026-03/tax-rates",
            query: query,
            page: HubspotSDK::Internal::Page,
            model: HubspotSDK::Settings::PublicTaxRateGroup,
            options: options
          )
        end

        # Retrieve a specific tax rate by its `taxRateGroupId`.
        #
        # @overload get(tax_rate_group_id, request_options: {})
        #
        # @param tax_rate_group_id [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Settings::PublicTaxRateGroup]
        #
        # @see HubspotSDK::Models::Settings::TaxRateGetParams
        def get(tax_rate_group_id, params = {})
          @client.request(
            method: :get,
            path: ["tax-rates/2026-03/tax-rates/%1$s", tax_rate_group_id],
            model: HubspotSDK::Settings::PublicTaxRateGroup,
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
