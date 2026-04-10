# typed: strong

module HubSpotSDK
  module Models
    module Scheduler
      class ExternalCalendarMeetingEventCreateRequest < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventCreateRequest,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[HubSpotSDK::Scheduler::ExternalAssociationCreateRequest]
          )
        end
        attr_accessor :associations

        sig { returns(HubSpotSDK::Scheduler::ExternalEmailReminderSchedule) }
        attr_reader :email_reminder_schedule

        sig do
          params(
            email_reminder_schedule:
              HubSpotSDK::Scheduler::ExternalEmailReminderSchedule::OrHash
          ).void
        end
        attr_writer :email_reminder_schedule

        sig do
          returns(
            HubSpotSDK::Scheduler::ExternalCalendarMeetingEventCreateProperties
          )
        end
        attr_reader :properties

        sig do
          params(
            properties:
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventCreateProperties::OrHash
          ).void
        end
        attr_writer :properties

        # The timezone property that will be set on the meeting event.
        sig { returns(String) }
        attr_accessor :timezone

        sig do
          params(
            associations:
              T::Array[
                HubSpotSDK::Scheduler::ExternalAssociationCreateRequest::OrHash
              ],
            email_reminder_schedule:
              HubSpotSDK::Scheduler::ExternalEmailReminderSchedule::OrHash,
            properties:
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventCreateProperties::OrHash,
            timezone: String
          ).returns(T.attached_class)
        end
        def self.new(
          associations:,
          email_reminder_schedule:,
          properties:,
          # The timezone property that will be set on the meeting event.
          timezone:
        )
        end

        sig do
          override.returns(
            {
              associations:
                T::Array[
                  HubSpotSDK::Scheduler::ExternalAssociationCreateRequest
                ],
              email_reminder_schedule:
                HubSpotSDK::Scheduler::ExternalEmailReminderSchedule,
              properties:
                HubSpotSDK::Scheduler::ExternalCalendarMeetingEventCreateProperties,
              timezone: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
