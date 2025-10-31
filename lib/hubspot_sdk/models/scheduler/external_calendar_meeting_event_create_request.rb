# frozen_string_literal: true

module HubspotSDK
  module Models
    module Scheduler
      class ExternalCalendarMeetingEventCreateRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute associations
        #
        #   @return [Array<HubspotSDK::Models::Scheduler::ExternalAssociationCreateRequest>]
        required :associations,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Scheduler::ExternalAssociationCreateRequest] }

        # @!attribute email_reminder_schedule
        #
        #   @return [HubspotSDK::Models::Scheduler::ExternalEmailReminderSchedule]
        required :email_reminder_schedule,
                 -> { HubspotSDK::Scheduler::ExternalEmailReminderSchedule },
                 api_name: :emailReminderSchedule

        # @!attribute properties
        #
        #   @return [HubspotSDK::Models::Scheduler::ExternalCalendarMeetingEventCreateProperties]
        required :properties, -> { HubspotSDK::Scheduler::ExternalCalendarMeetingEventCreateProperties }

        # @!attribute timezone
        #
        #   @return [String]
        required :timezone, String

        # @!method initialize(associations:, email_reminder_schedule:, properties:, timezone:)
        #   @param associations [Array<HubspotSDK::Models::Scheduler::ExternalAssociationCreateRequest>]
        #   @param email_reminder_schedule [HubspotSDK::Models::Scheduler::ExternalEmailReminderSchedule]
        #   @param properties [HubspotSDK::Models::Scheduler::ExternalCalendarMeetingEventCreateProperties]
        #   @param timezone [String]
      end
    end
  end
end
