# typed: strong

module HubSpotSDK
  module Models
    module Scheduler
      class ExternalMeetingBookingResponse < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Scheduler::ExternalMeetingBookingResponse,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The timezone the meeting was booked from.
        sig { returns(String) }
        attr_accessor :booking_timezone

        # The unique identifier for the meeting's calendar event.
        sig { returns(String) }
        attr_accessor :calendar_event_id

        # The ID of the contact associated to the meeting.
        sig { returns(String) }
        attr_accessor :contact_id

        # The duration of the meeting in milliseconds.
        sig { returns(Integer) }
        attr_accessor :duration

        # The date and time when the meeting is scheduled to end, in ISO 8601 format.
        sig { returns(Time) }
        attr_accessor :end_

        sig do
          returns(T::Array[HubSpotSDK::Scheduler::ExternalValidatedFormField])
        end
        attr_accessor :form_fields

        sig { returns(T::Array[String]) }
        attr_accessor :guest_emails

        # Whether the meeting was booked offline and no associated calendar event was
        # created.
        sig { returns(T::Boolean) }
        attr_accessor :is_offline

        sig do
          returns(T::Array[HubSpotSDK::Scheduler::ExternalLegalConsentResponse])
        end
        attr_accessor :legal_consent_responses

        # The date and time when the meeting is scheduled to start, in ISO 8601 format.
        sig { returns(Time) }
        attr_accessor :start

        # The title of the meeting and calendar event.
        sig { returns(String) }
        attr_accessor :subject

        # The locale the meeting was booked with, used to determine date formatting in
        # calendar event description.
        sig { returns(T.nilable(String)) }
        attr_reader :locale

        sig { params(locale: String).void }
        attr_writer :locale

        # The physical or virtual location where the meeting will take place.
        sig { returns(T.nilable(String)) }
        attr_reader :location

        sig { params(location: String).void }
        attr_writer :location

        # The unique identifier for the web conference meeting.
        sig { returns(T.nilable(String)) }
        attr_reader :web_conference_meeting_id

        sig { params(web_conference_meeting_id: String).void }
        attr_writer :web_conference_meeting_id

        # The URL for accessing the meeting's web conference.
        sig { returns(T.nilable(String)) }
        attr_reader :web_conference_url

        sig { params(web_conference_url: String).void }
        attr_writer :web_conference_url

        sig do
          params(
            booking_timezone: String,
            calendar_event_id: String,
            contact_id: String,
            duration: Integer,
            end_: Time,
            form_fields:
              T::Array[
                HubSpotSDK::Scheduler::ExternalValidatedFormField::OrHash
              ],
            guest_emails: T::Array[String],
            is_offline: T::Boolean,
            legal_consent_responses:
              T::Array[
                HubSpotSDK::Scheduler::ExternalLegalConsentResponse::OrHash
              ],
            start: Time,
            subject: String,
            locale: String,
            location: String,
            web_conference_meeting_id: String,
            web_conference_url: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The timezone the meeting was booked from.
          booking_timezone:,
          # The unique identifier for the meeting's calendar event.
          calendar_event_id:,
          # The ID of the contact associated to the meeting.
          contact_id:,
          # The duration of the meeting in milliseconds.
          duration:,
          # The date and time when the meeting is scheduled to end, in ISO 8601 format.
          end_:,
          form_fields:,
          guest_emails:,
          # Whether the meeting was booked offline and no associated calendar event was
          # created.
          is_offline:,
          legal_consent_responses:,
          # The date and time when the meeting is scheduled to start, in ISO 8601 format.
          start:,
          # The title of the meeting and calendar event.
          subject:,
          # The locale the meeting was booked with, used to determine date formatting in
          # calendar event description.
          locale: nil,
          # The physical or virtual location where the meeting will take place.
          location: nil,
          # The unique identifier for the web conference meeting.
          web_conference_meeting_id: nil,
          # The URL for accessing the meeting's web conference.
          web_conference_url: nil
        )
        end

        sig do
          override.returns(
            {
              booking_timezone: String,
              calendar_event_id: String,
              contact_id: String,
              duration: Integer,
              end_: Time,
              form_fields:
                T::Array[HubSpotSDK::Scheduler::ExternalValidatedFormField],
              guest_emails: T::Array[String],
              is_offline: T::Boolean,
              legal_consent_responses:
                T::Array[HubSpotSDK::Scheduler::ExternalLegalConsentResponse],
              start: Time,
              subject: String,
              locale: String,
              location: String,
              web_conference_meeting_id: String,
              web_conference_url: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
