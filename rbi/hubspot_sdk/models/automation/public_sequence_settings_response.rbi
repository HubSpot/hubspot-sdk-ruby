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

        sig { returns(String) }
        attr_accessor :id

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(String) }
        attr_accessor :eligible_follow_up_days

        sig { returns(T::Boolean) }
        attr_accessor :individual_task_reminders_enabled

        sig { returns(String) }
        attr_accessor :selling_strategy

        sig { returns(Integer) }
        attr_accessor :send_window_end_minute

        sig { returns(Integer) }
        attr_accessor :send_window_start_minute

        sig { returns(Integer) }
        attr_accessor :task_reminder_minute

        sig { returns(Time) }
        attr_accessor :updated_at

        sig do
          returns(
            T.nilable(HubspotSDK::Automation::UnenrollmentSettingsResponse)
          )
        end
        attr_reader :unenrollment_settings

        sig do
          params(
            unenrollment_settings:
              HubspotSDK::Automation::UnenrollmentSettingsResponse::OrHash
          ).void
        end
        attr_writer :unenrollment_settings

        sig do
          params(
            id: String,
            created_at: Time,
            eligible_follow_up_days: String,
            individual_task_reminders_enabled: T::Boolean,
            selling_strategy: String,
            send_window_end_minute: Integer,
            send_window_start_minute: Integer,
            task_reminder_minute: Integer,
            updated_at: Time,
            unenrollment_settings:
              HubspotSDK::Automation::UnenrollmentSettingsResponse::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          created_at:,
          eligible_follow_up_days:,
          individual_task_reminders_enabled:,
          selling_strategy:,
          send_window_end_minute:,
          send_window_start_minute:,
          task_reminder_minute:,
          updated_at:,
          unenrollment_settings: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: Time,
              eligible_follow_up_days: String,
              individual_task_reminders_enabled: T::Boolean,
              selling_strategy: String,
              send_window_end_minute: Integer,
              send_window_start_minute: Integer,
              task_reminder_minute: Integer,
              updated_at: Time,
              unenrollment_settings:
                HubspotSDK::Automation::UnenrollmentSettingsResponse
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
