# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      module Campaigns
        # @see HubSpotSDK::Resources::Marketing::Campaigns::Assets#list
        class AssetListParams < HubSpotSDK::Internal::Type::BaseModel
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          # @!attribute campaign_guid
          #
          #   @return [String]
          required :campaign_guid, String

          # @!attribute asset_type
          #
          #   @return [String]
          required :asset_type, String

          # @!attribute after
          #   The paging cursor token of the last successfully read resource will be returned
          #   as the `paging.next.after` JSON property of a paged response containing more
          #   results.
          #
          #   @return [String, nil]
          optional :after, String

          # @!attribute end_date
          #
          #   @return [String, nil]
          optional :end_date, String

          # @!attribute limit
          #   The maximum number of results to display per page.
          #
          #   @return [String, nil]
          optional :limit, String

          # @!attribute start_date
          #
          #   @return [String, nil]
          optional :start_date, String

          # @!method initialize(campaign_guid:, asset_type:, after: nil, end_date: nil, limit: nil, start_date: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {HubSpotSDK::Models::Marketing::Campaigns::AssetListParams} for more details.
          #
          #   @param campaign_guid [String]
          #
          #   @param asset_type [String]
          #
          #   @param after [String] The paging cursor token of the last successfully read resource will be returned
          #
          #   @param end_date [String]
          #
          #   @param limit [String] The maximum number of results to display per page.
          #
          #   @param start_date [String]
          #
          #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
