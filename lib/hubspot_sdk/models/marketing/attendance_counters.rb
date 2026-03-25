# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class AttendanceCounters < HubspotSDK::Internal::Type::BaseModel
        # @!attribute attended
        #   Number of attended contact records of a marketing event
        #
        #   @return [Integer]
        required :attended, Integer

        # @!attribute cancelled
        #   Number of cancelled contact records of a marketing event
        #
        #   @return [Integer]
        required :cancelled, Integer

        # @!attribute no_shows
        #   Number of no-show contact records of a marketing event
        #
        #   @return [Integer]
        required :no_shows, Integer, api_name: :noShows

        # @!attribute registered
        #   Number of registered contact records of a marketing event
        #
        #   @return [Integer]
        required :registered, Integer

        # @!method initialize(attended:, cancelled:, no_shows:, registered:)
        #   @param attended [Integer] Number of attended contact records of a marketing event
        #
        #   @param cancelled [Integer] Number of cancelled contact records of a marketing event
        #
        #   @param no_shows [Integer] Number of no-show contact records of a marketing event
        #
        #   @param registered [Integer] Number of registered contact records of a marketing event
      end
    end
  end
end
