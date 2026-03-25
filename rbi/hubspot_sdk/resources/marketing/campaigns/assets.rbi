# typed: strong

module HubspotSDK
  module Resources
    class Marketing
      class Campaigns
        class Assets
          # Associate an asset with a specific campaign in your HubSpot account. This
          # operation allows you to link an asset of a specified type and ID to a campaign,
          # facilitating better organization and tracking of campaign resources.
          sig do
            params(
              asset_id: String,
              campaign_guid: String,
              asset_type: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def update(
            # The unique identifier of the asset to be associated with the campaign.
            asset_id,
            # The unique identifier of the campaign to which the asset will be associated.
            campaign_guid:,
            # The type of asset to be associated with the campaign.
            asset_type:,
            request_options: {}
          )
          end

          # List all assets of a specified campaign by asset type. This endpoint allows you
          # to retrieve assets associated with a campaign, filtered by the type of asset. It
          # supports pagination and date filtering to manage and refine the results.
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
            # Path param: The type of asset to list for the specified campaign.
            asset_type,
            # Path param: The unique identifier of the campaign.
            campaign_guid:,
            # Query param: The paging cursor token of the last successfully read resource will
            # be returned as the `paging.next.after` JSON property of a paged response
            # containing more results.
            after: nil,
            # Query param: The end date for filtering assets, in YYYY-MM-DD format.
            end_date: nil,
            # Query param: The maximum number of results to display per page.
            limit: nil,
            # Query param: The start date for filtering assets, in YYYY-MM-DD format.
            start_date: nil,
            request_options: {}
          )
          end

          # Disassociate an asset from a specific campaign. This operation removes the
          # association between the specified asset and campaign, effectively detaching the
          # asset from the campaign's context.
          sig do
            params(
              asset_id: String,
              campaign_guid: String,
              asset_type: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def delete(
            # The unique identifier of the asset to be disassociated from the campaign.
            asset_id,
            # The unique identifier of the campaign from which the asset will be
            # disassociated.
            campaign_guid:,
            # The type of asset to be disassociated from the campaign.
            asset_type:,
            request_options: {}
          )
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
