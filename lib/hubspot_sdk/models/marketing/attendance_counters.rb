# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class AttendanceCounters < HubspotSDK::Internal::Type::BaseModel
        # @!attribute attended
        #
        #   @return [Integer]
        required :attended, Integer

        # @!attribute cancelled
        #
        #   @return [Integer]
        required :cancelled, Integer

        # @!attribute no_shows
        #
        #   @return [Integer]
        required :no_shows, Integer, api_name: :noShows

        # @!attribute registered
        #
        #   @return [Integer]
        required :registered, Integer

        # @!method initialize(attended:, cancelled:, no_shows:, registered:)
        #   @param attended [Integer]
        #   @param cancelled [Integer]
        #   @param no_shows [Integer]
        #   @param registered [Integer]
      end
    end
  end
end
