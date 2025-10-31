# frozen_string_literal: true

module HubspotSDK
  module Models
    module Scheduler
      class ExternalEmailReminderSchedule < HubspotSDK::Internal::Type::BaseModel
        # @!attribute reminders
        #
        #   @return [Array<HubspotSDK::Models::Scheduler::ExternalReminder>]
        required :reminders, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Scheduler::ExternalReminder] }

        # @!attribute should_include_invite_description
        #
        #   @return [Boolean]
        required :should_include_invite_description,
                 HubspotSDK::Internal::Type::Boolean,
                 api_name: :shouldIncludeInviteDescription

        # @!method initialize(reminders:, should_include_invite_description:)
        #   @param reminders [Array<HubspotSDK::Models::Scheduler::ExternalReminder>]
        #   @param should_include_invite_description [Boolean]
      end
    end
  end
end
