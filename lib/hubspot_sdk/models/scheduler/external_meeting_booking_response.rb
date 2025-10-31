# frozen_string_literal: true

module HubspotSDK
  module Models
    module Scheduler
      class ExternalMeetingBookingResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute booking_timezone
        #
        #   @return [String]
        required :booking_timezone, String, api_name: :bookingTimezone

        # @!attribute calendar_event_id
        #
        #   @return [String]
        required :calendar_event_id, String, api_name: :calendarEventId

        # @!attribute contact_id
        #
        #   @return [String]
        required :contact_id, String, api_name: :contactId

        # @!attribute duration
        #
        #   @return [Integer]
        required :duration, Integer

        # @!attribute end_
        #
        #   @return [Time]
        required :end_, Time, api_name: :end

        # @!attribute form_fields
        #
        #   @return [Array<HubspotSDK::Models::Scheduler::ExternalValidatedFormField>]
        required :form_fields,
                 -> {
                   HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Scheduler::ExternalValidatedFormField]
                 },
                 api_name: :formFields

        # @!attribute guest_emails
        #
        #   @return [Array<String>]
        required :guest_emails, HubspotSDK::Internal::Type::ArrayOf[String], api_name: :guestEmails

        # @!attribute is_offline
        #
        #   @return [Boolean]
        required :is_offline, HubspotSDK::Internal::Type::Boolean, api_name: :isOffline

        # @!attribute legal_consent_responses
        #
        #   @return [Array<HubspotSDK::Models::Scheduler::ExternalLegalConsentResponse>]
        required :legal_consent_responses,
                 -> {
                   HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Scheduler::ExternalLegalConsentResponse]
                 },
                 api_name: :legalConsentResponses

        # @!attribute start
        #
        #   @return [Time]
        required :start, Time

        # @!attribute subject
        #
        #   @return [String]
        required :subject, String

        # @!attribute locale
        #
        #   @return [String, nil]
        optional :locale, String

        # @!attribute location
        #
        #   @return [String, nil]
        optional :location, String

        # @!attribute web_conference_meeting_id
        #
        #   @return [String, nil]
        optional :web_conference_meeting_id, String, api_name: :webConferenceMeetingId

        # @!attribute web_conference_url
        #
        #   @return [String, nil]
        optional :web_conference_url, String, api_name: :webConferenceUrl

        # @!method initialize(booking_timezone:, calendar_event_id:, contact_id:, duration:, end_:, form_fields:, guest_emails:, is_offline:, legal_consent_responses:, start:, subject:, locale: nil, location: nil, web_conference_meeting_id: nil, web_conference_url: nil)
        #   @param booking_timezone [String]
        #   @param calendar_event_id [String]
        #   @param contact_id [String]
        #   @param duration [Integer]
        #   @param end_ [Time]
        #   @param form_fields [Array<HubspotSDK::Models::Scheduler::ExternalValidatedFormField>]
        #   @param guest_emails [Array<String>]
        #   @param is_offline [Boolean]
        #   @param legal_consent_responses [Array<HubspotSDK::Models::Scheduler::ExternalLegalConsentResponse>]
        #   @param start [Time]
        #   @param subject [String]
        #   @param locale [String]
        #   @param location [String]
        #   @param web_conference_meeting_id [String]
        #   @param web_conference_url [String]
      end
    end
  end
end
