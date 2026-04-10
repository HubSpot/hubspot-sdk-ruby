# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Scheduler
      class ExternalUserBusyTimes < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute busy_times
        #
        #   @return [Array<HubSpotSDK::Models::Scheduler::ExternalTimeRange>]
        required :busy_times,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Scheduler::ExternalTimeRange] },
                 api_name: :busyTimes

        # @!attribute is_offline
        #   Whether the user is offline.
        #
        #   @return [Boolean]
        required :is_offline, HubSpotSDK::Internal::Type::Boolean, api_name: :isOffline

        # @!attribute meetings_user
        #
        #   @return [HubSpotSDK::Models::Scheduler::ExternalMeetingsUser]
        required :meetings_user, -> { HubSpotSDK::Scheduler::ExternalMeetingsUser }, api_name: :meetingsUser

        # @!method initialize(busy_times:, is_offline:, meetings_user:)
        #   @param busy_times [Array<HubSpotSDK::Models::Scheduler::ExternalTimeRange>]
        #
        #   @param is_offline [Boolean] Whether the user is offline.
        #
        #   @param meetings_user [HubSpotSDK::Models::Scheduler::ExternalMeetingsUser]
      end
    end
  end
end
