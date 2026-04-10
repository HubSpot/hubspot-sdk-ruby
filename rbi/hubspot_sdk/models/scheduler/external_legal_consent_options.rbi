# typed: strong

module HubSpotSDK
  module Models
    module Scheduler
      class ExternalLegalConsentOptions < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Scheduler::ExternalLegalConsentOptions,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[
              HubSpotSDK::Scheduler::ExternalCommunicationConsentCheckbox
            ]
          )
        end
        attr_accessor :communication_consent_checkboxes

        # The text that describes the consent for communication preferences.
        sig { returns(String) }
        attr_accessor :communication_consent_text

        # Whether the legal basis for processing is legitimate interest.
        sig { returns(T::Boolean) }
        attr_accessor :is_legitimate_interest

        sig { returns(T::Array[Integer]) }
        attr_accessor :legitimate_interest_subscription_types

        # The text that describes the data processing privacy policy.
        sig { returns(String) }
        attr_accessor :privacy_policy_text

        # The label for the checkbox used to obtain consent for data processing.
        sig { returns(String) }
        attr_accessor :processing_consent_checkbox_label

        # The footer text accompanying the consent for data processing. This field is not
        # used by the meeting platform and will always be empty.
        sig { returns(String) }
        attr_accessor :processing_consent_footer_text

        # The text that describes the consent for processing personal data.
        sig { returns(String) }
        attr_accessor :processing_consent_text

        # The type of consent required for processing. Accepted values are: IMPLICIT,
        # REQUIRED_CHECKBOX.
        sig do
          returns(
            HubSpotSDK::Scheduler::ExternalLegalConsentOptions::ProcessingConsentType::TaggedSymbol
          )
        end
        attr_accessor :processing_consent_type

        # The legal basis for processing under legitimate interest. Accepted values are:
        # LEGITIMATE_INTEREST_PQL, LEGITIMATE_INTEREST_CLIENT, PERFORMANCE_OF_CONTRACT,
        # CONSENT_WITH_NOTICE, NON_GDPR, PROCESS_AND_STORE, LEGITIMATE_INTEREST_OTHER.
        sig do
          returns(
            T.nilable(
              HubSpotSDK::Scheduler::ExternalLegalConsentOptions::LegitimateInterestLegalBasis::TaggedSymbol
            )
          )
        end
        attr_reader :legitimate_interest_legal_basis

        sig do
          params(
            legitimate_interest_legal_basis:
              HubSpotSDK::Scheduler::ExternalLegalConsentOptions::LegitimateInterestLegalBasis::OrSymbol
          ).void
        end
        attr_writer :legitimate_interest_legal_basis

        sig do
          params(
            communication_consent_checkboxes:
              T::Array[
                HubSpotSDK::Scheduler::ExternalCommunicationConsentCheckbox::OrHash
              ],
            communication_consent_text: String,
            is_legitimate_interest: T::Boolean,
            legitimate_interest_subscription_types: T::Array[Integer],
            privacy_policy_text: String,
            processing_consent_checkbox_label: String,
            processing_consent_footer_text: String,
            processing_consent_text: String,
            processing_consent_type:
              HubSpotSDK::Scheduler::ExternalLegalConsentOptions::ProcessingConsentType::OrSymbol,
            legitimate_interest_legal_basis:
              HubSpotSDK::Scheduler::ExternalLegalConsentOptions::LegitimateInterestLegalBasis::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          communication_consent_checkboxes:,
          # The text that describes the consent for communication preferences.
          communication_consent_text:,
          # Whether the legal basis for processing is legitimate interest.
          is_legitimate_interest:,
          legitimate_interest_subscription_types:,
          # The text that describes the data processing privacy policy.
          privacy_policy_text:,
          # The label for the checkbox used to obtain consent for data processing.
          processing_consent_checkbox_label:,
          # The footer text accompanying the consent for data processing. This field is not
          # used by the meeting platform and will always be empty.
          processing_consent_footer_text:,
          # The text that describes the consent for processing personal data.
          processing_consent_text:,
          # The type of consent required for processing. Accepted values are: IMPLICIT,
          # REQUIRED_CHECKBOX.
          processing_consent_type:,
          # The legal basis for processing under legitimate interest. Accepted values are:
          # LEGITIMATE_INTEREST_PQL, LEGITIMATE_INTEREST_CLIENT, PERFORMANCE_OF_CONTRACT,
          # CONSENT_WITH_NOTICE, NON_GDPR, PROCESS_AND_STORE, LEGITIMATE_INTEREST_OTHER.
          legitimate_interest_legal_basis: nil
        )
        end

        sig do
          override.returns(
            {
              communication_consent_checkboxes:
                T::Array[
                  HubSpotSDK::Scheduler::ExternalCommunicationConsentCheckbox
                ],
              communication_consent_text: String,
              is_legitimate_interest: T::Boolean,
              legitimate_interest_subscription_types: T::Array[Integer],
              privacy_policy_text: String,
              processing_consent_checkbox_label: String,
              processing_consent_footer_text: String,
              processing_consent_text: String,
              processing_consent_type:
                HubSpotSDK::Scheduler::ExternalLegalConsentOptions::ProcessingConsentType::TaggedSymbol,
              legitimate_interest_legal_basis:
                HubSpotSDK::Scheduler::ExternalLegalConsentOptions::LegitimateInterestLegalBasis::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        # The type of consent required for processing. Accepted values are: IMPLICIT,
        # REQUIRED_CHECKBOX.
        module ProcessingConsentType
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Scheduler::ExternalLegalConsentOptions::ProcessingConsentType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          IMPLICIT =
            T.let(
              :IMPLICIT,
              HubSpotSDK::Scheduler::ExternalLegalConsentOptions::ProcessingConsentType::TaggedSymbol
            )
          REQUIRED_CHECKBOX =
            T.let(
              :REQUIRED_CHECKBOX,
              HubSpotSDK::Scheduler::ExternalLegalConsentOptions::ProcessingConsentType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Scheduler::ExternalLegalConsentOptions::ProcessingConsentType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The legal basis for processing under legitimate interest. Accepted values are:
        # LEGITIMATE_INTEREST_PQL, LEGITIMATE_INTEREST_CLIENT, PERFORMANCE_OF_CONTRACT,
        # CONSENT_WITH_NOTICE, NON_GDPR, PROCESS_AND_STORE, LEGITIMATE_INTEREST_OTHER.
        module LegitimateInterestLegalBasis
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Scheduler::ExternalLegalConsentOptions::LegitimateInterestLegalBasis
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CONSENT_WITH_NOTICE =
            T.let(
              :CONSENT_WITH_NOTICE,
              HubSpotSDK::Scheduler::ExternalLegalConsentOptions::LegitimateInterestLegalBasis::TaggedSymbol
            )
          LEGITIMATE_INTEREST_CLIENT =
            T.let(
              :LEGITIMATE_INTEREST_CLIENT,
              HubSpotSDK::Scheduler::ExternalLegalConsentOptions::LegitimateInterestLegalBasis::TaggedSymbol
            )
          LEGITIMATE_INTEREST_OTHER =
            T.let(
              :LEGITIMATE_INTEREST_OTHER,
              HubSpotSDK::Scheduler::ExternalLegalConsentOptions::LegitimateInterestLegalBasis::TaggedSymbol
            )
          LEGITIMATE_INTEREST_PQL =
            T.let(
              :LEGITIMATE_INTEREST_PQL,
              HubSpotSDK::Scheduler::ExternalLegalConsentOptions::LegitimateInterestLegalBasis::TaggedSymbol
            )
          NON_GDPR =
            T.let(
              :NON_GDPR,
              HubSpotSDK::Scheduler::ExternalLegalConsentOptions::LegitimateInterestLegalBasis::TaggedSymbol
            )
          PERFORMANCE_OF_CONTRACT =
            T.let(
              :PERFORMANCE_OF_CONTRACT,
              HubSpotSDK::Scheduler::ExternalLegalConsentOptions::LegitimateInterestLegalBasis::TaggedSymbol
            )
          PROCESS_AND_STORE =
            T.let(
              :PROCESS_AND_STORE,
              HubSpotSDK::Scheduler::ExternalLegalConsentOptions::LegitimateInterestLegalBasis::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Scheduler::ExternalLegalConsentOptions::LegitimateInterestLegalBasis::TaggedSymbol
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
