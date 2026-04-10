# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Scheduler
      class ExternalCalendarMeetingEventCreateRequest < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute associations
        #
        #   @return [Array<HubSpotSDK::Models::Scheduler::ExternalAssociationCreateRequest>]
        required :associations,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Scheduler::ExternalAssociationCreateRequest] }

        # @!attribute email_reminder_schedule
        #
        #   @return [HubSpotSDK::Models::Scheduler::ExternalEmailReminderSchedule]
        required :email_reminder_schedule,
                 -> { HubSpotSDK::Scheduler::ExternalEmailReminderSchedule },
                 api_name: :emailReminderSchedule

        # @!attribute properties
        #
        #   @return [HubSpotSDK::Models::Scheduler::ExternalCalendarMeetingEventCreateProperties]
        required :properties, -> { HubSpotSDK::Scheduler::ExternalCalendarMeetingEventCreateProperties }

        # @!attribute timezone
        #   The timezone property that will be set on the meeting event.
        #
        #   @return [String]
        required :timezone, String

        # @!method initialize(associations:, email_reminder_schedule:, properties:, timezone:)
        #   @param associations [Array<HubSpotSDK::Models::Scheduler::ExternalAssociationCreateRequest>]
        #
        #   @param email_reminder_schedule [HubSpotSDK::Models::Scheduler::ExternalEmailReminderSchedule]
        #
        #   @param properties [HubSpotSDK::Models::Scheduler::ExternalCalendarMeetingEventCreateProperties]
        #
        #   @param timezone [String] The timezone property that will be set on the meeting event.
      end
    end
  end
end
