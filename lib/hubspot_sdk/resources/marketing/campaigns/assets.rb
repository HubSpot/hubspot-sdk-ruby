# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Marketing
      class Campaigns
        class Assets
          # Associate an asset with a specific campaign in your HubSpot account. This
          # operation allows you to link an asset of a specified type and ID to a campaign,
          # facilitating better organization and tracking of campaign resources.
          #
          # @overload update(asset_id, campaign_guid:, asset_type:, request_options: {})
          #
          # @param asset_id [String] The unique identifier of the asset to be associated with the campaign.
          #
          # @param campaign_guid [String] The unique identifier of the campaign to which the asset will be associated.
          #
          # @param asset_type [String] The type of asset to be associated with the campaign.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Marketing::Campaigns::AssetUpdateParams
          def update(asset_id, params)
            parsed, options = HubspotSDK::Marketing::Campaigns::AssetUpdateParams.dump_request(params)
            campaign_guid =
              parsed.delete(:campaign_guid) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            asset_type =
              parsed.delete(:asset_type) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :put,
              path: [
                "marketing/campaigns/2026-03/%1$s/assets/%2$s/%3$s",
                campaign_guid,
                asset_type,
                asset_id
              ],
              model: NilClass,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Marketing::Campaigns::AssetListParams} for more details.
          #
          # List all assets of a specified campaign by asset type. This endpoint allows you
          # to retrieve assets associated with a campaign, filtered by the type of asset. It
          # supports pagination and date filtering to manage and refine the results.
          #
          # @overload list(asset_type, campaign_guid:, after: nil, end_date: nil, limit: nil, start_date: nil, request_options: {})
          #
          # @param asset_type [String] Path param: The type of asset to list for the specified campaign.
          #
          # @param campaign_guid [String] Path param: The unique identifier of the campaign.
          #
          # @param after [String] Query param: The paging cursor token of the last successfully read resource will
          #
          # @param end_date [String] Query param: The end date for filtering assets, in YYYY-MM-DD format.
          #
          # @param limit [String] Query param: The maximum number of results to display per page.
          #
          # @param start_date [String] Query param: The start date for filtering assets, in YYYY-MM-DD format.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Marketing::CollectionResponsePublicCampaignAssetForwardPaging]
          #
          # @see HubspotSDK::Models::Marketing::Campaigns::AssetListParams
          def list(asset_type, params)
            parsed, options = HubspotSDK::Marketing::Campaigns::AssetListParams.dump_request(params)
            query = HubspotSDK::Internal::Util.encode_query_params(parsed)
            campaign_guid =
              parsed.delete(:campaign_guid) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["marketing/campaigns/2026-03/%1$s/assets/%2$s", campaign_guid, asset_type],
              query: query.transform_keys(end_date: "endDate", start_date: "startDate"),
              model: HubspotSDK::Marketing::CollectionResponsePublicCampaignAssetForwardPaging,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Marketing::Campaigns::AssetDeleteParams} for more details.
          #
          # Disassociate an asset from a specific campaign. This operation removes the
          # association between the specified asset and campaign, effectively detaching the
          # asset from the campaign's context.
          #
          # @overload delete(asset_id, campaign_guid:, asset_type:, request_options: {})
          #
          # @param asset_id [String] The unique identifier of the asset to be disassociated from the campaign.
          #
          # @param campaign_guid [String] The unique identifier of the campaign from which the asset will be disassociated
          #
          # @param asset_type [String] The type of asset to be disassociated from the campaign.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Marketing::Campaigns::AssetDeleteParams
          def delete(asset_id, params)
            parsed, options = HubspotSDK::Marketing::Campaigns::AssetDeleteParams.dump_request(params)
            campaign_guid =
              parsed.delete(:campaign_guid) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            asset_type =
              parsed.delete(:asset_type) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :delete,
              path: [
                "marketing/campaigns/2026-03/%1$s/assets/%2$s/%3$s",
                campaign_guid,
                asset_type,
                asset_id
              ],
              model: NilClass,
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
