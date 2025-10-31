# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      module Campaigns
        # @see HubspotSDK::Resources::Marketing::Campaigns::Reports#get_revenue_attribution
        class ReportGetRevenueAttributionParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute attribution_model
          #   Allowed values: LINEAR, FIRST_INTERACTION, LAST_INTERACTION, FULL_PATH,
          #   U_SHAPED, W_SHAPED, TIME_DECAY, J_SHAPED, INVERSE_J_SHAPED Default value: LINEAR
          #
          #   @return [String, nil]
          optional :attribution_model, String

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

          # @!method initialize(attribution_model: nil, end_date: nil, start_date: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {HubspotSDK::Models::Marketing::Campaigns::ReportGetRevenueAttributionParams}
          #   for more details.
          #
          #   @param attribution_model [String] Allowed values: LINEAR, FIRST_INTERACTION, LAST_INTERACTION, FULL_PATH, U_SHAPED
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
