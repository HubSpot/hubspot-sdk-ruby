# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Scheduler
      class ExternalLegalConsentOptions < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute communication_consent_checkboxes
        #
        #   @return [Array<HubSpotSDK::Models::Scheduler::ExternalCommunicationConsentCheckbox>]
        required :communication_consent_checkboxes,
                 -> {
                   HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Scheduler::ExternalCommunicationConsentCheckbox]
                 },
                 api_name: :communicationConsentCheckboxes

        # @!attribute communication_consent_text
        #   The text that describes the consent for communication preferences.
        #
        #   @return [String]
        required :communication_consent_text, String, api_name: :communicationConsentText

        # @!attribute is_legitimate_interest
        #   Whether the legal basis for processing is legitimate interest.
        #
        #   @return [Boolean]
        required :is_legitimate_interest, HubSpotSDK::Internal::Type::Boolean, api_name: :isLegitimateInterest

        # @!attribute legitimate_interest_subscription_types
        #
        #   @return [Array<Integer>]
        required :legitimate_interest_subscription_types,
                 HubSpotSDK::Internal::Type::ArrayOf[Integer],
                 api_name: :legitimateInterestSubscriptionTypes

        # @!attribute privacy_policy_text
        #   The text that describes the data processing privacy policy.
        #
        #   @return [String]
        required :privacy_policy_text, String, api_name: :privacyPolicyText

        # @!attribute processing_consent_checkbox_label
        #   The label for the checkbox used to obtain consent for data processing.
        #
        #   @return [String]
        required :processing_consent_checkbox_label, String, api_name: :processingConsentCheckboxLabel

        # @!attribute processing_consent_footer_text
        #   The footer text accompanying the consent for data processing. This field is not
        #   used by the meeting platform and will always be empty.
        #
        #   @return [String]
        required :processing_consent_footer_text, String, api_name: :processingConsentFooterText

        # @!attribute processing_consent_text
        #   The text that describes the consent for processing personal data.
        #
        #   @return [String]
        required :processing_consent_text, String, api_name: :processingConsentText

        # @!attribute processing_consent_type
        #   The type of consent required for processing. Accepted values are: IMPLICIT,
        #   REQUIRED_CHECKBOX.
        #
        #   @return [Symbol, HubSpotSDK::Models::Scheduler::ExternalLegalConsentOptions::ProcessingConsentType]
        required :processing_consent_type,
                 enum: -> { HubSpotSDK::Scheduler::ExternalLegalConsentOptions::ProcessingConsentType },
                 api_name: :processingConsentType

        # @!attribute legitimate_interest_legal_basis
        #   The legal basis for processing under legitimate interest. Accepted values are:
        #   LEGITIMATE_INTEREST_PQL, LEGITIMATE_INTEREST_CLIENT, PERFORMANCE_OF_CONTRACT,
        #   CONSENT_WITH_NOTICE, NON_GDPR, PROCESS_AND_STORE, LEGITIMATE_INTEREST_OTHER.
        #
        #   @return [Symbol, HubSpotSDK::Models::Scheduler::ExternalLegalConsentOptions::LegitimateInterestLegalBasis, nil]
        optional :legitimate_interest_legal_basis,
                 enum: -> {
                   HubSpotSDK::Scheduler::ExternalLegalConsentOptions::LegitimateInterestLegalBasis
                 },
                 api_name: :legitimateInterestLegalBasis

        # @!method initialize(communication_consent_checkboxes:, communication_consent_text:, is_legitimate_interest:, legitimate_interest_subscription_types:, privacy_policy_text:, processing_consent_checkbox_label:, processing_consent_footer_text:, processing_consent_text:, processing_consent_type:, legitimate_interest_legal_basis: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Scheduler::ExternalLegalConsentOptions} for more details.
        #
        #   @param communication_consent_checkboxes [Array<HubSpotSDK::Models::Scheduler::ExternalCommunicationConsentCheckbox>]
        #
        #   @param communication_consent_text [String] The text that describes the consent for communication preferences.
        #
        #   @param is_legitimate_interest [Boolean] Whether the legal basis for processing is legitimate interest.
        #
        #   @param legitimate_interest_subscription_types [Array<Integer>]
        #
        #   @param privacy_policy_text [String] The text that describes the data processing privacy policy.
        #
        #   @param processing_consent_checkbox_label [String] The label for the checkbox used to obtain consent for data processing.
        #
        #   @param processing_consent_footer_text [String] The footer text accompanying the consent for data processing. This field is not
        #
        #   @param processing_consent_text [String] The text that describes the consent for processing personal data.
        #
        #   @param processing_consent_type [Symbol, HubSpotSDK::Models::Scheduler::ExternalLegalConsentOptions::ProcessingConsentType] The type of consent required for processing. Accepted values are: IMPLICIT, REQU
        #
        #   @param legitimate_interest_legal_basis [Symbol, HubSpotSDK::Models::Scheduler::ExternalLegalConsentOptions::LegitimateInterestLegalBasis] The legal basis for processing under legitimate interest. Accepted values are: L

        # The type of consent required for processing. Accepted values are: IMPLICIT,
        # REQUIRED_CHECKBOX.
        #
        # @see HubSpotSDK::Models::Scheduler::ExternalLegalConsentOptions#processing_consent_type
        module ProcessingConsentType
          extend HubSpotSDK::Internal::Type::Enum

          IMPLICIT = :IMPLICIT
          REQUIRED_CHECKBOX = :REQUIRED_CHECKBOX

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The legal basis for processing under legitimate interest. Accepted values are:
        # LEGITIMATE_INTEREST_PQL, LEGITIMATE_INTEREST_CLIENT, PERFORMANCE_OF_CONTRACT,
        # CONSENT_WITH_NOTICE, NON_GDPR, PROCESS_AND_STORE, LEGITIMATE_INTEREST_OTHER.
        #
        # @see HubSpotSDK::Models::Scheduler::ExternalLegalConsentOptions#legitimate_interest_legal_basis
        module LegitimateInterestLegalBasis
          extend HubSpotSDK::Internal::Type::Enum

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
