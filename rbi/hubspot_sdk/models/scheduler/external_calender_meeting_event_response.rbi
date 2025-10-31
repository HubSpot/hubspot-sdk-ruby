# typed: strong

module HubspotSDK
  module Models
    module Scheduler
      class ExternalCalenderMeetingEventResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Scheduler::ExternalCalenderMeetingEventResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(Time) }
        attr_accessor :last_updated_at

        sig do
          returns(
            HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties
          )
        end
        attr_reader :properties

        sig do
          params(
            properties:
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::OrHash
          ).void
        end
        attr_writer :properties

        sig do
          params(
            id: String,
            created_at: Time,
            last_updated_at: Time,
            properties:
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::OrHash
          ).returns(T.attached_class)
        end
        def self.new(id:, created_at:, last_updated_at:, properties:)
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: Time,
              last_updated_at: Time,
              properties:
                HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
