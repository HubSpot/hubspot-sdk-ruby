# typed: strong

module HubspotSDK
  module Models
    module Scheduler
      class ExternalMeetingBookingResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Scheduler::ExternalMeetingBookingResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :booking_timezone

        sig { returns(String) }
        attr_accessor :calendar_event_id

        sig { returns(String) }
        attr_accessor :contact_id

        sig { returns(Integer) }
        attr_accessor :duration

        sig { returns(Time) }
        attr_accessor :end_

        sig do
          returns(T::Array[HubspotSDK::Scheduler::ExternalValidatedFormField])
        end
        attr_accessor :form_fields

        sig { returns(T::Array[String]) }
        attr_accessor :guest_emails

        sig { returns(T::Boolean) }
        attr_accessor :is_offline

        sig do
          returns(T::Array[HubspotSDK::Scheduler::ExternalLegalConsentResponse])
        end
        attr_accessor :legal_consent_responses

        sig { returns(Time) }
        attr_accessor :start

        sig { returns(String) }
        attr_accessor :subject

        sig { returns(T.nilable(String)) }
        attr_reader :locale

        sig { params(locale: String).void }
        attr_writer :locale

        sig { returns(T.nilable(String)) }
        attr_reader :location

        sig { params(location: String).void }
        attr_writer :location

        sig { returns(T.nilable(String)) }
        attr_reader :web_conference_meeting_id

        sig { params(web_conference_meeting_id: String).void }
        attr_writer :web_conference_meeting_id

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
                HubspotSDK::Scheduler::ExternalValidatedFormField::OrHash
              ],
            guest_emails: T::Array[String],
            is_offline: T::Boolean,
            legal_consent_responses:
              T::Array[
                HubspotSDK::Scheduler::ExternalLegalConsentResponse::OrHash
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
          booking_timezone:,
          calendar_event_id:,
          contact_id:,
          duration:,
          end_:,
          form_fields:,
          guest_emails:,
          is_offline:,
          legal_consent_responses:,
          start:,
          subject:,
          locale: nil,
          location: nil,
          web_conference_meeting_id: nil,
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
                T::Array[HubspotSDK::Scheduler::ExternalValidatedFormField],
              guest_emails: T::Array[String],
              is_offline: T::Boolean,
              legal_consent_responses:
                T::Array[HubspotSDK::Scheduler::ExternalLegalConsentResponse],
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
