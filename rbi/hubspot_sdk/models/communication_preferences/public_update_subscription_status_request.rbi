# typed: strong

module HubspotSDK
  module Models
    module CommunicationPreferences
      class PublicUpdateSubscriptionStatusRequest < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::CommunicationPreferences::PublicUpdateSubscriptionStatusRequest,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The email address of the user whose subscription status is being updated. It is
        # a required field and must be a string.
        sig { returns(String) }
        attr_accessor :email_address

        # The unique identifier of the subscription for which the status is being updated.
        # It is a required field and must be a string.
        sig { returns(String) }
        attr_accessor :subscription_id

        # The legal basis for processing the subscription status change. It is an optional
        # field and must be a string with valid values including
        # 'LEGITIMATE_INTEREST_PQL', 'LEGITIMATE_INTEREST_CLIENT',
        # 'PERFORMANCE_OF_CONTRACT', 'CONSENT_WITH_NOTICE', 'NON_GDPR',
        # 'PROCESS_AND_STORE', and 'LEGITIMATE_INTEREST_OTHER'.
        sig do
          returns(
            T.nilable(
              HubspotSDK::CommunicationPreferences::PublicUpdateSubscriptionStatusRequest::LegalBasis::OrSymbol
            )
          )
        end
        attr_reader :legal_basis

        sig do
          params(
            legal_basis:
              HubspotSDK::CommunicationPreferences::PublicUpdateSubscriptionStatusRequest::LegalBasis::OrSymbol
          ).void
        end
        attr_writer :legal_basis

        # An optional field providing an explanation for the legal basis used. It must be
        # a string.
        sig { returns(T.nilable(String)) }
        attr_reader :legal_basis_explanation

        sig { params(legal_basis_explanation: String).void }
        attr_writer :legal_basis_explanation

        sig do
          params(
            email_address: String,
            subscription_id: String,
            legal_basis:
              HubspotSDK::CommunicationPreferences::PublicUpdateSubscriptionStatusRequest::LegalBasis::OrSymbol,
            legal_basis_explanation: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The email address of the user whose subscription status is being updated. It is
          # a required field and must be a string.
          email_address:,
          # The unique identifier of the subscription for which the status is being updated.
          # It is a required field and must be a string.
          subscription_id:,
          # The legal basis for processing the subscription status change. It is an optional
          # field and must be a string with valid values including
          # 'LEGITIMATE_INTEREST_PQL', 'LEGITIMATE_INTEREST_CLIENT',
          # 'PERFORMANCE_OF_CONTRACT', 'CONSENT_WITH_NOTICE', 'NON_GDPR',
          # 'PROCESS_AND_STORE', and 'LEGITIMATE_INTEREST_OTHER'.
          legal_basis: nil,
          # An optional field providing an explanation for the legal basis used. It must be
          # a string.
          legal_basis_explanation: nil
        )
        end

        sig do
          override.returns(
            {
              email_address: String,
              subscription_id: String,
              legal_basis:
                HubspotSDK::CommunicationPreferences::PublicUpdateSubscriptionStatusRequest::LegalBasis::OrSymbol,
              legal_basis_explanation: String
            }
          )
        end
        def to_hash
        end

        # The legal basis for processing the subscription status change. It is an optional
        # field and must be a string with valid values including
        # 'LEGITIMATE_INTEREST_PQL', 'LEGITIMATE_INTEREST_CLIENT',
        # 'PERFORMANCE_OF_CONTRACT', 'CONSENT_WITH_NOTICE', 'NON_GDPR',
        # 'PROCESS_AND_STORE', and 'LEGITIMATE_INTEREST_OTHER'.
        module LegalBasis
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::CommunicationPreferences::PublicUpdateSubscriptionStatusRequest::LegalBasis
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CONSENT_WITH_NOTICE =
            T.let(
              :CONSENT_WITH_NOTICE,
              HubspotSDK::CommunicationPreferences::PublicUpdateSubscriptionStatusRequest::LegalBasis::TaggedSymbol
            )
          LEGITIMATE_INTEREST_CLIENT =
            T.let(
              :LEGITIMATE_INTEREST_CLIENT,
              HubspotSDK::CommunicationPreferences::PublicUpdateSubscriptionStatusRequest::LegalBasis::TaggedSymbol
            )
          LEGITIMATE_INTEREST_OTHER =
            T.let(
              :LEGITIMATE_INTEREST_OTHER,
              HubspotSDK::CommunicationPreferences::PublicUpdateSubscriptionStatusRequest::LegalBasis::TaggedSymbol
            )
          LEGITIMATE_INTEREST_PQL =
            T.let(
              :LEGITIMATE_INTEREST_PQL,
              HubspotSDK::CommunicationPreferences::PublicUpdateSubscriptionStatusRequest::LegalBasis::TaggedSymbol
            )
          NON_GDPR =
            T.let(
              :NON_GDPR,
              HubspotSDK::CommunicationPreferences::PublicUpdateSubscriptionStatusRequest::LegalBasis::TaggedSymbol
            )
          PERFORMANCE_OF_CONTRACT =
            T.let(
              :PERFORMANCE_OF_CONTRACT,
              HubspotSDK::CommunicationPreferences::PublicUpdateSubscriptionStatusRequest::LegalBasis::TaggedSymbol
            )
          PROCESS_AND_STORE =
            T.let(
              :PROCESS_AND_STORE,
              HubspotSDK::CommunicationPreferences::PublicUpdateSubscriptionStatusRequest::LegalBasis::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::CommunicationPreferences::PublicUpdateSubscriptionStatusRequest::LegalBasis::TaggedSymbol
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
