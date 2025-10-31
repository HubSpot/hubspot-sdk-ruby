# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class PublicUpdateSubscriptionStatusRequest < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::PublicUpdateSubscriptionStatusRequest,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Contact's email address.
        sig { returns(String) }
        attr_accessor :email_address

        # ID of the subscription being updated for the contact.
        sig { returns(String) }
        attr_accessor :subscription_id

        # Legal basis for updating the contact's status (required for GDPR enabled
        # portals).
        sig do
          returns(
            T.nilable(
              HubspotSDK::Marketing::PublicUpdateSubscriptionStatusRequest::LegalBasis::OrSymbol
            )
          )
        end
        attr_reader :legal_basis

        sig do
          params(
            legal_basis:
              HubspotSDK::Marketing::PublicUpdateSubscriptionStatusRequest::LegalBasis::OrSymbol
          ).void
        end
        attr_writer :legal_basis

        # A more detailed explanation to go with the legal basis (required for GDPR
        # enabled portals).
        sig { returns(T.nilable(String)) }
        attr_reader :legal_basis_explanation

        sig { params(legal_basis_explanation: String).void }
        attr_writer :legal_basis_explanation

        sig do
          params(
            email_address: String,
            subscription_id: String,
            legal_basis:
              HubspotSDK::Marketing::PublicUpdateSubscriptionStatusRequest::LegalBasis::OrSymbol,
            legal_basis_explanation: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Contact's email address.
          email_address:,
          # ID of the subscription being updated for the contact.
          subscription_id:,
          # Legal basis for updating the contact's status (required for GDPR enabled
          # portals).
          legal_basis: nil,
          # A more detailed explanation to go with the legal basis (required for GDPR
          # enabled portals).
          legal_basis_explanation: nil
        )
        end

        sig do
          override.returns(
            {
              email_address: String,
              subscription_id: String,
              legal_basis:
                HubspotSDK::Marketing::PublicUpdateSubscriptionStatusRequest::LegalBasis::OrSymbol,
              legal_basis_explanation: String
            }
          )
        end
        def to_hash
        end

        # Legal basis for updating the contact's status (required for GDPR enabled
        # portals).
        module LegalBasis
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Marketing::PublicUpdateSubscriptionStatusRequest::LegalBasis
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LEGITIMATE_INTEREST_PQL =
            T.let(
              :LEGITIMATE_INTEREST_PQL,
              HubspotSDK::Marketing::PublicUpdateSubscriptionStatusRequest::LegalBasis::TaggedSymbol
            )
          LEGITIMATE_INTEREST_CLIENT =
            T.let(
              :LEGITIMATE_INTEREST_CLIENT,
              HubspotSDK::Marketing::PublicUpdateSubscriptionStatusRequest::LegalBasis::TaggedSymbol
            )
          PERFORMANCE_OF_CONTRACT =
            T.let(
              :PERFORMANCE_OF_CONTRACT,
              HubspotSDK::Marketing::PublicUpdateSubscriptionStatusRequest::LegalBasis::TaggedSymbol
            )
          CONSENT_WITH_NOTICE =
            T.let(
              :CONSENT_WITH_NOTICE,
              HubspotSDK::Marketing::PublicUpdateSubscriptionStatusRequest::LegalBasis::TaggedSymbol
            )
          NON_GDPR =
            T.let(
              :NON_GDPR,
              HubspotSDK::Marketing::PublicUpdateSubscriptionStatusRequest::LegalBasis::TaggedSymbol
            )
          PROCESS_AND_STORE =
            T.let(
              :PROCESS_AND_STORE,
              HubspotSDK::Marketing::PublicUpdateSubscriptionStatusRequest::LegalBasis::TaggedSymbol
            )
          LEGITIMATE_INTEREST_OTHER =
            T.let(
              :LEGITIMATE_INTEREST_OTHER,
              HubspotSDK::Marketing::PublicUpdateSubscriptionStatusRequest::LegalBasis::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Marketing::PublicUpdateSubscriptionStatusRequest::LegalBasis::TaggedSymbol
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
