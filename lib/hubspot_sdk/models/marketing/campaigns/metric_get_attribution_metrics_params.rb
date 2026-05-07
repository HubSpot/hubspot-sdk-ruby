# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      module Campaigns
        # @see HubSpotSDK::Resources::Marketing::Campaigns::Metrics#get_attribution_metrics
        class MetricGetAttributionMetricsParams < HubSpotSDK::Internal::Type::BaseModel
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          # @!attribute campaign_guid
          #
          #   @return [String]
          required :campaign_guid, String

          # @!attribute end_date
          #   The end date for fetching attribution data, in YYYY-MM-DD format. Optional.
          #   Example: 2000-01-27
          #
          #   @return [String, nil]
          optional :end_date, String

          # @!attribute start_date
          #   The start date for fetching attribution data, in YYYY-MM-DD format. Optional.
          #   Example: 2000-01-20
          #
          #   @return [String, nil]
          optional :start_date, String

          # @!method initialize(campaign_guid:, end_date: nil, start_date: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {HubSpotSDK::Models::Marketing::Campaigns::MetricGetAttributionMetricsParams}
          #   for more details.
          #
          #   @param campaign_guid [String]
          #
          #   @param end_date [String] The end date for fetching attribution data, in YYYY-MM-DD format.
          #
          #   @param start_date [String] The start date for fetching attribution data, in YYYY-MM-DD format.
          #
          #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
