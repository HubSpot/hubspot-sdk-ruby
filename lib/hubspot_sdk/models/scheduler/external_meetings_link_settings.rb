# frozen_string_literal: true

module HubspotSDK
  module Models
    module Scheduler
      class ExternalMeetingsLinkSettings < HubspotSDK::Internal::Type::BaseModel
        # @!attribute availability
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
        #
        #   @return [Boolean]
        required :legal_consent_enabled, HubspotSDK::Internal::Type::Boolean, api_name: :legalConsentEnabled

        # @!attribute meeting_buffer_time
        #
        #   @return [Integer]
        required :meeting_buffer_time, Integer, api_name: :meetingBufferTime

        # @!attribute owner_prioritized
        #
        #   @return [Boolean]
        required :owner_prioritized, HubspotSDK::Internal::Type::Boolean, api_name: :ownerPrioritized

        # @!attribute start_time_increment_minutes
        #
        #   @return [String]
        required :start_time_increment_minutes, String, api_name: :startTimeIncrementMinutes

        # @!attribute weeks_to_advertise
        #
        #   @return [Integer]
        required :weeks_to_advertise, Integer, api_name: :weeksToAdvertise

        # @!attribute custom_availability_end_date
        #
        #   @return [Integer, nil]
        optional :custom_availability_end_date, Integer, api_name: :customAvailabilityEndDate

        # @!attribute custom_availability_start_date
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
        #
        #   @return [String, nil]
        optional :locale, String

        # @!attribute location
        #
        #   @return [String, nil]
        optional :location, String

        # @!attribute redirect_url
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
        #   @param availability [Hash{Symbol=>HubspotSDK::Models::Scheduler::ExternalClosedRange}]
        #   @param durations [Array<Integer>]
        #   @param form_fields [Array<HubspotSDK::Models::Scheduler::ExternalLinkFormField>]
        #   @param legal_consent_enabled [Boolean]
        #   @param meeting_buffer_time [Integer]
        #   @param owner_prioritized [Boolean]
        #   @param start_time_increment_minutes [String]
        #   @param weeks_to_advertise [Integer]
        #   @param custom_availability_end_date [Integer]
        #   @param custom_availability_start_date [Integer]
        #   @param display_info [HubspotSDK::Models::Scheduler::ExternalLinkDisplayInfo]
        #   @param guest_settings [HubspotSDK::Models::Scheduler::ExternalGuestSettings]
        #   @param language [String]
        #   @param legal_consent_options [HubspotSDK::Models::Scheduler::ExternalLegalConsentOptions]
        #   @param locale [String]
        #   @param location [String]
        #   @param redirect_url [String]
        #   @param welcome_screen_info [HubspotSDK::Models::Scheduler::ExternalMeetingsWelcomeScreenInfo]
      end
    end
  end
end
