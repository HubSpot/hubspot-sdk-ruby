# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Scheduler
      class ExternalEmailReminderSchedule < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute reminders
        #
        #   @return [Array<HubSpotSDK::Models::Scheduler::ExternalReminder>]
        required :reminders, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Scheduler::ExternalReminder] }

        # @!attribute should_include_invite_description
        #   Whether the invite description should be included in the reminder.
        #
        #   @return [Boolean]
        required :should_include_invite_description,
                 HubSpotSDK::Internal::Type::Boolean,
                 api_name: :shouldIncludeInviteDescription

        # @!method initialize(reminders:, should_include_invite_description:)
        #   @param reminders [Array<HubSpotSDK::Models::Scheduler::ExternalReminder>]
        #
        #   @param should_include_invite_description [Boolean] Whether the invite description should be included in the reminder.
      end
    end
  end
end
