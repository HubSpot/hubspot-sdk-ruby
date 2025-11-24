# typed: strong

module HubspotSDK
  module Models
    module Scheduler
      class ExternalLegalConsentOptions < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Scheduler::ExternalLegalConsentOptions,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[
              HubspotSDK::Scheduler::ExternalCommunicationConsentCheckbox
            ]
          )
        end
        attr_accessor :communication_consent_checkboxes

        sig { returns(String) }
        attr_accessor :communication_consent_text

        sig { returns(T::Boolean) }
        attr_accessor :is_legitimate_interest

        sig { returns(T::Array[Integer]) }
        attr_accessor :legitimate_interest_subscription_types

        sig { returns(String) }
        attr_accessor :privacy_policy_text

        sig { returns(String) }
        attr_accessor :processing_consent_checkbox_label

        sig { returns(String) }
        attr_accessor :processing_consent_footer_text

        sig { returns(String) }
        attr_accessor :processing_consent_text

        sig { returns(String) }
        attr_accessor :processing_consent_type

        sig do
          returns(
            T.nilable(
              HubspotSDK::Scheduler::ExternalLegalConsentOptions::LegitimateInterestLegalBasis::TaggedSymbol
            )
          )
        end
        attr_reader :legitimate_interest_legal_basis

        sig do
          params(
            legitimate_interest_legal_basis:
              HubspotSDK::Scheduler::ExternalLegalConsentOptions::LegitimateInterestLegalBasis::OrSymbol
          ).void
        end
        attr_writer :legitimate_interest_legal_basis

        sig do
          params(
            communication_consent_checkboxes:
              T::Array[
                HubspotSDK::Scheduler::ExternalCommunicationConsentCheckbox::OrHash
              ],
            communication_consent_text: String,
            is_legitimate_interest: T::Boolean,
            legitimate_interest_subscription_types: T::Array[Integer],
            privacy_policy_text: String,
            processing_consent_checkbox_label: String,
            processing_consent_footer_text: String,
            processing_consent_text: String,
            processing_consent_type: String,
            legitimate_interest_legal_basis:
              HubspotSDK::Scheduler::ExternalLegalConsentOptions::LegitimateInterestLegalBasis::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          communication_consent_checkboxes:,
          communication_consent_text:,
          is_legitimate_interest:,
          legitimate_interest_subscription_types:,
          privacy_policy_text:,
          processing_consent_checkbox_label:,
          processing_consent_footer_text:,
          processing_consent_text:,
          processing_consent_type:,
          legitimate_interest_legal_basis: nil
        )
        end

        sig do
          override.returns(
            {
              communication_consent_checkboxes:
                T::Array[
                  HubspotSDK::Scheduler::ExternalCommunicationConsentCheckbox
                ],
              communication_consent_text: String,
              is_legitimate_interest: T::Boolean,
              legitimate_interest_subscription_types: T::Array[Integer],
              privacy_policy_text: String,
              processing_consent_checkbox_label: String,
              processing_consent_footer_text: String,
              processing_consent_text: String,
              processing_consent_type: String,
              legitimate_interest_legal_basis:
                HubspotSDK::Scheduler::ExternalLegalConsentOptions::LegitimateInterestLegalBasis::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        module LegitimateInterestLegalBasis
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Scheduler::ExternalLegalConsentOptions::LegitimateInterestLegalBasis
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CONSENT_WITH_NOTICE =
            T.let(
              :CONSENT_WITH_NOTICE,
              HubspotSDK::Scheduler::ExternalLegalConsentOptions::LegitimateInterestLegalBasis::TaggedSymbol
            )
          LEGITIMATE_INTEREST_CLIENT =
            T.let(
              :LEGITIMATE_INTEREST_CLIENT,
              HubspotSDK::Scheduler::ExternalLegalConsentOptions::LegitimateInterestLegalBasis::TaggedSymbol
            )
          LEGITIMATE_INTEREST_OTHER =
            T.let(
              :LEGITIMATE_INTEREST_OTHER,
              HubspotSDK::Scheduler::ExternalLegalConsentOptions::LegitimateInterestLegalBasis::TaggedSymbol
            )
          LEGITIMATE_INTEREST_PQL =
            T.let(
              :LEGITIMATE_INTEREST_PQL,
              HubspotSDK::Scheduler::ExternalLegalConsentOptions::LegitimateInterestLegalBasis::TaggedSymbol
            )
          NON_GDPR =
            T.let(
              :NON_GDPR,
              HubspotSDK::Scheduler::ExternalLegalConsentOptions::LegitimateInterestLegalBasis::TaggedSymbol
            )
          PERFORMANCE_OF_CONTRACT =
            T.let(
              :PERFORMANCE_OF_CONTRACT,
              HubspotSDK::Scheduler::ExternalLegalConsentOptions::LegitimateInterestLegalBasis::TaggedSymbol
            )
          PROCESS_AND_STORE =
            T.let(
              :PROCESS_AND_STORE,
              HubspotSDK::Scheduler::ExternalLegalConsentOptions::LegitimateInterestLegalBasis::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Scheduler::ExternalLegalConsentOptions::LegitimateInterestLegalBasis::TaggedSymbol
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
