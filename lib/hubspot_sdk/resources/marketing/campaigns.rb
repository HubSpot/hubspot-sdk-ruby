# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Marketing
      class Campaigns
        # @return [HubspotSDK::Resources::Marketing::Campaigns::Assets]
        attr_reader :assets

        # @return [HubspotSDK::Resources::Marketing::Campaigns::Batch]
        attr_reader :batch

        # @return [HubspotSDK::Resources::Marketing::Campaigns::Budget]
        attr_reader :budget

        # @return [HubspotSDK::Resources::Marketing::Campaigns::Metrics]
        attr_reader :metrics

        # @return [HubspotSDK::Resources::Marketing::Campaigns::Spend]
        attr_reader :spend

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Marketing::CampaignUpdateParams} for more details.
        #
        # Perform a partial update of a campaign identified by the specified ID. Provided
        # property values will be overwritten. Read-only and non-existent properties will
        # be ignored. Properties values can be cleared by passing an empty string. Note:
        # The 'hs_goal' property is deprecated and will be ignored if provided.
        #
        # @overload update(campaign_guid, properties:, request_options: {})
        #
        # @param campaign_guid [String] The unique identifier of the campaign to update.
        #
        # @param properties [Hash{Symbol=>String}] A collection of key-value pairs representing the properties of the campaign. Eac
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Marketing::PublicCampaign]
        #
        # @see HubspotSDK::Models::Marketing::CampaignUpdateParams
        def update(campaign_guid, params)
          parsed, options = HubspotSDK::Marketing::CampaignUpdateParams.dump_request(params)
          @client.request(
            method: :patch,
            path: ["marketing/campaigns/2026-03/%1$s", campaign_guid],
            body: parsed,
            model: HubspotSDK::Marketing::PublicCampaign,
            options: options
          )
        end

        # Delete a specified campaign from the system. This operation removes the campaign
        # identified by the provided campaignGuid from your HubSpot account.
        #
        # @overload delete(campaign_guid, request_options: {})
        #
        # @param campaign_guid [String] The unique identifier of the campaign to delete.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubspotSDK::Models::Marketing::CampaignDeleteParams
        def delete(campaign_guid, params = {})
          @client.request(
            method: :delete,
            path: ["marketing/campaigns/2026-03/%1$s", campaign_guid],
            model: NilClass,
            options: params[:request_options]
          )
        end

        # Read a campaign identified by a specified internal ID. This endpoint allows you
        # to retrieve detailed information about a specific marketing campaign using its
        # unique identifier. It supports filtering the response by specific properties and
        # date ranges.
        #
        # @overload get(campaign_guid, end_date: nil, properties: nil, start_date: nil, request_options: {})
        #
        # @param campaign_guid [String] The unique identifier of the campaign to retrieve.
        #
        # @param end_date [String] The end date for filtering campaign data, in YYYY-MM-DD format.
        #
        # @param properties [Array<String>] A comma-separated list of property names to include in the response.
        #
        # @param start_date [String] The start date for filtering campaign data, in YYYY-MM-DD format.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Marketing::PublicCampaignWithAssets]
        #
        # @see HubspotSDK::Models::Marketing::CampaignGetParams
        def get(campaign_guid, params = {})
          parsed, options = HubspotSDK::Marketing::CampaignGetParams.dump_request(params)
          query = HubspotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["marketing/campaigns/2026-03/%1$s", campaign_guid],
            query: query.transform_keys(end_date: "endDate", start_date: "startDate"),
            model: HubspotSDK::Marketing::PublicCampaignWithAssets,
            options: options
          )
        end

        # @api private
        #
        # @param client [HubspotSDK::Client]
        def initialize(client:)
          @client = client
          @assets = HubspotSDK::Resources::Marketing::Campaigns::Assets.new(client: client)
          @batch = HubspotSDK::Resources::Marketing::Campaigns::Batch.new(client: client)
          @budget = HubspotSDK::Resources::Marketing::Campaigns::Budget.new(client: client)
          @metrics = HubspotSDK::Resources::Marketing::Campaigns::Metrics.new(client: client)
          @spend = HubspotSDK::Resources::Marketing::Campaigns::Spend.new(client: client)
        end
      end
    end
  end
end
