# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Marketing
      class Campaigns
        class Assets
          # Associate a specified asset with a campaign. Using the API, you can create
          # associations for the following asset types: ads, blog posts, calls, case
          # studies, CTAs, CTAs (legacy), external website pages, feedback surveys, forms,
          # files, knowledge base articles, landing pages, marketing email, marketing
          # events, meetings, playbooks, podcast episodes, sales documents, sales emails,
          # sequences, SMS, social posts, static lists, videos, website pages, and
          # workflows.
          #
          # For other asset types, it is recommended to manage your associations directly in
          # the campaign tool in HubSpot.
          #
          # @overload update(asset_id, campaign_guid:, asset_type:, request_options: {})
          #
          # @param asset_id [String]
          # @param campaign_guid [String]
          # @param asset_type [String]
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubSpotSDK::Models::Marketing::Campaigns::AssetUpdateParams
          def update(asset_id, params)
            parsed, options = HubSpotSDK::Marketing::Campaigns::AssetUpdateParams.dump_request(params)
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
          # {HubSpotSDK::Models::Marketing::Campaigns::AssetListParams} for more details.
          #
          # This endpoint lists all assets of the campaign by asset type. The assetType
          # parameter is required, and each request can only fetch assets of a single type.
          # Asset metrics can also be fetched along with the assets; they are available only
          # if start and end dates are provided.
          #
          # @overload list(asset_type, campaign_guid:, after: nil, end_date: nil, limit: nil, start_date: nil, request_options: {})
          #
          # @param asset_type [String] Path param
          #
          # @param campaign_guid [String] Path param
          #
          # @param after [String] Query param: The paging cursor token of the last successfully read resource will
          #
          # @param end_date [String] Query param
          #
          # @param limit [String] Query param: The maximum number of results to display per page.
          #
          # @param start_date [String] Query param
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Models::Marketing::CollectionResponsePublicCampaignAssetForwardPaging]
          #
          # @see HubSpotSDK::Models::Marketing::Campaigns::AssetListParams
          def list(asset_type, params)
            parsed, options = HubSpotSDK::Marketing::Campaigns::AssetListParams.dump_request(params)
            query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
            campaign_guid =
              parsed.delete(:campaign_guid) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["marketing/campaigns/2026-03/%1$s/assets/%2$s", campaign_guid, asset_type],
              query: query.transform_keys(end_date: "endDate", start_date: "startDate"),
              model: HubSpotSDK::Marketing::CollectionResponsePublicCampaignAssetForwardPaging,
              options: options
            )
          end

          # Disassociate a specified asset from a campaign. Using the API, you can remove
          # associations for the following asset types: ads, blog posts, calls, case
          # studies, CTAs, CTAs (legacy), external website pages, feedback surveys, forms,
          # files, knowledge base articles, landing pages, marketing email, marketing
          # events, meetings, playbooks, podcast episodes, sales documents, sales emails,
          # sequences, SMS, social posts, static lists, videos, website pages, and
          # workflows.
          #
          # For other asset types, it is recommended to manage your associations directly in
          # the campaign tool in HubSpot.
          #
          # @overload delete(asset_id, campaign_guid:, asset_type:, request_options: {})
          #
          # @param asset_id [String]
          # @param campaign_guid [String]
          # @param asset_type [String]
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubSpotSDK::Models::Marketing::Campaigns::AssetDeleteParams
          def delete(asset_id, params)
            parsed, options = HubSpotSDK::Marketing::Campaigns::AssetDeleteParams.dump_request(params)
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
          # @param client [HubSpotSDK::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
