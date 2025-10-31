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

        sig { returns(HubspotSDK::Resources::Marketing::Campaigns::Reports) }
        attr_reader :reports

        sig { returns(HubspotSDK::Resources::Marketing::Campaigns::Spend) }
        attr_reader :spend

        # Create a campaign with the given properties and return the campaign object,
        # including the campaignGuid and created properties.
        sig do
          params(
            properties: T::Hash[Symbol, String],
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Marketing::PublicCampaign)
        end
        def create(properties:, request_options: {})
        end

        # Perform a partial update of a campaign identified by the specified campaignGuid.
        # Provided property values will be overwritten. Read-only and non-existent
        # properties will cause 400 error. If an empty string is passed for any property
        # in the Batch Update, it will reset that property's value.
        sig do
          params(
            campaign_guid: String,
            properties: T::Hash[Symbol, String],
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Marketing::PublicCampaign)
        end
        def update(
          # Unique identifier for the campaign, formatted as a UUID.
          campaign_guid,
          properties:,
          request_options: {}
        )
        end

        # This endpoint allows users to search for and return a page of campaigns based on
        # various query parameters. Users can filter by name, sort, and paginate through
        # the campaigns, as well as control which properties are returned in the response.
        sig do
          params(
            after: String,
            limit: Integer,
            name: String,
            properties: T::Array[String],
            sort: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(
            HubspotSDK::Internal::Page[HubspotSDK::Marketing::PublicCampaign]
          )
        end
        def list(
          # A cursor for pagination. If provided, the results will start after the given
          # cursor. Example: NTI1Cg%3D%3D
          after: nil,
          # The maximum number of results to return. Allowed values range from 1 to 100
          # Default: 50
          limit: nil,
          # A filter to return campaigns whose names contain the specified substring. This
          # allows partial matching of campaign names, returning all campaigns that include
          # the given substring in their name. If this parameter is not provided, the search
          # will return all campaigns
          name: nil,
          # A comma-separated list of the properties to be returned in the response. If any
          # of the specified properties has empty value on the requested object(s), they
          # will be ignored and not returned in response. If this parameter is empty, the
          # response will include an empty properties map
          properties: nil,
          # The field by which to sort the results. Allowed values are hs_name, createdAt,
          # updatedAt. An optional '-' before the property name can denote descending order
          # Default: hs_name
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
            request_options: HubspotSDK::RequestOptions::OrHash
          ).void
        end
        def delete(
          # Unique identifier for the campaign, formatted as a UUID.
          campaign_guid,
          request_options: {}
        )
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
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Marketing::PublicCampaignWithAssets)
        end
        def get(
          # Unique identifier for the campaign, formatted as a UUID.
          campaign_guid,
          # End date to fetch asset metrics, formatted as YYYY-MM-DD. This date is used to
          # fetch the metrics associated with the assets for a specified period. If not
          # provided, no asset metrics will be fetched.
          end_date: nil,
          # A comma-separated list of the properties to be returned in the response. If any
          # of the specified properties has empty value on the requested object, they will
          # be ignored and not returned in response. If this parameter is empty, the
          # response will include an empty properties map.
          properties: nil,
          # Start date to fetch asset metrics, formatted as YYYY-MM-DD. This date is used to
          # fetch the metrics associated with the assets for a specified period. If not
          # provided, no asset metrics will be fetched.
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
