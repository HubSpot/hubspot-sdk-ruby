# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Scheduler
      class ExternalLinkAvailability < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute has_more
        #   Whether there are more available meeting times beyond the returned set.
        #
        #   @return [Boolean]
        required :has_more, HubSpotSDK::Internal::Type::Boolean, api_name: :hasMore

        # @!attribute link_availability_by_duration
        #   Available booking slots for the meeting, grouped by the duration.
        #
        #   @return [Hash{Symbol=>HubSpotSDK::Models::Scheduler::ExternalLinkAvailabilityForDuration}]
        required :link_availability_by_duration,
                 -> {
                   HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Scheduler::ExternalLinkAvailabilityForDuration]
                 },
                 api_name: :linkAvailabilityByDuration

        # @!method initialize(has_more:, link_availability_by_duration:)
        #   @param has_more [Boolean] Whether there are more available meeting times beyond the returned set.
        #
        #   @param link_availability_by_duration [Hash{Symbol=>HubSpotSDK::Models::Scheduler::ExternalLinkAvailabilityForDuration}] Available booking slots for the meeting, grouped by the duration.
      end
    end
  end
end
