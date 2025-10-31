# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class PublicSequenceSettingsResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time, api_name: :createdAt

        # @!attribute eligible_follow_up_days
        #
        #   @return [String]
        required :eligible_follow_up_days, String, api_name: :eligibleFollowUpDays

        # @!attribute individual_task_reminders_enabled
        #
        #   @return [Boolean]
        required :individual_task_reminders_enabled,
                 HubspotSDK::Internal::Type::Boolean,
                 api_name: :individualTaskRemindersEnabled

        # @!attribute selling_strategy
        #
        #   @return [String]
        required :selling_strategy, String, api_name: :sellingStrategy

        # @!attribute send_window_end_minute
        #
        #   @return [Integer]
        required :send_window_end_minute, Integer, api_name: :sendWindowEndMinute

        # @!attribute send_window_start_minute
        #
        #   @return [Integer]
        required :send_window_start_minute, Integer, api_name: :sendWindowStartMinute

        # @!attribute task_reminder_minute
        #
        #   @return [Integer]
        required :task_reminder_minute, Integer, api_name: :taskReminderMinute

        # @!attribute updated_at
        #
        #   @return [Time]
        required :updated_at, Time, api_name: :updatedAt

        # @!attribute unenrollment_settings
        #
        #   @return [HubspotSDK::Models::Automation::UnenrollmentSettingsResponse, nil]
        optional :unenrollment_settings,
                 -> { HubspotSDK::Automation::UnenrollmentSettingsResponse },
                 api_name: :unenrollmentSettings

        # @!method initialize(id:, created_at:, eligible_follow_up_days:, individual_task_reminders_enabled:, selling_strategy:, send_window_end_minute:, send_window_start_minute:, task_reminder_minute:, updated_at:, unenrollment_settings: nil)
        #   @param id [String]
        #   @param created_at [Time]
        #   @param eligible_follow_up_days [String]
        #   @param individual_task_reminders_enabled [Boolean]
        #   @param selling_strategy [String]
        #   @param send_window_end_minute [Integer]
        #   @param send_window_start_minute [Integer]
        #   @param task_reminder_minute [Integer]
        #   @param updated_at [Time]
        #   @param unenrollment_settings [HubspotSDK::Models::Automation::UnenrollmentSettingsResponse]
      end
    end
  end
end
