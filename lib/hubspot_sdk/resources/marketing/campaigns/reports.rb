# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Marketing
      class Campaigns
        class Reports
          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Marketing::Campaigns::ReportGetAttributionMetricsParams}
          # for more details.
          #
          # This endpoint retrieves key attribution metrics for a specified campaign, such
          # as sessions, new contacts, and influenced contacts.
          #
          # @overload get_attribution_metrics(campaign_guid, end_date: nil, start_date: nil, request_options: {})
          #
          # @param campaign_guid [String] Unique identifier for the campaign, formatted as a UUID.
          #
          # @param end_date [String] End date for the report data, formatted as YYYY-MM-DD.
          #
          # @param start_date [String] The start date for the report data, formatted as YYYY-MM-DD.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Marketing::MetricsCounters]
          #
          # @see HubspotSDK::Models::Marketing::Campaigns::ReportGetAttributionMetricsParams
          def get_attribution_metrics(campaign_guid, params = {})
            parsed, options =
              HubspotSDK::Marketing::Campaigns::ReportGetAttributionMetricsParams.dump_request(params)
            @client.request(
              method: :get,
              path: ["marketing/v3/campaigns/%1$s/reports/metrics", campaign_guid],
              query: parsed.transform_keys(end_date: "endDate", start_date: "startDate"),
              model: HubspotSDK::Marketing::MetricsCounters,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Marketing::Campaigns::ReportGetRevenueAttributionParams}
          # for more details.
          #
          # Fetch revenue attribution report data for a specified campaign
          #
          # @overload get_revenue_attribution(campaign_guid, attribution_model: nil, end_date: nil, start_date: nil, request_options: {})
          #
          # @param campaign_guid [String] Unique identifier for the campaign, formatted as a UUID.
          #
          # @param attribution_model [String] Allowed values: LINEAR, FIRST_INTERACTION, LAST_INTERACTION, FULL_PATH, U_SHAPED
          #
          # @param end_date [String] End date for the report data, formatted as YYYY-MM-DD.
          #
          # @param start_date [String] The start date for the report data, formatted as YYYY-MM-DD.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Marketing::RevenueAttributionAggregate]
          #
          # @see HubspotSDK::Models::Marketing::Campaigns::ReportGetRevenueAttributionParams
          def get_revenue_attribution(campaign_guid, params = {})
            parsed, options =
              HubspotSDK::Marketing::Campaigns::ReportGetRevenueAttributionParams.dump_request(params)
            @client.request(
              method: :get,
              path: ["marketing/v3/campaigns/%1$s/reports/revenue", campaign_guid],
              query: parsed.transform_keys(
                attribution_model: "attributionModel",
                end_date: "endDate",
                start_date: "startDate"
              ),
              model: HubspotSDK::Marketing::RevenueAttributionAggregate,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Marketing::Campaigns::ReportListContactIDsByTypeParams} for
          # more details.
          #
          # Fetch the list of contact IDs for the specified campaign and contact type
          #
          # @overload list_contact_ids_by_type(contact_type, campaign_guid:, after: nil, end_date: nil, limit: nil, start_date: nil, request_options: {})
          #
          # @param contact_type [String] Path param: The type of metric to filter the influenced contacts. Allowed values
          #
          # @param campaign_guid [String] Path param: Unique identifier for the campaign, formatted as a UUID.
          #
          # @param after [String] Query param: A cursor for pagination. If provided, the results will start after
          #
          # @param end_date [String] Query param: End date for the report data, formatted as YYYY-MM-DD.
          #
          # @param limit [Integer] Query param: Limit for the number of contacts to fetch
          #
          # @param start_date [String] Query param: The start date for the report data, formatted as YYYY-MM-DD.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Internal::Page<HubspotSDK::Models::Marketing::ContactReference>]
          #
          # @see HubspotSDK::Models::Marketing::Campaigns::ReportListContactIDsByTypeParams
          def list_contact_ids_by_type(contact_type, params)
            parsed, options = HubspotSDK::Marketing::Campaigns::ReportListContactIDsByTypeParams.dump_request(params)
            campaign_guid =
              parsed.delete(:campaign_guid) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["marketing/v3/campaigns/%1$s/reports/contacts/%2$s", campaign_guid, contact_type],
              query: parsed.transform_keys(end_date: "endDate", start_date: "startDate"),
              page: HubspotSDK::Internal::Page,
              model: HubspotSDK::Marketing::ContactReference,
              options: options
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
end
