# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Marketing
      class Campaigns
        # @return [HubSpotSDK::Resources::Marketing::Campaigns::Assets]
        attr_reader :assets

        # @return [HubSpotSDK::Resources::Marketing::Campaigns::Batch]
        attr_reader :batch

        # @return [HubSpotSDK::Resources::Marketing::Campaigns::Budget]
        attr_reader :budget

        # @return [HubSpotSDK::Resources::Marketing::Campaigns::Metrics]
        attr_reader :metrics

        # @return [HubSpotSDK::Resources::Marketing::Campaigns::Spend]
        attr_reader :spend

        # Some parameter documentations has been truncated, see
        # {HubSpotSDK::Models::Marketing::CampaignCreateParams} for more details.
        #
        # Create a campaign with the specified properties and receive a copy of the
        # campaign object, including its ID. Note that the 'hs_goal' property is
        # deprecated and will be ignored if provided.
        #
        # @overload create(properties:, request_options: {})
        #
        # @param properties [Hash{Symbol=>String}] A collection of key-value pairs representing the properties of the campaign. Eac
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Marketing::PublicCampaign]
        #
        # @see HubSpotSDK::Models::Marketing::CampaignCreateParams
        def create(params)
          parsed, options = HubSpotSDK::Marketing::CampaignCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "marketing/campaigns/2026-03",
            body: parsed,
            model: HubSpotSDK::Marketing::PublicCampaign,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubSpotSDK::Models::Marketing::CampaignUpdateParams} for more details.
        #
        # Perform a partial update of a campaign identified by the specified campaignGuid.
        # Provided property values will be overwritten. Read-only and non-existent
        # properties will cause 400 error. If an empty string is passed for any property
        # in the Batch Update, it will reset that property's value.
        #
        # @overload update(campaign_guid, properties:, request_options: {})
        #
        # @param campaign_guid [String]
        #
        # @param properties [Hash{Symbol=>String}] A collection of key-value pairs representing the properties of the campaign. Eac
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Marketing::PublicCampaign]
        #
        # @see HubSpotSDK::Models::Marketing::CampaignUpdateParams
        def update(campaign_guid, params)
          parsed, options = HubSpotSDK::Marketing::CampaignUpdateParams.dump_request(params)
          @client.request(
            method: :patch,
            path: ["marketing/campaigns/2026-03/%1$s", campaign_guid],
            body: parsed,
            model: HubSpotSDK::Marketing::PublicCampaign,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubSpotSDK::Models::Marketing::CampaignListParams} for more details.
        #
        # Retrieve a paginated list of campaigns from your HubSpot account. This endpoint
        # allows you to specify sorting, pagination, and filtering options to tailor the
        # results to your needs.
        #
        # @overload list(after: nil, limit: nil, name: nil, properties: nil, sort: nil, request_options: {})
        #
        # @param after [String] The paging cursor token of the last successfully read resource will be returned
        #
        # @param limit [Integer] The maximum number of results to display per page.
        #
        # @param name [String]
        #
        # @param properties [Array<String>]
        #
        # @param sort [String]
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Internal::Page<HubSpotSDK::Models::Marketing::PublicCampaign>]
        #
        # @see HubSpotSDK::Models::Marketing::CampaignListParams
        def list(params = {})
          parsed, options = HubSpotSDK::Marketing::CampaignListParams.dump_request(params)
          query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "marketing/campaigns/2026-03",
            query: query,
            page: HubSpotSDK::Internal::Page,
            model: HubSpotSDK::Marketing::PublicCampaign,
            options: options
          )
        end

        # Delete a specified campaign from the system. This call will return a 204 No
        # Content response regardless of whether the campaignGuid provided corresponds to
        # an existing campaign or not.
        #
        # @overload delete(campaign_guid, request_options: {})
        #
        # @param campaign_guid [String]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubSpotSDK::Models::Marketing::CampaignDeleteParams
        def delete(campaign_guid, params = {})
          @client.request(
            method: :delete,
            path: ["marketing/campaigns/2026-03/%1$s", campaign_guid],
            model: NilClass,
            options: params[:request_options]
          )
        end

        # Get a campaign identified by a specific campaignGuid with the given properties.
        # Along with the campaign information, it also returns information about assets.
        # Depending on the query parameters used, this can also be used to return
        # information about the corresponding assets' metrics. Metrics are available only
        # if startDate and endDate are provided.
        #
        # @overload get(campaign_guid, end_date: nil, properties: nil, start_date: nil, request_options: {})
        #
        # @param campaign_guid [String]
        # @param end_date [String]
        # @param properties [Array<String>]
        # @param start_date [String]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Marketing::PublicCampaignWithAssets]
        #
        # @see HubSpotSDK::Models::Marketing::CampaignGetParams
        def get(campaign_guid, params = {})
          parsed, options = HubSpotSDK::Marketing::CampaignGetParams.dump_request(params)
          query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["marketing/campaigns/2026-03/%1$s", campaign_guid],
            query: query.transform_keys(end_date: "endDate", start_date: "startDate"),
            model: HubSpotSDK::Marketing::PublicCampaignWithAssets,
            options: options
          )
        end

        # @api private
        #
        # @param client [HubSpotSDK::Client]
        def initialize(client:)
          @client = client
          @assets = HubSpotSDK::Resources::Marketing::Campaigns::Assets.new(client: client)
          @batch = HubSpotSDK::Resources::Marketing::Campaigns::Batch.new(client: client)
          @budget = HubSpotSDK::Resources::Marketing::Campaigns::Budget.new(client: client)
          @metrics = HubSpotSDK::Resources::Marketing::Campaigns::Metrics.new(client: client)
          @spend = HubSpotSDK::Resources::Marketing::Campaigns::Spend.new(client: client)
        end
      end
    end
  end
end
