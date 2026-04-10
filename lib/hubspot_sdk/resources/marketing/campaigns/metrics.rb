# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Marketing
      class Campaigns
        class Metrics
          # This endpoint retrieves key attribution metrics for a specified campaign, such
          # as sessions, new contacts, and influenced contacts.
          #
          # @overload get_attribution_metrics(campaign_guid, end_date: nil, start_date: nil, request_options: {})
          #
          # @param campaign_guid [String] The unique identifier of the campaign
          #
          # @param end_date [String]
          #
          # @param start_date [String]
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Models::Marketing::MetricsCounters]
          #
          # @see HubSpotSDK::Models::Marketing::Campaigns::MetricGetAttributionMetricsParams
          def get_attribution_metrics(campaign_guid, params = {})
            parsed, options =
              HubSpotSDK::Marketing::Campaigns::MetricGetAttributionMetricsParams.dump_request(params)
            query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: ["marketing/campaigns/2026-03/%1$s/reports/metrics", campaign_guid],
              query: query.transform_keys(end_date: "endDate", start_date: "startDate"),
              model: HubSpotSDK::Marketing::MetricsCounters,
              options: options
            )
          end

          # Fetch revenue attribution report data for a specified campaign
          #
          # @overload get_revenue_attribution(campaign_guid, attribution_model: nil, end_date: nil, start_date: nil, request_options: {})
          #
          # @param campaign_guid [String] The unique identifier of the campaign
          #
          # @param attribution_model [String]
          #
          # @param end_date [String] End date to fetch attribution data, YYYY-MM-DD
          #
          # @param start_date [String] Start date to fetch attribution data, YYYY-MM-DD
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Models::Marketing::RevenueAttributionAggregate]
          #
          # @see HubSpotSDK::Models::Marketing::Campaigns::MetricGetRevenueAttributionParams
          def get_revenue_attribution(campaign_guid, params = {})
            parsed, options =
              HubSpotSDK::Marketing::Campaigns::MetricGetRevenueAttributionParams.dump_request(params)
            query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: ["marketing/campaigns/2026-03/%1$s/reports/revenue", campaign_guid],
              query: query.transform_keys(
                attribution_model: "attributionModel",
                end_date: "endDate",
                start_date: "startDate"
              ),
              model: HubSpotSDK::Marketing::RevenueAttributionAggregate,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubSpotSDK::Models::Marketing::Campaigns::MetricListContactIDsByTypeParams} for
          # more details.
          #
          # Fetch the list of contact IDs for the specified campaign and contact type
          #
          # @overload list_contact_ids_by_type(contact_type, campaign_guid:, after: nil, end_date: nil, limit: nil, start_date: nil, request_options: {})
          #
          # @param contact_type [String] Path param: The type of contact to filter the list
          #
          # @param campaign_guid [String] Path param: The unique identifier of the campaign
          #
          # @param after [String] Query param: The paging cursor token of the last successfully read resource will
          #
          # @param end_date [String] Query param
          #
          # @param limit [Integer] Query param: The maximum number of results to display per page.
          #
          # @param start_date [String] Query param
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Internal::Page<HubSpotSDK::Models::Marketing::ContactReference>]
          #
          # @see HubSpotSDK::Models::Marketing::Campaigns::MetricListContactIDsByTypeParams
          def list_contact_ids_by_type(contact_type, params)
            parsed, options = HubSpotSDK::Marketing::Campaigns::MetricListContactIDsByTypeParams.dump_request(params)
            query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
            campaign_guid =
              parsed.delete(:campaign_guid) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["marketing/campaigns/2026-03/%1$s/reports/contacts/%2$s", campaign_guid, contact_type],
              query: query.transform_keys(end_date: "endDate", start_date: "startDate"),
              page: HubSpotSDK::Internal::Page,
              model: HubSpotSDK::Marketing::ContactReference,
              options: options
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
end
