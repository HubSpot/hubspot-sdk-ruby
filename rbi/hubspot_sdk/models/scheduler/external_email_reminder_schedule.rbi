# typed: strong

module HubSpotSDK
  module Models
    module Scheduler
      class ExternalEmailReminderSchedule < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Scheduler::ExternalEmailReminderSchedule,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubSpotSDK::Scheduler::ExternalReminder]) }
        attr_accessor :reminders

        # Whether the invite description should be included in the reminder.
        sig { returns(T::Boolean) }
        attr_accessor :should_include_invite_description

        sig do
          params(
            reminders:
              T::Array[HubSpotSDK::Scheduler::ExternalReminder::OrHash],
            should_include_invite_description: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          reminders:,
          # Whether the invite description should be included in the reminder.
          should_include_invite_description:
        )
        end

        sig do
          override.returns(
            {
              reminders: T::Array[HubSpotSDK::Scheduler::ExternalReminder],
              should_include_invite_description: T::Boolean
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
