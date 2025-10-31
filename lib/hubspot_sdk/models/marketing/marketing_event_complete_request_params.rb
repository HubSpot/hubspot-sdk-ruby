# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class MarketingEventCompleteRequestParams < HubspotSDK::Internal::Type::BaseModel
        # @!attribute end_date_time
        #
        #   @return [Time]
        required :end_date_time, Time, api_name: :endDateTime

        # @!attribute start_date_time
        #
        #   @return [Time]
        required :start_date_time, Time, api_name: :startDateTime

        # @!method initialize(end_date_time:, start_date_time:)
        #   @param end_date_time [Time]
        #   @param start_date_time [Time]
      end
    end
  end
end
