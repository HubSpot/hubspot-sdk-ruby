# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Automation
      class PublicSequenceSettingsResponse < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the sequence settings.
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #   The timestamp of when the sequence settings were created.
        #
        #   @return [Time]
        required :created_at, Time, api_name: :createdAt

        # @!attribute eligible_follow_up_days
        #   Specifies the days on which follow-up actions are allowed.
        #
        #   @return [Symbol, HubSpotSDK::Models::Automation::PublicSequenceSettingsResponse::EligibleFollowUpDays]
        required :eligible_follow_up_days,
                 enum: -> { HubSpotSDK::Automation::PublicSequenceSettingsResponse::EligibleFollowUpDays },
                 api_name: :eligibleFollowUpDays

        # @!attribute individual_task_reminders_enabled
        #   Indicates whether individual task reminders are enabled.
        #
        #   @return [Boolean]
        required :individual_task_reminders_enabled,
                 HubSpotSDK::Internal::Type::Boolean,
                 api_name: :individualTaskRemindersEnabled

        # @!attribute selling_strategy
        #   (deprecated) Defines the unenrollment strategy, with accepted values being
        #   ACCOUNT_BASED or LEAD_BASED. If ACCOUNT_BASED is used, all contacts associated
        #   with the same company will be unenrolled if one contact meets any of the
        #   unenrollment criteria.
        #
        #   @return [Symbol, HubSpotSDK::Models::Automation::PublicSequenceSettingsResponse::SellingStrategy]
        required :selling_strategy,
                 enum: -> { HubSpotSDK::Automation::PublicSequenceSettingsResponse::SellingStrategy },
                 api_name: :sellingStrategy

        # @!attribute send_window_end_minute
        #   Indicates the end minute of the time window during which automated emails can be
        #   sent.
        #
        #   @return [Integer]
        required :send_window_end_minute, Integer, api_name: :sendWindowEndMinute

        # @!attribute send_window_start_minute
        #   Indicates the start minute of the time window during which automated emails can
        #   be sent.
        #
        #   @return [Integer]
        required :send_window_start_minute, Integer, api_name: :sendWindowStartMinute

        # @!attribute task_reminder_minute
        #   Specifies the minute of day at which task reminders are triggered.
        #
        #   @return [Integer]
        required :task_reminder_minute, Integer, api_name: :taskReminderMinute

        # @!attribute updated_at
        #   The timestamp of when the sequence settings were last updated.
        #
        #   @return [Time]
        required :updated_at, Time, api_name: :updatedAt

        # @!method initialize(id:, created_at:, eligible_follow_up_days:, individual_task_reminders_enabled:, selling_strategy:, send_window_end_minute:, send_window_start_minute:, task_reminder_minute:, updated_at:)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Automation::PublicSequenceSettingsResponse} for more
        #   details.
        #
        #   @param id [String] The unique identifier for the sequence settings.
        #
        #   @param created_at [Time] The timestamp of when the sequence settings were created.
        #
        #   @param eligible_follow_up_days [Symbol, HubSpotSDK::Models::Automation::PublicSequenceSettingsResponse::EligibleFollowUpDays] Specifies the days on which follow-up actions are allowed.
        #
        #   @param individual_task_reminders_enabled [Boolean] Indicates whether individual task reminders are enabled.
        #
        #   @param selling_strategy [Symbol, HubSpotSDK::Models::Automation::PublicSequenceSettingsResponse::SellingStrategy] (deprecated) Defines the unenrollment strategy, with accepted values being ACCOU
        #
        #   @param send_window_end_minute [Integer] Indicates the end minute of the time window during which automated emails can be
        #
        #   @param send_window_start_minute [Integer] Indicates the start minute of the time window during which automated emails can
        #
        #   @param task_reminder_minute [Integer] Specifies the minute of day at which task reminders are triggered.
        #
        #   @param updated_at [Time] The timestamp of when the sequence settings were last updated.

        # Specifies the days on which follow-up actions are allowed.
        #
        # @see HubSpotSDK::Models::Automation::PublicSequenceSettingsResponse#eligible_follow_up_days
        module EligibleFollowUpDays
          extend HubSpotSDK::Internal::Type::Enum

          BUSINESS_DAYS = :BUSINESS_DAYS
          EVERYDAY = :EVERYDAY
          WEEKDAYS_ONLY = :WEEKDAYS_ONLY

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # (deprecated) Defines the unenrollment strategy, with accepted values being
        # ACCOUNT_BASED or LEAD_BASED. If ACCOUNT_BASED is used, all contacts associated
        # with the same company will be unenrolled if one contact meets any of the
        # unenrollment criteria.
        #
        # @see HubSpotSDK::Models::Automation::PublicSequenceSettingsResponse#selling_strategy
        module SellingStrategy
          extend HubSpotSDK::Internal::Type::Enum

          ACCOUNT_BASED = :ACCOUNT_BASED
          LEAD_BASED = :LEAD_BASED

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
