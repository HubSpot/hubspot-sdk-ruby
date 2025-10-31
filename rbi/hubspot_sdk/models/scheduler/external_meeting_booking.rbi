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

        sig { returns(Integer) }
        attr_accessor :duration

        sig { returns(String) }
        attr_accessor :email

        sig { returns(String) }
        attr_accessor :first_name

        sig do
          returns(T::Array[HubspotSDK::Scheduler::ExternalBookingFormField])
        end
        attr_accessor :form_fields

        sig { returns(String) }
        attr_accessor :last_name

        sig do
          returns(T::Array[HubspotSDK::Scheduler::ExternalLegalConsentResponse])
        end
        attr_accessor :legal_consent_responses

        sig { returns(T::Array[String]) }
        attr_accessor :likely_available_user_ids

        sig { returns(String) }
        attr_accessor :slug

        sig { returns(Time) }
        attr_accessor :start_time

        sig { returns(T.nilable(String)) }
        attr_reader :locale

        sig { params(locale: String).void }
        attr_writer :locale

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
          duration:,
          email:,
          first_name:,
          form_fields:,
          last_name:,
          legal_consent_responses:,
          likely_available_user_ids:,
          slug:,
          start_time:,
          locale: nil,
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
