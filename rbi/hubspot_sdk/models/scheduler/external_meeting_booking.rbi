# typed: strong

module HubspotSDK
  module Models
    module Scheduler
      class ExternalMeetingBooking < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Scheduler::ExternalMeetingBooking,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The duration of the meeting in milliseconds.
        sig { returns(Integer) }
        attr_accessor :duration

        # The email address of the person booking the meeting.
        sig { returns(String) }
        attr_accessor :email

        # The first name of the person booking the meeting.
        sig { returns(String) }
        attr_accessor :first_name

        sig do
          returns(T::Array[HubspotSDK::Scheduler::ExternalBookingFormField])
        end
        attr_accessor :form_fields

        # The last name of the person booking the meeting.
        sig { returns(String) }
        attr_accessor :last_name

        sig do
          returns(T::Array[HubspotSDK::Scheduler::ExternalLegalConsentResponse])
        end
        attr_accessor :legal_consent_responses

        sig { returns(T::Array[String]) }
        attr_accessor :likely_available_user_ids

        # The unique path identifier for the meeting page.
        sig { returns(String) }
        attr_accessor :slug

        # The date and time when the meeting is scheduled to start, in ISO 8601 format.
        sig { returns(Time) }
        attr_accessor :start_time

        # The locale used for formatting dates and times in the meeting booking.
        sig { returns(T.nilable(String)) }
        attr_reader :locale

        sig { params(locale: String).void }
        attr_writer :locale

        # The timezone in which the meeting is scheduled.
        sig { returns(T.nilable(String)) }
        attr_reader :timezone

        sig { params(timezone: String).void }
        attr_writer :timezone

        sig do
          params(
            duration: Integer,
            email: String,
            first_name: String,
            form_fields:
              T::Array[HubspotSDK::Scheduler::ExternalBookingFormField::OrHash],
            last_name: String,
            legal_consent_responses:
              T::Array[
                HubspotSDK::Scheduler::ExternalLegalConsentResponse::OrHash
              ],
            likely_available_user_ids: T::Array[String],
            slug: String,
            start_time: Time,
            locale: String,
            timezone: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The duration of the meeting in milliseconds.
          duration:,
          # The email address of the person booking the meeting.
          email:,
          # The first name of the person booking the meeting.
          first_name:,
          form_fields:,
          # The last name of the person booking the meeting.
          last_name:,
          legal_consent_responses:,
          likely_available_user_ids:,
          # The unique path identifier for the meeting page.
          slug:,
          # The date and time when the meeting is scheduled to start, in ISO 8601 format.
          start_time:,
          # The locale used for formatting dates and times in the meeting booking.
          locale: nil,
          # The timezone in which the meeting is scheduled.
          timezone: nil
        )
        end

        sig do
          override.returns(
            {
              duration: Integer,
              email: String,
              first_name: String,
              form_fields:
                T::Array[HubspotSDK::Scheduler::ExternalBookingFormField],
              last_name: String,
              legal_consent_responses:
                T::Array[HubspotSDK::Scheduler::ExternalLegalConsentResponse],
              likely_available_user_ids: T::Array[String],
              slug: String,
              start_time: Time,
              locale: String,
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
