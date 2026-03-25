# frozen_string_literal: true

module HubspotSDK
  module Models
    module Scheduler
      class ExternalLinkAvailability < HubspotSDK::Internal::Type::BaseModel
        # @!attribute has_more
        #   Whether there are more available meeting times beyond the returned set.
        #
        #   @return [Boolean]
        required :has_more, HubspotSDK::Internal::Type::Boolean, api_name: :hasMore

        # @!attribute link_availability_by_duration
        #   Available booking slots for the meeting, grouped by the duration.
        #
        #   @return [Hash{Symbol=>HubspotSDK::Models::Scheduler::ExternalLinkAvailabilityForDuration}]
        required :link_availability_by_duration,
                 -> {
                   HubspotSDK::Internal::Type::HashOf[HubspotSDK::Scheduler::ExternalLinkAvailabilityForDuration]
                 },
                 api_name: :linkAvailabilityByDuration

        # @!method initialize(has_more:, link_availability_by_duration:)
        #   @param has_more [Boolean] Whether there are more available meeting times beyond the returned set.
        #
        #   @param link_availability_by_duration [Hash{Symbol=>HubspotSDK::Models::Scheduler::ExternalLinkAvailabilityForDuration}] Available booking slots for the meeting, grouped by the duration.
      end
    end
  end
end
