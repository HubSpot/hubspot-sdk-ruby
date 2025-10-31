# frozen_string_literal: true

module HubspotSDK
  module Models
    module Scheduler
      class ExternalMeetingBooking < HubspotSDK::Internal::Type::BaseModel
        # @!attribute duration
        #
        #   @return [Integer]
        required :duration, Integer

        # @!attribute email
        #
        #   @return [String]
        required :email, String

        # @!attribute first_name
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
        #
        #   @return [String]
        required :slug, String

        # @!attribute start_time
        #
        #   @return [Time]
        required :start_time, Time, api_name: :startTime

        # @!attribute locale
        #
        #   @return [String, nil]
        optional :locale, String

        # @!attribute timezone
        #
        #   @return [String, nil]
        optional :timezone, String

        # @!method initialize(duration:, email:, first_name:, form_fields:, last_name:, legal_consent_responses:, likely_available_user_ids:, slug:, start_time:, locale: nil, timezone: nil)
        #   @param duration [Integer]
        #   @param email [String]
        #   @param first_name [String]
        #   @param form_fields [Array<HubspotSDK::Models::Scheduler::ExternalBookingFormField>]
        #   @param last_name [String]
        #   @param legal_consent_responses [Array<HubspotSDK::Models::Scheduler::ExternalLegalConsentResponse>]
        #   @param likely_available_user_ids [Array<String>]
        #   @param slug [String]
        #   @param start_time [Time]
        #   @param locale [String]
        #   @param timezone [String]
      end
    end
  end
end
