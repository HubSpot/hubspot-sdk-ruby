# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      module Campaigns
        # @see HubspotSDK::Resources::Marketing::Campaigns::Reports#get_attribution_metrics
        class ReportGetAttributionMetricsParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute end_date
          #   End date for the report data, formatted as YYYY-MM-DD. Default value: Current
          #   date
          #
          #   @return [String, nil]
          optional :end_date, String

          # @!attribute start_date
          #   The start date for the report data, formatted as YYYY-MM-DD. Default value:
          #   2006-01-01
          #
          #   @return [String, nil]
          optional :start_date, String

          # @!method initialize(end_date: nil, start_date: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {HubspotSDK::Models::Marketing::Campaigns::ReportGetAttributionMetricsParams}
          #   for more details.
          #
          #   @param end_date [String] End date for the report data, formatted as YYYY-MM-DD.
          #
          #   @param start_date [String] The start date for the report data, formatted as YYYY-MM-DD.
          #
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
