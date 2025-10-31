# typed: strong

module HubspotSDK
  module Models
    module Scheduler
      class ExternalCalendarMeetingEventCreateProperties < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventCreateProperties,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(Time) }
        attr_accessor :hs_meeting_end_time

        sig { returns(String) }
        attr_accessor :hs_meeting_outcome

        sig { returns(Time) }
        attr_accessor :hs_meeting_start_time

        sig { returns(String) }
        attr_accessor :hs_meeting_title

        sig { returns(Time) }
        attr_accessor :hs_timestamp

        sig { returns(T.nilable(String)) }
        attr_reader :hs_activity_type

        sig { params(hs_activity_type: String).void }
        attr_writer :hs_activity_type

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :hs_attachment_ids

        sig { params(hs_attachment_ids: T::Array[String]).void }
        attr_writer :hs_attachment_ids

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :hs_attendee_owner_ids

        sig { params(hs_attendee_owner_ids: T::Array[String]).void }
        attr_writer :hs_attendee_owner_ids

        sig { returns(T.nilable(String)) }
        attr_reader :hs_internal_meeting_notes

        sig { params(hs_internal_meeting_notes: String).void }
        attr_writer :hs_internal_meeting_notes

        sig { returns(T.nilable(String)) }
        attr_reader :hs_meeting_body

        sig { params(hs_meeting_body: String).void }
        attr_writer :hs_meeting_body

        sig { returns(T.nilable(String)) }
        attr_reader :hs_meeting_location

        sig { params(hs_meeting_location: String).void }
        attr_writer :hs_meeting_location

        sig { returns(T.nilable(String)) }
        attr_reader :hs_meeting_location_type

        sig { params(hs_meeting_location_type: String).void }
        attr_writer :hs_meeting_location_type

        sig { returns(T.nilable(String)) }
        attr_reader :hubspot_owner_id

        sig { params(hubspot_owner_id: String).void }
        attr_writer :hubspot_owner_id

        sig do
          params(
            hs_meeting_end_time: Time,
            hs_meeting_outcome: String,
            hs_meeting_start_time: Time,
            hs_meeting_title: String,
            hs_timestamp: Time,
            hs_activity_type: String,
            hs_attachment_ids: T::Array[String],
            hs_attendee_owner_ids: T::Array[String],
            hs_internal_meeting_notes: String,
            hs_meeting_body: String,
            hs_meeting_location: String,
            hs_meeting_location_type: String,
            hubspot_owner_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          hs_meeting_end_time:,
          hs_meeting_outcome:,
          hs_meeting_start_time:,
          hs_meeting_title:,
          hs_timestamp:,
          hs_activity_type: nil,
          hs_attachment_ids: nil,
          hs_attendee_owner_ids: nil,
          hs_internal_meeting_notes: nil,
          hs_meeting_body: nil,
          hs_meeting_location: nil,
          hs_meeting_location_type: nil,
          hubspot_owner_id: nil
        )
        end

        sig do
          override.returns(
            {
              hs_meeting_end_time: Time,
              hs_meeting_outcome: String,
              hs_meeting_start_time: Time,
              hs_meeting_title: String,
              hs_timestamp: Time,
              hs_activity_type: String,
              hs_attachment_ids: T::Array[String],
              hs_attendee_owner_ids: T::Array[String],
              hs_internal_meeting_notes: String,
              hs_meeting_body: String,
              hs_meeting_location: String,
              hs_meeting_location_type: String,
              hubspot_owner_id: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
