# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Marketing
      class Campaigns
        class Batch
          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Marketing::Campaigns::BatchCreateParams} for more details.
          #
          # This endpoint creates a batch of campaigns. The maximum number of items in a
          # batch request is 50. The campaigns in the response are not guaranteed to be in
          # the same order as they were provided in the request.
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
          # This endpoint updates a batch of campaigns based on the provided input data. The
          # maximum number of items in a batch request is 50. If an empty string ("") is
          # passed for any property in the Batch Update, it will reset that property's
          # value.
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
          # This endpoint deletes a batch of campaigns. The maximum number of items in a
          # batch request is 50. The response will always be 204 No Content, regardless of
          # whether the campaigns exist or not, whether they were successfully deleted or
          # not, or if only some of the campaigns in the batch were deleted.
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
          # This endpoint reads a batch of campaigns based on the provided input data and
          # returns the campaigns along with their associated assets. The maximum number of
          # items in a batch request is 50. The campaigns in the response are not guaranteed
          # to be in the same order as they were provided in the request. If duplicate
          # campaign IDs are provided in the request, duplicates will be ignored. The
          # response will include only unique IDs and will be returned without duplicates.
          #
          # @overload get(inputs:, end_date: nil, properties: nil, start_date: nil, request_options: {})
          #
          # @param inputs [Array<HubspotSDK::Models::Marketing::PublicCampaignReadInput>] Body param: An array of PublicCampaignReadInput objects, each containing the ID
          #
          # @param end_date [String] Query param
          #
          # @param properties [Array<String>] Query param
          #
          # @param start_date [String] Query param
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
