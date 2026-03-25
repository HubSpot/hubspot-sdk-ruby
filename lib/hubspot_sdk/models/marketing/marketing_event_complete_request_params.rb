# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class MarketingEventCompleteRequestParams < HubspotSDK::Internal::Type::BaseModel
        # @!attribute end_date_time
        #   The end date and time of the marketing event in ISO 8601 format
        #
        #   @return [Time]
        required :end_date_time, Time, api_name: :endDateTime

        # @!attribute start_date_time
        #   The start date and time of the marketing event in ISO 8601 format
        #
        #   @return [Time]
        required :start_date_time, Time, api_name: :startDateTime

        # @!method initialize(end_date_time:, start_date_time:)
        #   @param end_date_time [Time] The end date and time of the marketing event in ISO 8601 format
        #
        #   @param start_date_time [Time] The start date and time of the marketing event in ISO 8601 format
      end
    end

    MarketingEventCompleteRequestParams = Marketing::MarketingEventCompleteRequestParams
  end
end
