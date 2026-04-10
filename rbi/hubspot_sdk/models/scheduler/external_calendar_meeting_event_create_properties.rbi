# typed: strong

module HubSpotSDK
  module Models
    module Scheduler
      class ExternalCalendarMeetingEventCreateProperties < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventCreateProperties,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The time that the meeting should end in ISO 8601 format.
        sig { returns(Time) }
        attr_accessor :hs_meeting_end_time

        # The outcome of the meeting. Acceptable default values are: SCHEDULED, COMPLETED,
        # RESCHEDULED, NO_SHOW, CANCELED. This property can be changed to include
        # additional custom values.
        sig { returns(String) }
        attr_accessor :hs_meeting_outcome

        # The time that the meeting should start in ISO 8601 format.
        sig { returns(Time) }
        attr_accessor :hs_meeting_start_time

        # The title of the meeting and calendar event.
        sig { returns(String) }
        attr_accessor :hs_meeting_title

        # The time that the meeting should start in ISO 8601 format. This value should be
        # the same as `hs_meeting_start_time`.
        sig { returns(Time) }
        attr_accessor :hs_timestamp

        # The ownerId of the HubSpot user who will host the meeting.
        sig { returns(String) }
        attr_accessor :hubspot_owner_id

        # The activity type of the meeting. Acceptable values are based on portal defined
        # call and meeting types.
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

        # Internal notes related to the meeting.
        sig { returns(T.nilable(String)) }
        attr_reader :hs_internal_meeting_notes

        sig { params(hs_internal_meeting_notes: String).void }
        attr_writer :hs_internal_meeting_notes

        # The description of the meeting and calendar event.
        sig { returns(T.nilable(String)) }
        attr_reader :hs_meeting_body

        sig { params(hs_meeting_body: String).void }
        attr_writer :hs_meeting_body

        # The physical address, virtual location, or phone number where the meeting will
        # take place.
        sig { returns(T.nilable(String)) }
        attr_reader :hs_meeting_location

        sig { params(hs_meeting_location: String).void }
        attr_writer :hs_meeting_location

        # The type of location for the meeting. Acceptable values are: ADDRESS, CUSTOM,
        # PHONE.
        sig do
          returns(
            T.nilable(
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventCreateProperties::HsMeetingLocationType::OrSymbol
            )
          )
        end
        attr_reader :hs_meeting_location_type

        sig do
          params(
            hs_meeting_location_type:
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventCreateProperties::HsMeetingLocationType::OrSymbol
          ).void
        end
        attr_writer :hs_meeting_location_type

        sig do
          params(
            hs_meeting_end_time: Time,
            hs_meeting_outcome: String,
            hs_meeting_start_time: Time,
            hs_meeting_title: String,
            hs_timestamp: Time,
            hubspot_owner_id: String,
            hs_activity_type: String,
            hs_attachment_ids: T::Array[String],
            hs_attendee_owner_ids: T::Array[String],
            hs_internal_meeting_notes: String,
            hs_meeting_body: String,
            hs_meeting_location: String,
            hs_meeting_location_type:
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventCreateProperties::HsMeetingLocationType::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The time that the meeting should end in ISO 8601 format.
          hs_meeting_end_time:,
          # The outcome of the meeting. Acceptable default values are: SCHEDULED, COMPLETED,
          # RESCHEDULED, NO_SHOW, CANCELED. This property can be changed to include
          # additional custom values.
          hs_meeting_outcome:,
          # The time that the meeting should start in ISO 8601 format.
          hs_meeting_start_time:,
          # The title of the meeting and calendar event.
          hs_meeting_title:,
          # The time that the meeting should start in ISO 8601 format. This value should be
          # the same as `hs_meeting_start_time`.
          hs_timestamp:,
          # The ownerId of the HubSpot user who will host the meeting.
          hubspot_owner_id:,
          # The activity type of the meeting. Acceptable values are based on portal defined
          # call and meeting types.
          hs_activity_type: nil,
          hs_attachment_ids: nil,
          hs_attendee_owner_ids: nil,
          # Internal notes related to the meeting.
          hs_internal_meeting_notes: nil,
          # The description of the meeting and calendar event.
          hs_meeting_body: nil,
          # The physical address, virtual location, or phone number where the meeting will
          # take place.
          hs_meeting_location: nil,
          # The type of location for the meeting. Acceptable values are: ADDRESS, CUSTOM,
          # PHONE.
          hs_meeting_location_type: nil
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
              hubspot_owner_id: String,
              hs_activity_type: String,
              hs_attachment_ids: T::Array[String],
              hs_attendee_owner_ids: T::Array[String],
              hs_internal_meeting_notes: String,
              hs_meeting_body: String,
              hs_meeting_location: String,
              hs_meeting_location_type:
                HubSpotSDK::Scheduler::ExternalCalendarMeetingEventCreateProperties::HsMeetingLocationType::OrSymbol
            }
          )
        end
        def to_hash
        end

        # The type of location for the meeting. Acceptable values are: ADDRESS, CUSTOM,
        # PHONE.
        module HsMeetingLocationType
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Scheduler::ExternalCalendarMeetingEventCreateProperties::HsMeetingLocationType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ADDRESS =
            T.let(
              :ADDRESS,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventCreateProperties::HsMeetingLocationType::TaggedSymbol
            )
          CUSTOM =
            T.let(
              :CUSTOM,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventCreateProperties::HsMeetingLocationType::TaggedSymbol
            )
          PHONE =
            T.let(
              :PHONE,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventCreateProperties::HsMeetingLocationType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Scheduler::ExternalCalendarMeetingEventCreateProperties::HsMeetingLocationType::TaggedSymbol
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
