# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      module Campaigns
        # @see HubspotSDK::Resources::Marketing::Campaigns::Assets#list
        class AssetListParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute campaign_guid
          #
          #   @return [String]
          required :campaign_guid, String

          # @!attribute after
          #   A cursor for pagination. If provided, the results will start after the given
          #   cursor. Example: NTI1Cg%3D%3D
          #
          #   @return [String, nil]
          optional :after, String

          # @!attribute end_date
          #   End date to fetch asset metrics, formatted as YYYY-MM-DD. This date is used to
          #   fetch the metrics associated with the assets for a specified period. If not
          #   provided, no asset metrics will be fetched.
          #
          #   @return [String, nil]
          optional :end_date, String

          # @!attribute limit
          #   The maximum number of results to return. Default: 10
          #
          #   @return [String, nil]
          optional :limit, String

          # @!attribute start_date
          #   Start date to fetch asset metrics, formatted as YYYY-MM-DD. This date is used to
          #   fetch the metrics associated with the assets for a specified period. If not
          #   provided, no asset metrics will be fetched.
          #
          #   @return [String, nil]
          optional :start_date, String

          # @!method initialize(campaign_guid:, after: nil, end_date: nil, limit: nil, start_date: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {HubspotSDK::Models::Marketing::Campaigns::AssetListParams} for more details.
          #
          #   @param campaign_guid [String]
          #
          #   @param after [String] A cursor for pagination. If provided, the results will start after the given cur
          #
          #   @param end_date [String] End date to fetch asset metrics, formatted as YYYY-MM-DD. This date is used to f
          #
          #   @param limit [String] The maximum number of results to return.
          #
          #   @param start_date [String] Start date to fetch asset metrics, formatted as YYYY-MM-DD. This date is used to
          #
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
