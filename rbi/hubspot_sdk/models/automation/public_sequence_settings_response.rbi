# typed: strong

module HubspotSDK
  module Models
    module Automation
      class PublicSequenceSettingsResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::PublicSequenceSettingsResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the sequence settings.
        sig { returns(String) }
        attr_accessor :id

        # The timestamp of when the sequence settings were created.
        sig { returns(Time) }
        attr_accessor :created_at

        # Specifies the days on which follow-up actions are allowed.
        sig do
          returns(
            HubspotSDK::Automation::PublicSequenceSettingsResponse::EligibleFollowUpDays::TaggedSymbol
          )
        end
        attr_accessor :eligible_follow_up_days

        # Indicates whether individual task reminders are enabled.
        sig { returns(T::Boolean) }
        attr_accessor :individual_task_reminders_enabled

        # (deprecated) Defines the unenrollment strategy, with accepted values being
        # ACCOUNT_BASED or LEAD_BASED. If ACCOUNT_BASED is used, all contacts associated
        # with the same company will be unenrolled if one contact meets any of the
        # unenrollment criteria.
        sig do
          returns(
            HubspotSDK::Automation::PublicSequenceSettingsResponse::SellingStrategy::TaggedSymbol
          )
        end
        attr_accessor :selling_strategy

        # Indicates the end minute of the time window during which automated emails can be
        # sent.
        sig { returns(Integer) }
        attr_accessor :send_window_end_minute

        # Indicates the start minute of the time window during which automated emails can
        # be sent.
        sig { returns(Integer) }
        attr_accessor :send_window_start_minute

        # Specifies the minute of day at which task reminders are triggered.
        sig { returns(Integer) }
        attr_accessor :task_reminder_minute

        # The timestamp of when the sequence settings were last updated.
        sig { returns(Time) }
        attr_accessor :updated_at

        sig do
          params(
            id: String,
            created_at: Time,
            eligible_follow_up_days:
              HubspotSDK::Automation::PublicSequenceSettingsResponse::EligibleFollowUpDays::OrSymbol,
            individual_task_reminders_enabled: T::Boolean,
            selling_strategy:
              HubspotSDK::Automation::PublicSequenceSettingsResponse::SellingStrategy::OrSymbol,
            send_window_end_minute: Integer,
            send_window_start_minute: Integer,
            task_reminder_minute: Integer,
            updated_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique identifier for the sequence settings.
          id:,
          # The timestamp of when the sequence settings were created.
          created_at:,
          # Specifies the days on which follow-up actions are allowed.
          eligible_follow_up_days:,
          # Indicates whether individual task reminders are enabled.
          individual_task_reminders_enabled:,
          # (deprecated) Defines the unenrollment strategy, with accepted values being
          # ACCOUNT_BASED or LEAD_BASED. If ACCOUNT_BASED is used, all contacts associated
          # with the same company will be unenrolled if one contact meets any of the
          # unenrollment criteria.
          selling_strategy:,
          # Indicates the end minute of the time window during which automated emails can be
          # sent.
          send_window_end_minute:,
          # Indicates the start minute of the time window during which automated emails can
          # be sent.
          send_window_start_minute:,
          # Specifies the minute of day at which task reminders are triggered.
          task_reminder_minute:,
          # The timestamp of when the sequence settings were last updated.
          updated_at:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: Time,
              eligible_follow_up_days:
                HubspotSDK::Automation::PublicSequenceSettingsResponse::EligibleFollowUpDays::TaggedSymbol,
              individual_task_reminders_enabled: T::Boolean,
              selling_strategy:
                HubspotSDK::Automation::PublicSequenceSettingsResponse::SellingStrategy::TaggedSymbol,
              send_window_end_minute: Integer,
              send_window_start_minute: Integer,
              task_reminder_minute: Integer,
              updated_at: Time
            }
          )
        end
        def to_hash
        end

        # Specifies the days on which follow-up actions are allowed.
        module EligibleFollowUpDays
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Automation::PublicSequenceSettingsResponse::EligibleFollowUpDays
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BUSINESS_DAYS =
            T.let(
              :BUSINESS_DAYS,
              HubspotSDK::Automation::PublicSequenceSettingsResponse::EligibleFollowUpDays::TaggedSymbol
            )
          EVERYDAY =
            T.let(
              :EVERYDAY,
              HubspotSDK::Automation::PublicSequenceSettingsResponse::EligibleFollowUpDays::TaggedSymbol
            )
          WEEKDAYS_ONLY =
            T.let(
              :WEEKDAYS_ONLY,
              HubspotSDK::Automation::PublicSequenceSettingsResponse::EligibleFollowUpDays::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::PublicSequenceSettingsResponse::EligibleFollowUpDays::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # (deprecated) Defines the unenrollment strategy, with accepted values being
        # ACCOUNT_BASED or LEAD_BASED. If ACCOUNT_BASED is used, all contacts associated
        # with the same company will be unenrolled if one contact meets any of the
        # unenrollment criteria.
        module SellingStrategy
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Automation::PublicSequenceSettingsResponse::SellingStrategy
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACCOUNT_BASED =
            T.let(
              :ACCOUNT_BASED,
              HubspotSDK::Automation::PublicSequenceSettingsResponse::SellingStrategy::TaggedSymbol
            )
          LEAD_BASED =
            T.let(
              :LEAD_BASED,
              HubspotSDK::Automation::PublicSequenceSettingsResponse::SellingStrategy::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::PublicSequenceSettingsResponse::SellingStrategy::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
