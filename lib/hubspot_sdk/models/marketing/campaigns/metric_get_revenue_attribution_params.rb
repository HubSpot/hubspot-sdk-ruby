# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      module Campaigns
        # @see HubSpotSDK::Resources::Marketing::Campaigns::Metrics#get_revenue_attribution
        class MetricGetRevenueAttributionParams < HubSpotSDK::Internal::Type::BaseModel
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          # @!attribute campaign_guid
          #
          #   @return [String]
          required :campaign_guid, String

          # @!attribute attribution_model
          #
          #   @return [String, nil]
          optional :attribution_model, String

          # @!attribute end_date
          #   End date to fetch attribution data, YYYY-MM-DD
          #
          #   @return [String, nil]
          optional :end_date, String

          # @!attribute start_date
          #   Start date to fetch attribution data, YYYY-MM-DD
          #
          #   @return [String, nil]
          optional :start_date, String

          # @!method initialize(campaign_guid:, attribution_model: nil, end_date: nil, start_date: nil, request_options: {})
          #   @param campaign_guid [String]
          #
          #   @param attribution_model [String]
          #
          #   @param end_date [String] End date to fetch attribution data, YYYY-MM-DD
          #
          #   @param start_date [String] Start date to fetch attribution data, YYYY-MM-DD
          #
          #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
