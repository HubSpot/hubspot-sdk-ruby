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

        # @return [HubspotSDK::Resources::Marketing::Campaigns::Reports]
        attr_reader :reports

        # @return [HubspotSDK::Resources::Marketing::Campaigns::Spend]
        attr_reader :spend

        # Create a campaign with the given properties and return the campaign object,
        # including the campaignGuid and created properties.
        #
        # @overload create(properties:, request_options: {})
        #
        # @param properties [Hash{Symbol=>String}]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Marketing::PublicCampaign]
        #
        # @see HubspotSDK::Models::Marketing::CampaignCreateParams
        def create(params)
          parsed, options = HubspotSDK::Marketing::CampaignCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "marketing/v3/campaigns/",
            body: parsed,
            model: HubspotSDK::Marketing::PublicCampaign,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Marketing::CampaignUpdateParams} for more details.
        #
        # Perform a partial update of a campaign identified by the specified campaignGuid.
        # Provided property values will be overwritten. Read-only and non-existent
        # properties will cause 400 error. If an empty string is passed for any property
        # in the Batch Update, it will reset that property's value.
        #
        # @overload update(campaign_guid, properties:, request_options: {})
        #
        # @param campaign_guid [String] Unique identifier for the campaign, formatted as a UUID.
        #
        # @param properties [Hash{Symbol=>String}]
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
            path: ["marketing/v3/campaigns/%1$s", campaign_guid],
            body: parsed,
            model: HubspotSDK::Marketing::PublicCampaign,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Marketing::CampaignListParams} for more details.
        #
        # This endpoint allows users to search for and return a page of campaigns based on
        # various query parameters. Users can filter by name, sort, and paginate through
        # the campaigns, as well as control which properties are returned in the response.
        #
        # @overload list(after: nil, limit: nil, name: nil, properties: nil, sort: nil, request_options: {})
        #
        # @param after [String] A cursor for pagination. If provided, the results will start after the given cur
        #
        # @param limit [Integer] The maximum number of results to return. Allowed values range from 1 to 100
        #
        # @param name [String] A filter to return campaigns whose names contain the specified substring. This a
        #
        # @param properties [Array<String>] A comma-separated list of the properties to be returned in the response. If any
        #
        # @param sort [String] The field by which to sort the results. Allowed values are hs_name, createdAt, u
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Internal::Page<HubspotSDK::Models::Marketing::PublicCampaign>]
        #
        # @see HubspotSDK::Models::Marketing::CampaignListParams
        def list(params = {})
          parsed, options = HubspotSDK::Marketing::CampaignListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "marketing/v3/campaigns/",
            query: parsed,
            page: HubspotSDK::Internal::Page,
            model: HubspotSDK::Marketing::PublicCampaign,
            options: options
          )
        end

        # Delete a specified campaign from the system. This call will return a 204 No
        # Content response regardless of whether the campaignGuid provided corresponds to
        # an existing campaign or not.
        #
        # @overload delete(campaign_guid, request_options: {})
        #
        # @param campaign_guid [String] Unique identifier for the campaign, formatted as a UUID.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubspotSDK::Models::Marketing::CampaignDeleteParams
        def delete(campaign_guid, params = {})
          @client.request(
            method: :delete,
            path: ["marketing/v3/campaigns/%1$s", campaign_guid],
            model: NilClass,
            options: params[:request_options]
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Marketing::CampaignGetParams} for more details.
        #
        # Get a campaign identified by a specific campaignGuid with the given properties.
        # Along with the campaign information, it also returns information about assets.
        # Depending on the query parameters used, this can also be used to return
        # information about the corresponding assets' metrics. Metrics are available only
        # if startDate and endDate are provided.
        #
        # @overload get(campaign_guid, end_date: nil, properties: nil, start_date: nil, request_options: {})
        #
        # @param campaign_guid [String] Unique identifier for the campaign, formatted as a UUID.
        #
        # @param end_date [String] End date to fetch asset metrics, formatted as YYYY-MM-DD. This date is used to
        #
        # @param properties [Array<String>] A comma-separated list of the properties to be returned in the response. If any
        #
        # @param start_date [String] Start date to fetch asset metrics, formatted as YYYY-MM-DD. This date is used to
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Marketing::PublicCampaignWithAssets]
        #
        # @see HubspotSDK::Models::Marketing::CampaignGetParams
        def get(campaign_guid, params = {})
          parsed, options = HubspotSDK::Marketing::CampaignGetParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["marketing/v3/campaigns/%1$s", campaign_guid],
            query: parsed.transform_keys(end_date: "endDate", start_date: "startDate"),
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
          @reports = HubspotSDK::Resources::Marketing::Campaigns::Reports.new(client: client)
          @spend = HubspotSDK::Resources::Marketing::Campaigns::Spend.new(client: client)
        end
      end
    end
  end
end
