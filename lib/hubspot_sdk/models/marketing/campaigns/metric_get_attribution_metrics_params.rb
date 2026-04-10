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
          #
          #   @return [String, nil]
          optional :end_date, String

          # @!attribute start_date
          #
          #   @return [String, nil]
          optional :start_date, String

          # @!method initialize(campaign_guid:, end_date: nil, start_date: nil, request_options: {})
          #   @param campaign_guid [String]
          #   @param end_date [String]
          #   @param start_date [String]
          #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
