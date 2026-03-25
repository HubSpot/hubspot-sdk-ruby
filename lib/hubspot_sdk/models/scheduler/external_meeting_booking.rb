# frozen_string_literal: true

module HubspotSDK
  module Models
    module Scheduler
      class ExternalMeetingBooking < HubspotSDK::Internal::Type::BaseModel
        # @!attribute duration
        #   The duration of the meeting in milliseconds.
        #
        #   @return [Integer]
        required :duration, Integer

        # @!attribute email
        #   The email address of the person booking the meeting.
        #
        #   @return [String]
        required :email, String

        # @!attribute first_name
        #   The first name of the person booking the meeting.
        #
        #   @return [String]
        required :first_name, String, api_name: :firstName

        # @!attribute form_fields
        #
        #   @return [Array<HubspotSDK::Models::Scheduler::ExternalBookingFormField>]
        required :form_fields,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Scheduler::ExternalBookingFormField] },
                 api_name: :formFields

        # @!attribute last_name
        #   The last name of the person booking the meeting.
        #
        #   @return [String]
        required :last_name, String, api_name: :lastName

        # @!attribute legal_consent_responses
        #
        #   @return [Array<HubspotSDK::Models::Scheduler::ExternalLegalConsentResponse>]
        required :legal_consent_responses,
                 -> {
                   HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Scheduler::ExternalLegalConsentResponse]
                 },
                 api_name: :legalConsentResponses

        # @!attribute likely_available_user_ids
        #
        #   @return [Array<String>]
        required :likely_available_user_ids,
                 HubspotSDK::Internal::Type::ArrayOf[String],
                 api_name: :likelyAvailableUserIds

        # @!attribute slug
        #   The unique path identifier for the meeting page.
        #
        #   @return [String]
        required :slug, String

        # @!attribute start_time
        #   The date and time when the meeting is scheduled to start, in ISO 8601 format.
        #
        #   @return [Time]
        required :start_time, Time, api_name: :startTime

        # @!attribute locale
        #   The locale used for formatting dates and times in the meeting booking.
        #
        #   @return [String, nil]
        optional :locale, String

        # @!attribute timezone
        #   The timezone in which the meeting is scheduled.
        #
        #   @return [String, nil]
        optional :timezone, String

        # @!method initialize(duration:, email:, first_name:, form_fields:, last_name:, legal_consent_responses:, likely_available_user_ids:, slug:, start_time:, locale: nil, timezone: nil)
        #   @param duration [Integer] The duration of the meeting in milliseconds.
        #
        #   @param email [String] The email address of the person booking the meeting.
        #
        #   @param first_name [String] The first name of the person booking the meeting.
        #
        #   @param form_fields [Array<HubspotSDK::Models::Scheduler::ExternalBookingFormField>]
        #
        #   @param last_name [String] The last name of the person booking the meeting.
        #
        #   @param legal_consent_responses [Array<HubspotSDK::Models::Scheduler::ExternalLegalConsentResponse>]
        #
        #   @param likely_available_user_ids [Array<String>]
        #
        #   @param slug [String] The unique path identifier for the meeting page.
        #
        #   @param start_time [Time] The date and time when the meeting is scheduled to start, in ISO 8601 format.
        #
        #   @param locale [String] The locale used for formatting dates and times in the meeting booking.
        #
        #   @param timezone [String] The timezone in which the meeting is scheduled.
      end
    end
  end
end
