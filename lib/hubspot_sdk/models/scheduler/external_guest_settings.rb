# frozen_string_literal: true

module HubspotSDK
  module Models
    module Scheduler
      class ExternalGuestSettings < HubspotSDK::Internal::Type::BaseModel
        # @!attribute can_add_guests
        #   Indicates whether guests can be added to the meeting.
        #
        #   @return [Boolean]
        required :can_add_guests, HubspotSDK::Internal::Type::Boolean, api_name: :canAddGuests

        # @!attribute max_guest_count
        #   The maximum number of guests that can be added to the meeting.
        #
        #   @return [Integer]
        required :max_guest_count, Integer, api_name: :maxGuestCount

        # @!method initialize(can_add_guests:, max_guest_count:)
        #   @param can_add_guests [Boolean] Indicates whether guests can be added to the meeting.
        #
        #   @param max_guest_count [Integer] The maximum number of guests that can be added to the meeting.
      end
    end
  end
end
