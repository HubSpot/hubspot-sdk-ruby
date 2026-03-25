# frozen_string_literal: true

module HubspotSDK
  module Models
    module Scheduler
      class ExternalLinkAvailabilityAndBusyTimes < HubspotSDK::Internal::Type::BaseModel
        # @!attribute all_users_busy_times
        #
        #   @return [Array<HubspotSDK::Models::Scheduler::ExternalUserBusyTimes>]
        required :all_users_busy_times,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Scheduler::ExternalUserBusyTimes] },
                 api_name: :allUsersBusyTimes

        # @!attribute link_availability
        #
        #   @return [HubspotSDK::Models::Scheduler::ExternalLinkAvailability, nil]
        optional :link_availability,
                 -> { HubspotSDK::Scheduler::ExternalLinkAvailability },
                 api_name: :linkAvailability

        # @!method initialize(all_users_busy_times:, link_availability: nil)
        #   @param all_users_busy_times [Array<HubspotSDK::Models::Scheduler::ExternalUserBusyTimes>]
        #   @param link_availability [HubspotSDK::Models::Scheduler::ExternalLinkAvailability]
      end
    end
  end
end
