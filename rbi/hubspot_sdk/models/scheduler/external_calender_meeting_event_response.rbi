# typed: strong

module HubSpotSDK
  module Models
    module Scheduler
      class ExternalCalenderMeetingEventResponse < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Scheduler::ExternalCalenderMeetingEventResponse,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the meeting event.
        sig { returns(String) }
        attr_accessor :id

        # The date and time when the meeting event was initially created, in ISO 8601
        # format.
        sig { returns(Time) }
        attr_accessor :created_at

        # The date and time when the meeting event was last updated, in ISO 8601 format.
        sig { returns(Time) }
        attr_accessor :last_updated_at

        sig do
          returns(
            HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties
          )
        end
        attr_reader :properties

        sig do
          params(
            properties:
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::OrHash
          ).void
        end
        attr_writer :properties

        sig do
          params(
            id: String,
            created_at: Time,
            last_updated_at: Time,
            properties:
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique identifier for the meeting event.
          id:,
          # The date and time when the meeting event was initially created, in ISO 8601
          # format.
          created_at:,
          # The date and time when the meeting event was last updated, in ISO 8601 format.
          last_updated_at:,
          properties:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: Time,
              last_updated_at: Time,
              properties:
                HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
