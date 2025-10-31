# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class Interval < HubspotSDK::Internal::Type::BaseModel
        # @!attribute end_
        #
        #   @return [Time]
        required :end_, Time, api_name: :end

        # @!attribute start
        #
        #   @return [Time]
        required :start, Time

        # @!method initialize(end_:, start:)
        #   @param end_ [Time]
        #   @param start [Time]
      end
    end
  end
end
