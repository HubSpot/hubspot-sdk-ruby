# typed: strong

module HubSpotSDK
  module Resources
    class Marketing
      class Campaigns
        sig { returns(HubSpotSDK::Resources::Marketing::Campaigns::Assets) }
        attr_reader :assets

        sig { returns(HubSpotSDK::Resources::Marketing::Campaigns::Batch) }
        attr_reader :batch

        sig { returns(HubSpotSDK::Resources::Marketing::Campaigns::Budget) }
        attr_reader :budget

        sig { returns(HubSpotSDK::Resources::Marketing::Campaigns::Metrics) }
        attr_reader :metrics

        sig { returns(HubSpotSDK::Resources::Marketing::Campaigns::Spend) }
        attr_reader :spend

        # Create a campaign with the specified properties and receive a copy of the
        # campaign object, including its ID. Note that the 'hs_goal' property is
        # deprecated and will be ignored if provided.
        sig do
          params(
            properties: T::Hash[Symbol, String],
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Marketing::PublicCampaign)
        end
        def create(
          # A collection of key-value pairs representing the properties of the campaign.
          # Each key is a property name, and the corresponding value is the property's
          # value.
          properties:,
          request_options: {}
        )
        end

        # Perform a partial update of a campaign identified by the specified campaignGuid.
        # Provided property values will be overwritten. Read-only and non-existent
        # properties will cause 400 error. If an empty string is passed for any property
        # in the Batch Update, it will reset that property's value.
        sig do
          params(
            campaign_guid: String,
            properties: T::Hash[Symbol, String],
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Marketing::PublicCampaign)
        end
        def update(
          campaign_guid,
          # A collection of key-value pairs representing the properties of the campaign.
          # Each key is a property name, and the corresponding value is the property's
          # value.
          properties:,
          request_options: {}
        )
        end

        # Retrieve a paginated list of campaigns from your HubSpot account. This endpoint
        # allows you to specify sorting, pagination, and filtering options to tailor the
        # results to your needs.
        sig do
          params(
            after: String,
            limit: Integer,
            name: String,
            properties: T::Array[String],
            sort: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(
            HubSpotSDK::Internal::Page[HubSpotSDK::Marketing::PublicCampaign]
          )
        end
        def list(
          # The paging cursor token of the last successfully read resource will be returned
          # as the `paging.next.after` JSON property of a paged response containing more
          # results.
          after: nil,
          # The maximum number of results to display per page.
          limit: nil,
          name: nil,
          properties: nil,
          sort: nil,
          request_options: {}
        )
        end

        # Delete a specified campaign from the system. This call will return a 204 No
        # Content response regardless of whether the campaignGuid provided corresponds to
        # an existing campaign or not.
        sig do
          params(
            campaign_guid: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).void
        end
        def delete(campaign_guid, request_options: {})
        end

        # Get a campaign identified by a specific campaignGuid with the given properties.
        # Along with the campaign information, it also returns information about assets.
        # Depending on the query parameters used, this can also be used to return
        # information about the corresponding assets' metrics. Metrics are available only
        # if startDate and endDate are provided.
        sig do
          params(
            campaign_guid: String,
            end_date: String,
            properties: T::Array[String],
            start_date: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Marketing::PublicCampaignWithAssets)
        end
        def get(
          campaign_guid,
          end_date: nil,
          properties: nil,
          start_date: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: HubSpotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
