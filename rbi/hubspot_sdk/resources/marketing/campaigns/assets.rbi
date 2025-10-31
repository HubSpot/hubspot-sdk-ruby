# typed: strong

module HubspotSDK
  module Resources
    class Marketing
      class Campaigns
        class Assets
          # Associate a specified asset with a campaign. Using the API, you can create and
          # remove associations for the following asset types: forms, static lists, external
          # website pages, sequences, meetings, playbooks, feedback surveys, podcast
          # episodes, sales documents, marketing emails, case studies, knowledge base
          # articles, calls, and CTAs.
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
          def update(
            # Id of the asset
            asset_id,
            # Unique identifier for the campaign, formatted as a UUID
            campaign_guid:,
            # The type of asset Important: Currently, only the following asset types are
            # available for association via the API: FORM, OBJECT_LIST, EXTERNAL_WEB_URL
            asset_type:,
            request_options: {}
          )
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
            # Path param: The type of asset to fetch.
            asset_type,
            # Path param: Unique identifier for the campaign, formatted as a UUID.
            campaign_guid:,
            # Query param: A cursor for pagination. If provided, the results will start after
            # the given cursor. Example: NTI1Cg%3D%3D
            after: nil,
            # Query param: End date to fetch asset metrics, formatted as YYYY-MM-DD. This date
            # is used to fetch the metrics associated with the assets for a specified period.
            # If not provided, no asset metrics will be fetched.
            end_date: nil,
            # Query param: The maximum number of results to return. Default: 10
            limit: nil,
            # Query param: Start date to fetch asset metrics, formatted as YYYY-MM-DD. This
            # date is used to fetch the metrics associated with the assets for a specified
            # period. If not provided, no asset metrics will be fetched.
            start_date: nil,
            request_options: {}
          )
          end

          # Disassociate a specified asset from a campaign. Important: Currently, only the
          # following asset types can be associated and disassociated via the API: Forms,
          # Static lists, External website pages
          sig do
            params(
              asset_id: String,
              campaign_guid: String,
              asset_type: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def delete(
            # Id of the asset
            asset_id,
            # Unique identifier for the campaign, formatted as a UUID.
            campaign_guid:,
            # The type of asset Important: Currently, only the following asset types are
            # available for disassociation via the API: FORM, OBJECT_LIST, EXTERNAL_WEB_URL
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
