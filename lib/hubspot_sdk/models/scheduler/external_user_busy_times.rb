# frozen_string_literal: true

module HubspotSDK
  module Models
    module Scheduler
      class ExternalUserBusyTimes < HubspotSDK::Internal::Type::BaseModel
        # @!attribute busy_times
        #
        #   @return [Array<HubspotSDK::Models::Scheduler::ExternalTimeRange>]
        required :busy_times,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Scheduler::ExternalTimeRange] },
                 api_name: :busyTimes

        # @!attribute is_offline
        #   Whether the user is offline.
        #
        #   @return [Boolean]
        required :is_offline, HubspotSDK::Internal::Type::Boolean, api_name: :isOffline

        # @!attribute meetings_user
        #
        #   @return [HubspotSDK::Models::Scheduler::ExternalMeetingsUser]
        required :meetings_user, -> { HubspotSDK::Scheduler::ExternalMeetingsUser }, api_name: :meetingsUser

        # @!method initialize(busy_times:, is_offline:, meetings_user:)
        #   @param busy_times [Array<HubspotSDK::Models::Scheduler::ExternalTimeRange>]
        #
        #   @param is_offline [Boolean] Whether the user is offline.
        #
        #   @param meetings_user [HubspotSDK::Models::Scheduler::ExternalMeetingsUser]
      end
    end
  end
end
