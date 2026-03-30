# typed: strong

module HubspotSDK
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
          sig do
            params(
              asset_id: String,
              campaign_guid: String,
              asset_type: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def update(asset_id, campaign_guid:, asset_type:, request_options: {})
          end

          # This endpoint lists all assets of the campaign by asset type. The assetType
          # parameter is required, and each request can only fetch assets of a single type.
          # Asset metrics can also be fetched along with the assets; they are available only
          # if start and end dates are provided.
          sig do
            params(
              asset_type: String,
              campaign_guid: String,
              after: String,
              end_date: String,
              limit: String,
              start_date: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(
              HubspotSDK::Marketing::CollectionResponsePublicCampaignAssetForwardPaging
            )
          end
          def list(
            # Path param
            asset_type,
            # Path param
            campaign_guid:,
            # Query param: The paging cursor token of the last successfully read resource will
            # be returned as the `paging.next.after` JSON property of a paged response
            # containing more results.
            after: nil,
            # Query param
            end_date: nil,
            # Query param: The maximum number of results to display per page.
            limit: nil,
            # Query param
            start_date: nil,
            request_options: {}
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
          sig do
            params(
              asset_id: String,
              campaign_guid: String,
              asset_type: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def delete(asset_id, campaign_guid:, asset_type:, request_options: {})
          end

          # @api private
          sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
