# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Scheduler
      class ExternalLinkAvailabilityAndBusyTimes < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute all_users_busy_times
        #
        #   @return [Array<HubSpotSDK::Models::Scheduler::ExternalUserBusyTimes>]
        required :all_users_busy_times,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Scheduler::ExternalUserBusyTimes] },
                 api_name: :allUsersBusyTimes

        # @!attribute link_availability
        #
        #   @return [HubSpotSDK::Models::Scheduler::ExternalLinkAvailability, nil]
        optional :link_availability,
                 -> { HubSpotSDK::Scheduler::ExternalLinkAvailability },
                 api_name: :linkAvailability

        # @!method initialize(all_users_busy_times:, link_availability: nil)
        #   @param all_users_busy_times [Array<HubSpotSDK::Models::Scheduler::ExternalUserBusyTimes>]
        #   @param link_availability [HubSpotSDK::Models::Scheduler::ExternalLinkAvailability]
      end
    end
  end
end
