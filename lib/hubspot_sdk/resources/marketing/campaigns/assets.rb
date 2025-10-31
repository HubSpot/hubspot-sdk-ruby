# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Marketing
      class Campaigns
        class Assets
          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Marketing::Campaigns::AssetUpdateParams} for more details.
          #
          # Associate a specified asset with a campaign. Using the API, you can create and
          # remove associations for the following asset types: forms, static lists, external
          # website pages, sequences, meetings, playbooks, feedback surveys, podcast
          # episodes, sales documents, marketing emails, case studies, knowledge base
          # articles, calls, and CTAs.
          #
          # For other asset types, it is recommended to manage your associations directly in
          # the campaign tool in HubSpot.
          #
          # @overload update(asset_id, campaign_guid:, asset_type:, request_options: {})
          #
          # @param asset_id [String] Id of the asset
          #
          # @param campaign_guid [String] Unique identifier for the campaign, formatted as a UUID
          #
          # @param asset_type [String] The type of asset
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
              path: ["marketing/v3/campaigns/%1$s/assets/%2$s/%3$s", campaign_guid, asset_type, asset_id],
              model: NilClass,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Marketing::Campaigns::AssetListParams} for more details.
          #
          # This endpoint lists all assets of the campaign by asset type. The assetType
          # parameter is required, and each request can only fetch assets of a single type.
          # Asset metrics can also be fetched along with the assets; they are available only
          # if start and end dates are provided.
          #
          # @overload list(asset_type, campaign_guid:, after: nil, end_date: nil, limit: nil, start_date: nil, request_options: {})
          #
          # @param asset_type [String] Path param: The type of asset to fetch.
          #
          # @param campaign_guid [String] Path param: Unique identifier for the campaign, formatted as a UUID.
          #
          # @param after [String] Query param: A cursor for pagination. If provided, the results will start after
          #
          # @param end_date [String] Query param: End date to fetch asset metrics, formatted as YYYY-MM-DD. This date
          #
          # @param limit [String] Query param: The maximum number of results to return.
          #
          # @param start_date [String] Query param: Start date to fetch asset metrics, formatted as YYYY-MM-DD. This da
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Marketing::CollectionResponsePublicCampaignAssetForwardPaging]
          #
          # @see HubspotSDK::Models::Marketing::Campaigns::AssetListParams
          def list(asset_type, params)
            parsed, options = HubspotSDK::Marketing::Campaigns::AssetListParams.dump_request(params)
            campaign_guid =
              parsed.delete(:campaign_guid) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["marketing/v3/campaigns/%1$s/assets/%2$s", campaign_guid, asset_type],
              query: parsed.transform_keys(end_date: "endDate", start_date: "startDate"),
              model: HubspotSDK::Marketing::CollectionResponsePublicCampaignAssetForwardPaging,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Marketing::Campaigns::AssetDeleteParams} for more details.
          #
          # Disassociate a specified asset from a campaign. Important: Currently, only the
          # following asset types can be associated and disassociated via the API: Forms,
          # Static lists, External website pages
          #
          # @overload delete(asset_id, campaign_guid:, asset_type:, request_options: {})
          #
          # @param asset_id [String] Id of the asset
          #
          # @param campaign_guid [String] Unique identifier for the campaign, formatted as a UUID.
          #
          # @param asset_type [String] The type of asset
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
              path: ["marketing/v3/campaigns/%1$s/assets/%2$s/%3$s", campaign_guid, asset_type, asset_id],
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
