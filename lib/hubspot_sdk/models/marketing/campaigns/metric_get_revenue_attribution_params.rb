# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      module Campaigns
        # @see HubspotSDK::Resources::Marketing::Campaigns::Metrics#get_revenue_attribution
        class MetricGetRevenueAttributionParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute campaign_guid
          #
          #   @return [String]
          required :campaign_guid, String

          # @!attribute attribution_model
          #   The model used to attribute revenue to the campaign.
          #
          #   @return [String, nil]
          optional :attribution_model, String

          # @!attribute end_date
          #   End date to fetch attribution data, YYYY-MM-DD.
          #
          #   @return [String, nil]
          optional :end_date, String

          # @!attribute start_date
          #   Start date to fetch attribution data, YYYY-MM-DD.
          #
          #   @return [String, nil]
          optional :start_date, String

          # @!method initialize(campaign_guid:, attribution_model: nil, end_date: nil, start_date: nil, request_options: {})
          #   @param campaign_guid [String]
          #
          #   @param attribution_model [String] The model used to attribute revenue to the campaign.
          #
          #   @param end_date [String] End date to fetch attribution data, YYYY-MM-DD.
          #
          #   @param start_date [String] Start date to fetch attribution data, YYYY-MM-DD.
          #
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
