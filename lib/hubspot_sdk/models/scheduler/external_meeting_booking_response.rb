# frozen_string_literal: true

module HubspotSDK
  module Models
    module Scheduler
      class ExternalMeetingBookingResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute booking_timezone
        #   The timezone the meeting was booked from.
        #
        #   @return [String]
        required :booking_timezone, String, api_name: :bookingTimezone

        # @!attribute calendar_event_id
        #   The unique identifier for the meeting's calendar event.
        #
        #   @return [String]
        required :calendar_event_id, String, api_name: :calendarEventId

        # @!attribute contact_id
        #   The ID of the contact associated to the meeting.
        #
        #   @return [String]
        required :contact_id, String, api_name: :contactId

        # @!attribute duration
        #   The duration of the meeting in milliseconds.
        #
        #   @return [Integer]
        required :duration, Integer

        # @!attribute end_
        #   The date and time when the meeting is scheduled to end, in ISO 8601 format.
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
        #   Whether the meeting was booked offline and no associated calendar event was
        #   created.
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
        #   The date and time when the meeting is scheduled to start, in ISO 8601 format.
        #
        #   @return [Time]
        required :start, Time

        # @!attribute subject
        #   The title of the meeting and calendar event.
        #
        #   @return [String]
        required :subject, String

        # @!attribute locale
        #   The locale the meeting was booked with, used to determine date formatting in
        #   calendar event description.
        #
        #   @return [String, nil]
        optional :locale, String

        # @!attribute location
        #   The physical or virtual location where the meeting will take place.
        #
        #   @return [String, nil]
        optional :location, String

        # @!attribute web_conference_meeting_id
        #   The unique identifier for the web conference meeting.
        #
        #   @return [String, nil]
        optional :web_conference_meeting_id, String, api_name: :webConferenceMeetingId

        # @!attribute web_conference_url
        #   The URL for accessing the meeting's web conference.
        #
        #   @return [String, nil]
        optional :web_conference_url, String, api_name: :webConferenceUrl

        # @!method initialize(booking_timezone:, calendar_event_id:, contact_id:, duration:, end_:, form_fields:, guest_emails:, is_offline:, legal_consent_responses:, start:, subject:, locale: nil, location: nil, web_conference_meeting_id: nil, web_conference_url: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Scheduler::ExternalMeetingBookingResponse} for more
        #   details.
        #
        #   @param booking_timezone [String] The timezone the meeting was booked from.
        #
        #   @param calendar_event_id [String] The unique identifier for the meeting's calendar event.
        #
        #   @param contact_id [String] The ID of the contact associated to the meeting.
        #
        #   @param duration [Integer] The duration of the meeting in milliseconds.
        #
        #   @param end_ [Time] The date and time when the meeting is scheduled to end, in ISO 8601 format.
        #
        #   @param form_fields [Array<HubspotSDK::Models::Scheduler::ExternalValidatedFormField>]
        #
        #   @param guest_emails [Array<String>]
        #
        #   @param is_offline [Boolean] Whether the meeting was booked offline and no associated calendar event was crea
        #
        #   @param legal_consent_responses [Array<HubspotSDK::Models::Scheduler::ExternalLegalConsentResponse>]
        #
        #   @param start [Time] The date and time when the meeting is scheduled to start, in ISO 8601 format.
        #
        #   @param subject [String] The title of the meeting and calendar event.
        #
        #   @param locale [String] The locale the meeting was booked with, used to determine date formatting in cal
        #
        #   @param location [String] The physical or virtual location where the meeting will take place.
        #
        #   @param web_conference_meeting_id [String] The unique identifier for the web conference meeting.
        #
        #   @param web_conference_url [String] The URL for accessing the meeting's web conference.
      end
    end
  end
end
