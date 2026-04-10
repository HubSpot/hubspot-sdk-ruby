# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      class Interval < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute end_
        #   The end timestamp of the interval, in ISO8601 format.
        #
        #   @return [Time]
        required :end_, Time, api_name: :end

        # @!attribute start
        #   The start timestamp of the interval, in ISO8601 format.
        #
        #   @return [Time]
        required :start, Time

        # @!method initialize(end_:, start:)
        #   @param end_ [Time] The end timestamp of the interval, in ISO8601 format.
        #
        #   @param start [Time] The start timestamp of the interval, in ISO8601 format.
      end
    end
  end
end
