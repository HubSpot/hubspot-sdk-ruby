# typed: strong

module HubSpotSDK
  module Models
    module CommunicationPreferences
      class PartialPublicStatusRequest < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::CommunicationPreferences::PartialPublicStatusRequest,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The type of communication channel, with 'EMAIL' as the only supported option.
        sig do
          returns(
            HubSpotSDK::CommunicationPreferences::PartialPublicStatusRequest::Channel::OrSymbol
          )
        end
        attr_accessor :channel

        # The current subscription status of the contact, which can be 'SUBSCRIBED',
        # 'UNSUBSCRIBED', or 'NOT_SPECIFIED'.
        sig do
          returns(
            HubSpotSDK::CommunicationPreferences::PartialPublicStatusRequest::StatusState::OrSymbol
          )
        end
        attr_accessor :status_state

        # The unique identifier of the subscription to be updated.
        sig { returns(Integer) }
        attr_accessor :subscription_id

        # The legal basis for communication, with options including
        # 'LEGITIMATE_INTEREST_PQL', 'LEGITIMATE_INTEREST_CLIENT',
        # 'PERFORMANCE_OF_CONTRACT', 'CONSENT_WITH_NOTICE', 'NON_GDPR',
        # 'PROCESS_AND_STORE', and 'LEGITIMATE_INTEREST_OTHER'.
        sig do
          returns(
            T.nilable(
              HubSpotSDK::CommunicationPreferences::PartialPublicStatusRequest::LegalBasis::OrSymbol
            )
          )
        end
        attr_reader :legal_basis

        sig do
          params(
            legal_basis:
              HubSpotSDK::CommunicationPreferences::PartialPublicStatusRequest::LegalBasis::OrSymbol
          ).void
        end
        attr_writer :legal_basis

        # An explanation for the legal basis used for communication.
        sig { returns(T.nilable(String)) }
        attr_reader :legal_basis_explanation

        sig { params(legal_basis_explanation: String).void }
        attr_writer :legal_basis_explanation

        sig do
          params(
            channel:
              HubSpotSDK::CommunicationPreferences::PartialPublicStatusRequest::Channel::OrSymbol,
            status_state:
              HubSpotSDK::CommunicationPreferences::PartialPublicStatusRequest::StatusState::OrSymbol,
            subscription_id: Integer,
            legal_basis:
              HubSpotSDK::CommunicationPreferences::PartialPublicStatusRequest::LegalBasis::OrSymbol,
            legal_basis_explanation: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The type of communication channel, with 'EMAIL' as the only supported option.
          channel:,
          # The current subscription status of the contact, which can be 'SUBSCRIBED',
          # 'UNSUBSCRIBED', or 'NOT_SPECIFIED'.
          status_state:,
          # The unique identifier of the subscription to be updated.
          subscription_id:,
          # The legal basis for communication, with options including
          # 'LEGITIMATE_INTEREST_PQL', 'LEGITIMATE_INTEREST_CLIENT',
          # 'PERFORMANCE_OF_CONTRACT', 'CONSENT_WITH_NOTICE', 'NON_GDPR',
          # 'PROCESS_AND_STORE', and 'LEGITIMATE_INTEREST_OTHER'.
          legal_basis: nil,
          # An explanation for the legal basis used for communication.
          legal_basis_explanation: nil
        )
        end

        sig do
          override.returns(
            {
              channel:
                HubSpotSDK::CommunicationPreferences::PartialPublicStatusRequest::Channel::OrSymbol,
              status_state:
                HubSpotSDK::CommunicationPreferences::PartialPublicStatusRequest::StatusState::OrSymbol,
              subscription_id: Integer,
              legal_basis:
                HubSpotSDK::CommunicationPreferences::PartialPublicStatusRequest::LegalBasis::OrSymbol,
              legal_basis_explanation: String
            }
          )
        end
        def to_hash
        end

        # The type of communication channel, with 'EMAIL' as the only supported option.
        module Channel
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::CommunicationPreferences::PartialPublicStatusRequest::Channel
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EMAIL =
            T.let(
              :EMAIL,
              HubSpotSDK::CommunicationPreferences::PartialPublicStatusRequest::Channel::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::CommunicationPreferences::PartialPublicStatusRequest::Channel::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The current subscription status of the contact, which can be 'SUBSCRIBED',
        # 'UNSUBSCRIBED', or 'NOT_SPECIFIED'.
        module StatusState
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::CommunicationPreferences::PartialPublicStatusRequest::StatusState
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NOT_SPECIFIED =
            T.let(
              :NOT_SPECIFIED,
              HubSpotSDK::CommunicationPreferences::PartialPublicStatusRequest::StatusState::TaggedSymbol
            )
          SUBSCRIBED =
            T.let(
              :SUBSCRIBED,
              HubSpotSDK::CommunicationPreferences::PartialPublicStatusRequest::StatusState::TaggedSymbol
            )
          UNSUBSCRIBED =
            T.let(
              :UNSUBSCRIBED,
              HubSpotSDK::CommunicationPreferences::PartialPublicStatusRequest::StatusState::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::CommunicationPreferences::PartialPublicStatusRequest::StatusState::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The legal basis for communication, with options including
        # 'LEGITIMATE_INTEREST_PQL', 'LEGITIMATE_INTEREST_CLIENT',
        # 'PERFORMANCE_OF_CONTRACT', 'CONSENT_WITH_NOTICE', 'NON_GDPR',
        # 'PROCESS_AND_STORE', and 'LEGITIMATE_INTEREST_OTHER'.
        module LegalBasis
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::CommunicationPreferences::PartialPublicStatusRequest::LegalBasis
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CONSENT_WITH_NOTICE =
            T.let(
              :CONSENT_WITH_NOTICE,
              HubSpotSDK::CommunicationPreferences::PartialPublicStatusRequest::LegalBasis::TaggedSymbol
            )
          LEGITIMATE_INTEREST_CLIENT =
            T.let(
              :LEGITIMATE_INTEREST_CLIENT,
              HubSpotSDK::CommunicationPreferences::PartialPublicStatusRequest::LegalBasis::TaggedSymbol
            )
          LEGITIMATE_INTEREST_OTHER =
            T.let(
              :LEGITIMATE_INTEREST_OTHER,
              HubSpotSDK::CommunicationPreferences::PartialPublicStatusRequest::LegalBasis::TaggedSymbol
            )
          LEGITIMATE_INTEREST_PQL =
            T.let(
              :LEGITIMATE_INTEREST_PQL,
              HubSpotSDK::CommunicationPreferences::PartialPublicStatusRequest::LegalBasis::TaggedSymbol
            )
          NON_GDPR =
            T.let(
              :NON_GDPR,
              HubSpotSDK::CommunicationPreferences::PartialPublicStatusRequest::LegalBasis::TaggedSymbol
            )
          PERFORMANCE_OF_CONTRACT =
            T.let(
              :PERFORMANCE_OF_CONTRACT,
              HubSpotSDK::CommunicationPreferences::PartialPublicStatusRequest::LegalBasis::TaggedSymbol
            )
          PROCESS_AND_STORE =
            T.let(
              :PROCESS_AND_STORE,
              HubSpotSDK::CommunicationPreferences::PartialPublicStatusRequest::LegalBasis::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::CommunicationPreferences::PartialPublicStatusRequest::LegalBasis::TaggedSymbol
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
