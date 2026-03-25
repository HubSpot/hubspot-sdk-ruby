# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Marketing
      class Campaigns
        class Batch
          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Marketing::Campaigns::BatchCreateParams} for more details.
          #
          # Create a batch of campaigns with specified properties. This endpoint allows for
          # the creation of multiple campaigns in a single request. Note that the 'hs_goal'
          # property is deprecated and will be ignored if provided.
          #
          # @overload create(inputs:, request_options: {})
          #
          # @param inputs [Array<HubspotSDK::Models::Marketing::PublicCampaignInput>] An array of PublicCampaignInput objects, each representing the properties of a c
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Marketing::BatchResponsePublicCampaign]
          #
          # @see HubspotSDK::Models::Marketing::Campaigns::BatchCreateParams
          def create(params)
            parsed, options = HubspotSDK::Marketing::Campaigns::BatchCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: "marketing/campaigns/2026-03/batch/create",
              body: parsed,
              model: HubspotSDK::Marketing::BatchResponsePublicCampaign,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Marketing::Campaigns::BatchUpdateParams} for more details.
          #
          # Update a batch of marketing campaigns with specified properties. This endpoint
          # allows you to modify multiple campaigns in one request. Note that the 'hs_goal'
          # property is deprecated and will be ignored if provided.
          #
          # @overload update(inputs:, request_options: {})
          #
          # @param inputs [Array<HubspotSDK::Models::Marketing::PublicCampaignBatchUpdateItem>] An array of PublicCampaignBatchUpdateItem objects, each containing the ID and pr
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Marketing::BatchResponsePublicCampaign]
          #
          # @see HubspotSDK::Models::Marketing::Campaigns::BatchUpdateParams
          def update(params)
            parsed, options = HubspotSDK::Marketing::Campaigns::BatchUpdateParams.dump_request(params)
            @client.request(
              method: :post,
              path: "marketing/campaigns/2026-03/batch/update",
              body: parsed,
              model: HubspotSDK::Marketing::BatchResponsePublicCampaign,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Marketing::Campaigns::BatchDeleteParams} for more details.
          #
          # Archive a batch of marketing campaigns in your HubSpot account. This operation
          # permanently removes the specified campaigns, making them inaccessible. It is
          # useful for cleaning up outdated or unnecessary campaigns in bulk.
          #
          # @overload delete(inputs:, request_options: {})
          #
          # @param inputs [Array<HubspotSDK::Models::Marketing::PublicCampaignDeleteInput>] An array of PublicCampaignDeleteInput objects, each specifying a campaign to be
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Marketing::Campaigns::BatchDeleteParams
          def delete(params)
            parsed, options = HubspotSDK::Marketing::Campaigns::BatchDeleteParams.dump_request(params)
            @client.request(
              method: :post,
              path: "marketing/campaigns/2026-03/batch/archive",
              body: parsed,
              model: NilClass,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Marketing::Campaigns::BatchGetParams} for more details.
          #
          # Retrieve a batch of campaigns with specified properties and date range. This
          # endpoint allows you to filter campaigns by start and end dates and specify which
          # properties to include in the response.
          #
          # @overload get(inputs:, end_date: nil, properties: nil, start_date: nil, request_options: {})
          #
          # @param inputs [Array<HubspotSDK::Models::Marketing::PublicCampaignReadInput>] Body param: An array of PublicCampaignReadInput objects, each containing the ID
          #
          # @param end_date [String] Query param: The end date for filtering campaigns, in YYYY-MM-DD format.
          #
          # @param properties [Array<String>] Query param: A comma-separated list of property names to include in the response
          #
          # @param start_date [String] Query param: The start date for filtering campaigns, in YYYY-MM-DD format.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Marketing::BatchResponsePublicCampaignWithAssets]
          #
          # @see HubspotSDK::Models::Marketing::Campaigns::BatchGetParams
          def get(params)
            query_params = [:end_date, :properties, :start_date]
            parsed, options = HubspotSDK::Marketing::Campaigns::BatchGetParams.dump_request(params)
            query = HubspotSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
            @client.request(
              method: :post,
              path: "marketing/campaigns/2026-03/batch/read",
              query: query.transform_keys(end_date: "endDate", start_date: "startDate"),
              body: parsed.except(*query_params),
              model: HubspotSDK::Marketing::BatchResponsePublicCampaignWithAssets,
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
