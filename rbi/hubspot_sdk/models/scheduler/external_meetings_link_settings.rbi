# typed: strong

module HubspotSDK
  module Models
    module Scheduler
      class ExternalMeetingsLinkSettings < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Scheduler::ExternalMeetingsLinkSettings,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(T::Hash[Symbol, HubspotSDK::Scheduler::ExternalClosedRange])
        end
        attr_accessor :availability

        sig { returns(T::Array[Integer]) }
        attr_accessor :durations

        sig { returns(T::Array[HubspotSDK::Scheduler::ExternalLinkFormField]) }
        attr_accessor :form_fields

        sig { returns(T::Boolean) }
        attr_accessor :legal_consent_enabled

        sig { returns(Integer) }
        attr_accessor :meeting_buffer_time

        sig { returns(T::Boolean) }
        attr_accessor :owner_prioritized

        sig { returns(String) }
        attr_accessor :start_time_increment_minutes

        sig { returns(Integer) }
        attr_accessor :weeks_to_advertise

        sig { returns(T.nilable(Integer)) }
        attr_reader :custom_availability_end_date

        sig { params(custom_availability_end_date: Integer).void }
        attr_writer :custom_availability_end_date

        sig { returns(T.nilable(Integer)) }
        attr_reader :custom_availability_start_date

        sig { params(custom_availability_start_date: Integer).void }
        attr_writer :custom_availability_start_date

        sig do
          returns(T.nilable(HubspotSDK::Scheduler::ExternalLinkDisplayInfo))
        end
        attr_reader :display_info

        sig do
          params(
            display_info: HubspotSDK::Scheduler::ExternalLinkDisplayInfo::OrHash
          ).void
        end
        attr_writer :display_info

        sig { returns(T.nilable(HubspotSDK::Scheduler::ExternalGuestSettings)) }
        attr_reader :guest_settings

        sig do
          params(
            guest_settings: HubspotSDK::Scheduler::ExternalGuestSettings::OrHash
          ).void
        end
        attr_writer :guest_settings

        sig { returns(T.nilable(String)) }
        attr_reader :language

        sig { params(language: String).void }
        attr_writer :language

        sig do
          returns(T.nilable(HubspotSDK::Scheduler::ExternalLegalConsentOptions))
        end
        attr_reader :legal_consent_options

        sig do
          params(
            legal_consent_options:
              HubspotSDK::Scheduler::ExternalLegalConsentOptions::OrHash
          ).void
        end
        attr_writer :legal_consent_options

        sig { returns(T.nilable(String)) }
        attr_reader :locale

        sig { params(locale: String).void }
        attr_writer :locale

        sig { returns(T.nilable(String)) }
        attr_reader :location

        sig { params(location: String).void }
        attr_writer :location

        sig { returns(T.nilable(String)) }
        attr_reader :redirect_url

        sig { params(redirect_url: String).void }
        attr_writer :redirect_url

        sig do
          returns(
            T.nilable(HubspotSDK::Scheduler::ExternalMeetingsWelcomeScreenInfo)
          )
        end
        attr_reader :welcome_screen_info

        sig do
          params(
            welcome_screen_info:
              HubspotSDK::Scheduler::ExternalMeetingsWelcomeScreenInfo::OrHash
          ).void
        end
        attr_writer :welcome_screen_info

        sig do
          params(
            availability:
              T::Hash[
                Symbol,
                HubspotSDK::Scheduler::ExternalClosedRange::OrHash
              ],
            durations: T::Array[Integer],
            form_fields:
              T::Array[HubspotSDK::Scheduler::ExternalLinkFormField::OrHash],
            legal_consent_enabled: T::Boolean,
            meeting_buffer_time: Integer,
            owner_prioritized: T::Boolean,
            start_time_increment_minutes: String,
            weeks_to_advertise: Integer,
            custom_availability_end_date: Integer,
            custom_availability_start_date: Integer,
            display_info:
              HubspotSDK::Scheduler::ExternalLinkDisplayInfo::OrHash,
            guest_settings:
              HubspotSDK::Scheduler::ExternalGuestSettings::OrHash,
            language: String,
            legal_consent_options:
              HubspotSDK::Scheduler::ExternalLegalConsentOptions::OrHash,
            locale: String,
            location: String,
            redirect_url: String,
            welcome_screen_info:
              HubspotSDK::Scheduler::ExternalMeetingsWelcomeScreenInfo::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          availability:,
          durations:,
          form_fields:,
          legal_consent_enabled:,
          meeting_buffer_time:,
          owner_prioritized:,
          start_time_increment_minutes:,
          weeks_to_advertise:,
          custom_availability_end_date: nil,
          custom_availability_start_date: nil,
          display_info: nil,
          guest_settings: nil,
          language: nil,
          legal_consent_options: nil,
          locale: nil,
          location: nil,
          redirect_url: nil,
          welcome_screen_info: nil
        )
        end

        sig do
          override.returns(
            {
              availability:
                T::Hash[Symbol, HubspotSDK::Scheduler::ExternalClosedRange],
              durations: T::Array[Integer],
              form_fields:
                T::Array[HubspotSDK::Scheduler::ExternalLinkFormField],
              legal_consent_enabled: T::Boolean,
              meeting_buffer_time: Integer,
              owner_prioritized: T::Boolean,
              start_time_increment_minutes: String,
              weeks_to_advertise: Integer,
              custom_availability_end_date: Integer,
              custom_availability_start_date: Integer,
              display_info: HubspotSDK::Scheduler::ExternalLinkDisplayInfo,
              guest_settings: HubspotSDK::Scheduler::ExternalGuestSettings,
              language: String,
              legal_consent_options:
                HubspotSDK::Scheduler::ExternalLegalConsentOptions,
              locale: String,
              location: String,
              redirect_url: String,
              welcome_screen_info:
                HubspotSDK::Scheduler::ExternalMeetingsWelcomeScreenInfo
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
