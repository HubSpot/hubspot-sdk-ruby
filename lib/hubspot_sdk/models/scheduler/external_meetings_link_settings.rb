# frozen_string_literal: true

module HubspotSDK
  module Models
    module Scheduler
      class ExternalMeetingsLinkSettings < HubspotSDK::Internal::Type::BaseModel
        # @!attribute availability
        #   An array containing the closed range availability for a meeting link. Closed
        #   range times are provided as minute offsets from midnight (e.g., 540 corresponds
        #   to 9am).
        #
        #   @return [Hash{Symbol=>HubspotSDK::Models::Scheduler::ExternalClosedRange}]
        required :availability,
                 -> { HubspotSDK::Internal::Type::HashOf[HubspotSDK::Scheduler::ExternalClosedRange] }

        # @!attribute durations
        #
        #   @return [Array<Integer>]
        required :durations, HubspotSDK::Internal::Type::ArrayOf[Integer]

        # @!attribute form_fields
        #
        #   @return [Array<HubspotSDK::Models::Scheduler::ExternalLinkFormField>]
        required :form_fields,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Scheduler::ExternalLinkFormField] },
                 api_name: :formFields

        # @!attribute legal_consent_enabled
        #   Whether the legal consent checkbox is displayed during meeting booking.
        #
        #   @return [Boolean]
        required :legal_consent_enabled, HubspotSDK::Internal::Type::Boolean, api_name: :legalConsentEnabled

        # @!attribute meeting_buffer_time
        #   The minimum buffer time in milliseconds between consecutive meetings.
        #
        #   @return [Integer]
        required :meeting_buffer_time, Integer, api_name: :meetingBufferTime

        # @!attribute owner_prioritized
        #   Indicates whether the meeting owner is prioritized during booking. Only applies
        #   to link types of ROUND_ROBIN.
        #
        #   @return [Boolean]
        required :owner_prioritized, HubspotSDK::Internal::Type::Boolean, api_name: :ownerPrioritized

        # @!attribute start_time_increment_minutes
        #   The increment for available start times of meetings, spelt out as a word (e.g.
        #   15 minute increment corresponds to `FIFTEEN`). `MEETING_DURATION` is also a
        #   valid value.
        #
        #   @return [Symbol, HubspotSDK::Models::Scheduler::ExternalMeetingsLinkSettings::StartTimeIncrementMinutes]
        required :start_time_increment_minutes,
                 enum: -> { HubspotSDK::Scheduler::ExternalMeetingsLinkSettings::StartTimeIncrementMinutes },
                 api_name: :startTimeIncrementMinutes

        # @!attribute weeks_to_advertise
        #   Legacy property that indicates the number of weeks in advance that availability
        #   is advertised. May be outdated or superseded by other properties.
        #
        #   @return [Integer]
        required :weeks_to_advertise, Integer, api_name: :weeksToAdvertise

        # @!attribute custom_availability_end_date
        #   The end date for a meeting link's custom availability window, represented as
        #   Unix time in milliseconds.
        #
        #   @return [Integer, nil]
        optional :custom_availability_end_date, Integer, api_name: :customAvailabilityEndDate

        # @!attribute custom_availability_start_date
        #   The start date for a meeting link's custom availability window, represented as
        #   Unix time in milliseconds.
        #
        #   @return [Integer, nil]
        optional :custom_availability_start_date, Integer, api_name: :customAvailabilityStartDate

        # @!attribute display_info
        #
        #   @return [HubspotSDK::Models::Scheduler::ExternalLinkDisplayInfo, nil]
        optional :display_info, -> { HubspotSDK::Scheduler::ExternalLinkDisplayInfo }, api_name: :displayInfo

        # @!attribute guest_settings
        #
        #   @return [HubspotSDK::Models::Scheduler::ExternalGuestSettings, nil]
        optional :guest_settings,
                 -> {
                   HubspotSDK::Scheduler::ExternalGuestSettings
                 },
                 api_name: :guestSettings

        # @!attribute language
        #   The language setting used for the meeting link.
        #
        #   @return [String, nil]
        optional :language, String

        # @!attribute legal_consent_options
        #
        #   @return [HubspotSDK::Models::Scheduler::ExternalLegalConsentOptions, nil]
        optional :legal_consent_options,
                 -> { HubspotSDK::Scheduler::ExternalLegalConsentOptions },
                 api_name: :legalConsentOptions

        # @!attribute locale
        #   The locale setting used for formatting dates and times in the meeting link.
        #
        #   @return [String, nil]
        optional :locale, String

        # @!attribute location
        #   The physical or virtual location where the meeting will take place.
        #
        #   @return [String, nil]
        optional :location, String

        # @!attribute redirect_url
        #   The URL to redirect to after a meeting is booked.
        #
        #   @return [String, nil]
        optional :redirect_url, String, api_name: :redirectUrl

        # @!attribute welcome_screen_info
        #
        #   @return [HubspotSDK::Models::Scheduler::ExternalMeetingsWelcomeScreenInfo, nil]
        optional :welcome_screen_info,
                 -> { HubspotSDK::Scheduler::ExternalMeetingsWelcomeScreenInfo },
                 api_name: :welcomeScreenInfo

        # @!method initialize(availability:, durations:, form_fields:, legal_consent_enabled:, meeting_buffer_time:, owner_prioritized:, start_time_increment_minutes:, weeks_to_advertise:, custom_availability_end_date: nil, custom_availability_start_date: nil, display_info: nil, guest_settings: nil, language: nil, legal_consent_options: nil, locale: nil, location: nil, redirect_url: nil, welcome_screen_info: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Scheduler::ExternalMeetingsLinkSettings} for more details.
        #
        #   @param availability [Hash{Symbol=>HubspotSDK::Models::Scheduler::ExternalClosedRange}] An array containing the closed range availability for a meeting link. Closed ran
        #
        #   @param durations [Array<Integer>]
        #
        #   @param form_fields [Array<HubspotSDK::Models::Scheduler::ExternalLinkFormField>]
        #
        #   @param legal_consent_enabled [Boolean] Whether the legal consent checkbox is displayed during meeting booking.
        #
        #   @param meeting_buffer_time [Integer] The minimum buffer time in milliseconds between consecutive meetings.
        #
        #   @param owner_prioritized [Boolean] Indicates whether the meeting owner is prioritized during booking. Only applies
        #
        #   @param start_time_increment_minutes [Symbol, HubspotSDK::Models::Scheduler::ExternalMeetingsLinkSettings::StartTimeIncrementMinutes] The increment for available start times of meetings, spelt out as a word (e.g. 1
        #
        #   @param weeks_to_advertise [Integer] Legacy property that indicates the number of weeks in advance that availability
        #
        #   @param custom_availability_end_date [Integer] The end date for a meeting link's custom availability window, represented as Uni
        #
        #   @param custom_availability_start_date [Integer] The start date for a meeting link's custom availability window, represented as U
        #
        #   @param display_info [HubspotSDK::Models::Scheduler::ExternalLinkDisplayInfo]
        #
        #   @param guest_settings [HubspotSDK::Models::Scheduler::ExternalGuestSettings]
        #
        #   @param language [String] The language setting used for the meeting link.
        #
        #   @param legal_consent_options [HubspotSDK::Models::Scheduler::ExternalLegalConsentOptions]
        #
        #   @param locale [String] The locale setting used for formatting dates and times in the meeting link.
        #
        #   @param location [String] The physical or virtual location where the meeting will take place.
        #
        #   @param redirect_url [String] The URL to redirect to after a meeting is booked.
        #
        #   @param welcome_screen_info [HubspotSDK::Models::Scheduler::ExternalMeetingsWelcomeScreenInfo]

        # The increment for available start times of meetings, spelt out as a word (e.g.
        # 15 minute increment corresponds to `FIFTEEN`). `MEETING_DURATION` is also a
        # valid value.
        #
        # @see HubspotSDK::Models::Scheduler::ExternalMeetingsLinkSettings#start_time_increment_minutes
        module StartTimeIncrementMinutes
          extend HubspotSDK::Internal::Type::Enum

          FIFTEEN = :FIFTEEN
          FIVE = :FIVE
          FORTY_FIVE = :FORTY_FIVE
          MEETING_DURATION = :MEETING_DURATION
          NINETY = :NINETY
          ONE_HUNDRED_TWENTY = :ONE_HUNDRED_TWENTY
          SIXTY = :SIXTY
          TEN = :TEN
          THIRTY = :THIRTY
          TWENTY = :TWENTY

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
