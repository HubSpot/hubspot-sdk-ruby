# typed: strong

module HubspotSDK
  module Models
    module Scheduler
      class ExternalEmailReminderSchedule < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Scheduler::ExternalEmailReminderSchedule,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubspotSDK::Scheduler::ExternalReminder]) }
        attr_accessor :reminders

        sig { returns(T::Boolean) }
        attr_accessor :should_include_invite_description

        sig do
          params(
            reminders:
              T::Array[HubspotSDK::Scheduler::ExternalReminder::OrHash],
            should_include_invite_description: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(reminders:, should_include_invite_description:)
        end

        sig do
          override.returns(
            {
              reminders: T::Array[HubspotSDK::Scheduler::ExternalReminder],
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
