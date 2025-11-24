# frozen_string_literal: true

module HubspotSDK
  module Models
    module Scheduler
      class ExternalLegalConsentOptions < HubspotSDK::Internal::Type::BaseModel
        # @!attribute communication_consent_checkboxes
        #
        #   @return [Array<HubspotSDK::Models::Scheduler::ExternalCommunicationConsentCheckbox>]
        required :communication_consent_checkboxes,
                 -> {
                   HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Scheduler::ExternalCommunicationConsentCheckbox]
                 },
                 api_name: :communicationConsentCheckboxes

        # @!attribute communication_consent_text
        #
        #   @return [String]
        required :communication_consent_text, String, api_name: :communicationConsentText

        # @!attribute is_legitimate_interest
        #
        #   @return [Boolean]
        required :is_legitimate_interest, HubspotSDK::Internal::Type::Boolean, api_name: :isLegitimateInterest

        # @!attribute legitimate_interest_subscription_types
        #
        #   @return [Array<Integer>]
        required :legitimate_interest_subscription_types,
                 HubspotSDK::Internal::Type::ArrayOf[Integer],
                 api_name: :legitimateInterestSubscriptionTypes

        # @!attribute privacy_policy_text
        #
        #   @return [String]
        required :privacy_policy_text, String, api_name: :privacyPolicyText

        # @!attribute processing_consent_checkbox_label
        #
        #   @return [String]
        required :processing_consent_checkbox_label, String, api_name: :processingConsentCheckboxLabel

        # @!attribute processing_consent_footer_text
        #
        #   @return [String]
        required :processing_consent_footer_text, String, api_name: :processingConsentFooterText

        # @!attribute processing_consent_text
        #
        #   @return [String]
        required :processing_consent_text, String, api_name: :processingConsentText

        # @!attribute processing_consent_type
        #
        #   @return [String]
        required :processing_consent_type, String, api_name: :processingConsentType

        # @!attribute legitimate_interest_legal_basis
        #
        #   @return [Symbol, HubspotSDK::Models::Scheduler::ExternalLegalConsentOptions::LegitimateInterestLegalBasis, nil]
        optional :legitimate_interest_legal_basis,
                 enum: -> {
                   HubspotSDK::Scheduler::ExternalLegalConsentOptions::LegitimateInterestLegalBasis
                 },
                 api_name: :legitimateInterestLegalBasis

        # @!method initialize(communication_consent_checkboxes:, communication_consent_text:, is_legitimate_interest:, legitimate_interest_subscription_types:, privacy_policy_text:, processing_consent_checkbox_label:, processing_consent_footer_text:, processing_consent_text:, processing_consent_type:, legitimate_interest_legal_basis: nil)
        #   @param communication_consent_checkboxes [Array<HubspotSDK::Models::Scheduler::ExternalCommunicationConsentCheckbox>]
        #   @param communication_consent_text [String]
        #   @param is_legitimate_interest [Boolean]
        #   @param legitimate_interest_subscription_types [Array<Integer>]
        #   @param privacy_policy_text [String]
        #   @param processing_consent_checkbox_label [String]
        #   @param processing_consent_footer_text [String]
        #   @param processing_consent_text [String]
        #   @param processing_consent_type [String]
        #   @param legitimate_interest_legal_basis [Symbol, HubspotSDK::Models::Scheduler::ExternalLegalConsentOptions::LegitimateInterestLegalBasis]

        # @see HubspotSDK::Models::Scheduler::ExternalLegalConsentOptions#legitimate_interest_legal_basis
        module LegitimateInterestLegalBasis
          extend HubspotSDK::Internal::Type::Enum

          CONSENT_WITH_NOTICE = :CONSENT_WITH_NOTICE
          LEGITIMATE_INTEREST_CLIENT = :LEGITIMATE_INTEREST_CLIENT
          LEGITIMATE_INTEREST_OTHER = :LEGITIMATE_INTEREST_OTHER
          LEGITIMATE_INTEREST_PQL = :LEGITIMATE_INTEREST_PQL
          NON_GDPR = :NON_GDPR
          PERFORMANCE_OF_CONTRACT = :PERFORMANCE_OF_CONTRACT
          PROCESS_AND_STORE = :PROCESS_AND_STORE

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
