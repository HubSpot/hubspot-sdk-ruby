# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class ListSizeDataPoint < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute size
        #
        #   @return [Integer]
        required :size, Integer

        # @!attribute timestamp
        #
        #   @return [Time]
        required :timestamp, Time

        # @!method initialize(size:, timestamp:)
        #   @param size [Integer]
        #   @param timestamp [Time]
      end
    end
  end
end
