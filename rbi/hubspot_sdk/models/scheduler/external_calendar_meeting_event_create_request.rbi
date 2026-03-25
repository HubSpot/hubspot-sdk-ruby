# typed: strong

module HubspotSDK
  module Models
    module Scheduler
      class ExternalCalendarMeetingEventCreateRequest < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventCreateRequest,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[HubspotSDK::Scheduler::ExternalAssociationCreateRequest]
          )
        end
        attr_accessor :associations

        sig { returns(HubspotSDK::Scheduler::ExternalEmailReminderSchedule) }
        attr_reader :email_reminder_schedule

        sig do
          params(
            email_reminder_schedule:
              HubspotSDK::Scheduler::ExternalEmailReminderSchedule::OrHash
          ).void
        end
        attr_writer :email_reminder_schedule

        sig do
          returns(
            HubspotSDK::Scheduler::ExternalCalendarMeetingEventCreateProperties
          )
        end
        attr_reader :properties

        sig do
          params(
            properties:
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventCreateProperties::OrHash
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
                HubspotSDK::Scheduler::ExternalAssociationCreateRequest::OrHash
              ],
            email_reminder_schedule:
              HubspotSDK::Scheduler::ExternalEmailReminderSchedule::OrHash,
            properties:
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventCreateProperties::OrHash,
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
                  HubspotSDK::Scheduler::ExternalAssociationCreateRequest
                ],
              email_reminder_schedule:
                HubspotSDK::Scheduler::ExternalEmailReminderSchedule,
              properties:
                HubspotSDK::Scheduler::ExternalCalendarMeetingEventCreateProperties,
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
