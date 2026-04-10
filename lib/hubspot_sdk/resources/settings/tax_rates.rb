# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Settings
      class TaxRates
        # Some parameter documentations has been truncated, see
        # {HubSpotSDK::Models::Settings::TaxRateListParams} for more details.
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
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Internal::Page<HubSpotSDK::Models::Settings::PublicTaxRateGroup>]
        #
        # @see HubSpotSDK::Models::Settings::TaxRateListParams
        def list(params = {})
          parsed, options = HubSpotSDK::Settings::TaxRateListParams.dump_request(params)
          query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "tax-rates/2026-03/tax-rates",
            query: query,
            page: HubSpotSDK::Internal::Page,
            model: HubSpotSDK::Settings::PublicTaxRateGroup,
            options: options
          )
        end

        # Retrieve a specific tax rate by its `taxRateGroupId`.
        #
        # @overload get(tax_rate_group_id, request_options: {})
        #
        # @param tax_rate_group_id [String]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Settings::PublicTaxRateGroup]
        #
        # @see HubSpotSDK::Models::Settings::TaxRateGetParams
        def get(tax_rate_group_id, params = {})
          @client.request(
            method: :get,
            path: ["tax-rates/2026-03/tax-rates/%1$s", tax_rate_group_id],
            model: HubSpotSDK::Settings::PublicTaxRateGroup,
            options: params[:request_options]
          )
        end

        # @api private
        #
        # @param client [HubSpotSDK::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
