# typed: strong

module HubSpotSDK
  module Models
    module Scheduler
      class ExternalMeetingsLinkSettings < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Scheduler::ExternalMeetingsLinkSettings,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # An array containing the closed range availability for a meeting link. Closed
        # range times are provided as minute offsets from midnight (e.g., 540 corresponds
        # to 9am).
        sig do
          returns(T::Hash[Symbol, HubSpotSDK::Scheduler::ExternalClosedRange])
        end
        attr_accessor :availability

        sig { returns(T::Array[Integer]) }
        attr_accessor :durations

        sig { returns(T::Array[HubSpotSDK::Scheduler::ExternalLinkFormField]) }
        attr_accessor :form_fields

        # Whether the legal consent checkbox is displayed during meeting booking.
        sig { returns(T::Boolean) }
        attr_accessor :legal_consent_enabled

        # The minimum buffer time in milliseconds between consecutive meetings.
        sig { returns(Integer) }
        attr_accessor :meeting_buffer_time

        # Indicates whether the meeting owner is prioritized during booking. Only applies
        # to link types of ROUND_ROBIN.
        sig { returns(T::Boolean) }
        attr_accessor :owner_prioritized

        # The increment for available start times of meetings, spelt out as a word (e.g.
        # 15 minute increment corresponds to `FIFTEEN`). `MEETING_DURATION` is also a
        # valid value.
        sig do
          returns(
            HubSpotSDK::Scheduler::ExternalMeetingsLinkSettings::StartTimeIncrementMinutes::TaggedSymbol
          )
        end
        attr_accessor :start_time_increment_minutes

        # Legacy property that indicates the number of weeks in advance that availability
        # is advertised. May be outdated or superseded by other properties.
        sig { returns(Integer) }
        attr_accessor :weeks_to_advertise

        # The end date for a meeting link's custom availability window, represented as
        # Unix time in milliseconds.
        sig { returns(T.nilable(Integer)) }
        attr_reader :custom_availability_end_date

        sig { params(custom_availability_end_date: Integer).void }
        attr_writer :custom_availability_end_date

        # The start date for a meeting link's custom availability window, represented as
        # Unix time in milliseconds.
        sig { returns(T.nilable(Integer)) }
        attr_reader :custom_availability_start_date

        sig { params(custom_availability_start_date: Integer).void }
        attr_writer :custom_availability_start_date

        sig do
          returns(T.nilable(HubSpotSDK::Scheduler::ExternalLinkDisplayInfo))
        end
        attr_reader :display_info

        sig do
          params(
            display_info: HubSpotSDK::Scheduler::ExternalLinkDisplayInfo::OrHash
          ).void
        end
        attr_writer :display_info

        sig { returns(T.nilable(HubSpotSDK::Scheduler::ExternalGuestSettings)) }
        attr_reader :guest_settings

        sig do
          params(
            guest_settings: HubSpotSDK::Scheduler::ExternalGuestSettings::OrHash
          ).void
        end
        attr_writer :guest_settings

        # The language setting used for the meeting link.
        sig { returns(T.nilable(String)) }
        attr_reader :language

        sig { params(language: String).void }
        attr_writer :language

        sig do
          returns(T.nilable(HubSpotSDK::Scheduler::ExternalLegalConsentOptions))
        end
        attr_reader :legal_consent_options

        sig do
          params(
            legal_consent_options:
              HubSpotSDK::Scheduler::ExternalLegalConsentOptions::OrHash
          ).void
        end
        attr_writer :legal_consent_options

        # The locale setting used for formatting dates and times in the meeting link.
        sig { returns(T.nilable(String)) }
        attr_reader :locale

        sig { params(locale: String).void }
        attr_writer :locale

        # The physical or virtual location where the meeting will take place.
        sig { returns(T.nilable(String)) }
        attr_reader :location

        sig { params(location: String).void }
        attr_writer :location

        # The URL to redirect to after a meeting is booked.
        sig { returns(T.nilable(String)) }
        attr_reader :redirect_url

        sig { params(redirect_url: String).void }
        attr_writer :redirect_url

        sig do
          returns(
            T.nilable(HubSpotSDK::Scheduler::ExternalMeetingsWelcomeScreenInfo)
          )
        end
        attr_reader :welcome_screen_info

        sig do
          params(
            welcome_screen_info:
              HubSpotSDK::Scheduler::ExternalMeetingsWelcomeScreenInfo::OrHash
          ).void
        end
        attr_writer :welcome_screen_info

        sig do
          params(
            availability:
              T::Hash[
                Symbol,
                HubSpotSDK::Scheduler::ExternalClosedRange::OrHash
              ],
            durations: T::Array[Integer],
            form_fields:
              T::Array[HubSpotSDK::Scheduler::ExternalLinkFormField::OrHash],
            legal_consent_enabled: T::Boolean,
            meeting_buffer_time: Integer,
            owner_prioritized: T::Boolean,
            start_time_increment_minutes:
              HubSpotSDK::Scheduler::ExternalMeetingsLinkSettings::StartTimeIncrementMinutes::OrSymbol,
            weeks_to_advertise: Integer,
            custom_availability_end_date: Integer,
            custom_availability_start_date: Integer,
            display_info:
              HubSpotSDK::Scheduler::ExternalLinkDisplayInfo::OrHash,
            guest_settings:
              HubSpotSDK::Scheduler::ExternalGuestSettings::OrHash,
            language: String,
            legal_consent_options:
              HubSpotSDK::Scheduler::ExternalLegalConsentOptions::OrHash,
            locale: String,
            location: String,
            redirect_url: String,
            welcome_screen_info:
              HubSpotSDK::Scheduler::ExternalMeetingsWelcomeScreenInfo::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # An array containing the closed range availability for a meeting link. Closed
          # range times are provided as minute offsets from midnight (e.g., 540 corresponds
          # to 9am).
          availability:,
          durations:,
          form_fields:,
          # Whether the legal consent checkbox is displayed during meeting booking.
          legal_consent_enabled:,
          # The minimum buffer time in milliseconds between consecutive meetings.
          meeting_buffer_time:,
          # Indicates whether the meeting owner is prioritized during booking. Only applies
          # to link types of ROUND_ROBIN.
          owner_prioritized:,
          # The increment for available start times of meetings, spelt out as a word (e.g.
          # 15 minute increment corresponds to `FIFTEEN`). `MEETING_DURATION` is also a
          # valid value.
          start_time_increment_minutes:,
          # Legacy property that indicates the number of weeks in advance that availability
          # is advertised. May be outdated or superseded by other properties.
          weeks_to_advertise:,
          # The end date for a meeting link's custom availability window, represented as
          # Unix time in milliseconds.
          custom_availability_end_date: nil,
          # The start date for a meeting link's custom availability window, represented as
          # Unix time in milliseconds.
          custom_availability_start_date: nil,
          display_info: nil,
          guest_settings: nil,
          # The language setting used for the meeting link.
          language: nil,
          legal_consent_options: nil,
          # The locale setting used for formatting dates and times in the meeting link.
          locale: nil,
          # The physical or virtual location where the meeting will take place.
          location: nil,
          # The URL to redirect to after a meeting is booked.
          redirect_url: nil,
          welcome_screen_info: nil
        )
        end

        sig do
          override.returns(
            {
              availability:
                T::Hash[Symbol, HubSpotSDK::Scheduler::ExternalClosedRange],
              durations: T::Array[Integer],
              form_fields:
                T::Array[HubSpotSDK::Scheduler::ExternalLinkFormField],
              legal_consent_enabled: T::Boolean,
              meeting_buffer_time: Integer,
              owner_prioritized: T::Boolean,
              start_time_increment_minutes:
                HubSpotSDK::Scheduler::ExternalMeetingsLinkSettings::StartTimeIncrementMinutes::TaggedSymbol,
              weeks_to_advertise: Integer,
              custom_availability_end_date: Integer,
              custom_availability_start_date: Integer,
              display_info: HubSpotSDK::Scheduler::ExternalLinkDisplayInfo,
              guest_settings: HubSpotSDK::Scheduler::ExternalGuestSettings,
              language: String,
              legal_consent_options:
                HubSpotSDK::Scheduler::ExternalLegalConsentOptions,
              locale: String,
              location: String,
              redirect_url: String,
              welcome_screen_info:
                HubSpotSDK::Scheduler::ExternalMeetingsWelcomeScreenInfo
            }
          )
        end
        def to_hash
        end

        # The increment for available start times of meetings, spelt out as a word (e.g.
        # 15 minute increment corresponds to `FIFTEEN`). `MEETING_DURATION` is also a
        # valid value.
        module StartTimeIncrementMinutes
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Scheduler::ExternalMeetingsLinkSettings::StartTimeIncrementMinutes
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          FIFTEEN =
            T.let(
              :FIFTEEN,
              HubSpotSDK::Scheduler::ExternalMeetingsLinkSettings::StartTimeIncrementMinutes::TaggedSymbol
            )
          FIVE =
            T.let(
              :FIVE,
              HubSpotSDK::Scheduler::ExternalMeetingsLinkSettings::StartTimeIncrementMinutes::TaggedSymbol
            )
          FORTY_FIVE =
            T.let(
              :FORTY_FIVE,
              HubSpotSDK::Scheduler::ExternalMeetingsLinkSettings::StartTimeIncrementMinutes::TaggedSymbol
            )
          MEETING_DURATION =
            T.let(
              :MEETING_DURATION,
              HubSpotSDK::Scheduler::ExternalMeetingsLinkSettings::StartTimeIncrementMinutes::TaggedSymbol
            )
          NINETY =
            T.let(
              :NINETY,
              HubSpotSDK::Scheduler::ExternalMeetingsLinkSettings::StartTimeIncrementMinutes::TaggedSymbol
            )
          ONE_HUNDRED_TWENTY =
            T.let(
              :ONE_HUNDRED_TWENTY,
              HubSpotSDK::Scheduler::ExternalMeetingsLinkSettings::StartTimeIncrementMinutes::TaggedSymbol
            )
          SIXTY =
            T.let(
              :SIXTY,
              HubSpotSDK::Scheduler::ExternalMeetingsLinkSettings::StartTimeIncrementMinutes::TaggedSymbol
            )
          TEN =
            T.let(
              :TEN,
              HubSpotSDK::Scheduler::ExternalMeetingsLinkSettings::StartTimeIncrementMinutes::TaggedSymbol
            )
          THIRTY =
            T.let(
              :THIRTY,
              HubSpotSDK::Scheduler::ExternalMeetingsLinkSettings::StartTimeIncrementMinutes::TaggedSymbol
            )
          TWENTY =
            T.let(
              :TWENTY,
              HubSpotSDK::Scheduler::ExternalMeetingsLinkSettings::StartTimeIncrementMinutes::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Scheduler::ExternalMeetingsLinkSettings::StartTimeIncrementMinutes::TaggedSymbol
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
