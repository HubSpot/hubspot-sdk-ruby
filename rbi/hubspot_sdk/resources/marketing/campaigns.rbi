# typed: strong

module HubspotSDK
  module Resources
    class Marketing
      class Campaigns
        sig { returns(HubspotSDK::Resources::Marketing::Campaigns::Assets) }
        attr_reader :assets

        sig { returns(HubspotSDK::Resources::Marketing::Campaigns::Batch) }
        attr_reader :batch

        sig { returns(HubspotSDK::Resources::Marketing::Campaigns::Budget) }
        attr_reader :budget

        sig { returns(HubspotSDK::Resources::Marketing::Campaigns::Metrics) }
        attr_reader :metrics

        sig { returns(HubspotSDK::Resources::Marketing::Campaigns::Spend) }
        attr_reader :spend

        # Perform a partial update of a campaign identified by the specified ID. Provided
        # property values will be overwritten. Read-only and non-existent properties will
        # be ignored. Properties values can be cleared by passing an empty string. Note:
        # The 'hs_goal' property is deprecated and will be ignored if provided.
        sig do
          params(
            campaign_guid: String,
            properties: T::Hash[Symbol, String],
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Marketing::PublicCampaign)
        end
        def update(
          # The unique identifier of the campaign to update.
          campaign_guid,
          # A collection of key-value pairs representing the properties of the campaign.
          # Each key is a property name, and the corresponding value is the property's
          # value.
          properties:,
          request_options: {}
        )
        end

        # Delete a specified campaign from the system. This operation removes the campaign
        # identified by the provided campaignGuid from your HubSpot account.
        sig do
          params(
            campaign_guid: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).void
        end
        def delete(
          # The unique identifier of the campaign to delete.
          campaign_guid,
          request_options: {}
        )
        end

        # Read a campaign identified by a specified internal ID. This endpoint allows you
        # to retrieve detailed information about a specific marketing campaign using its
        # unique identifier. It supports filtering the response by specific properties and
        # date ranges.
        sig do
          params(
            campaign_guid: String,
            end_date: String,
            properties: T::Array[String],
            start_date: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Marketing::PublicCampaignWithAssets)
        end
        def get(
          # The unique identifier of the campaign to retrieve.
          campaign_guid,
          # The end date for filtering campaign data, in YYYY-MM-DD format.
          end_date: nil,
          # A comma-separated list of property names to include in the response.
          properties: nil,
          # The start date for filtering campaign data, in YYYY-MM-DD format.
          start_date: nil,
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
