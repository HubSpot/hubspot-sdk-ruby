# typed: strong

module HubSpotSDK
  module Models
    module CommunicationPreferences
      class PublicStatusRequest < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::CommunicationPreferences::PublicStatusRequest,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The type of communication channel. Currently, only `EMAIL` is supported.
        sig do
          returns(
            HubSpotSDK::CommunicationPreferences::PublicStatusRequest::Channel::OrSymbol
          )
        end
        attr_accessor :channel

        # The status of the contact's subscription.
        sig do
          returns(
            HubSpotSDK::CommunicationPreferences::PublicStatusRequest::StatusState::OrSymbol
          )
        end
        attr_accessor :status_state

        # The contact's email address.
        sig { returns(String) }
        attr_accessor :subscriber_id_string

        # The ID of the subscription to update.
        sig { returns(Integer) }
        attr_accessor :subscription_id

        # The legal basis for communication.
        sig do
          returns(
            T.nilable(
              HubSpotSDK::CommunicationPreferences::PublicStatusRequest::LegalBasis::OrSymbol
            )
          )
        end
        attr_reader :legal_basis

        sig do
          params(
            legal_basis:
              HubSpotSDK::CommunicationPreferences::PublicStatusRequest::LegalBasis::OrSymbol
          ).void
        end
        attr_writer :legal_basis

        # The explanation for the legal basis.
        sig { returns(T.nilable(String)) }
        attr_reader :legal_basis_explanation

        sig { params(legal_basis_explanation: String).void }
        attr_writer :legal_basis_explanation

        sig do
          params(
            channel:
              HubSpotSDK::CommunicationPreferences::PublicStatusRequest::Channel::OrSymbol,
            status_state:
              HubSpotSDK::CommunicationPreferences::PublicStatusRequest::StatusState::OrSymbol,
            subscriber_id_string: String,
            subscription_id: Integer,
            legal_basis:
              HubSpotSDK::CommunicationPreferences::PublicStatusRequest::LegalBasis::OrSymbol,
            legal_basis_explanation: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The type of communication channel. Currently, only `EMAIL` is supported.
          channel:,
          # The status of the contact's subscription.
          status_state:,
          # The contact's email address.
          subscriber_id_string:,
          # The ID of the subscription to update.
          subscription_id:,
          # The legal basis for communication.
          legal_basis: nil,
          # The explanation for the legal basis.
          legal_basis_explanation: nil
        )
        end

        sig do
          override.returns(
            {
              channel:
                HubSpotSDK::CommunicationPreferences::PublicStatusRequest::Channel::OrSymbol,
              status_state:
                HubSpotSDK::CommunicationPreferences::PublicStatusRequest::StatusState::OrSymbol,
              subscriber_id_string: String,
              subscription_id: Integer,
              legal_basis:
                HubSpotSDK::CommunicationPreferences::PublicStatusRequest::LegalBasis::OrSymbol,
              legal_basis_explanation: String
            }
          )
        end
        def to_hash
        end

        # The type of communication channel. Currently, only `EMAIL` is supported.
        module Channel
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::CommunicationPreferences::PublicStatusRequest::Channel
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EMAIL =
            T.let(
              :EMAIL,
              HubSpotSDK::CommunicationPreferences::PublicStatusRequest::Channel::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::CommunicationPreferences::PublicStatusRequest::Channel::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The status of the contact's subscription.
        module StatusState
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::CommunicationPreferences::PublicStatusRequest::StatusState
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NOT_SPECIFIED =
            T.let(
              :NOT_SPECIFIED,
              HubSpotSDK::CommunicationPreferences::PublicStatusRequest::StatusState::TaggedSymbol
            )
          SUBSCRIBED =
            T.let(
              :SUBSCRIBED,
              HubSpotSDK::CommunicationPreferences::PublicStatusRequest::StatusState::TaggedSymbol
            )
          UNSUBSCRIBED =
            T.let(
              :UNSUBSCRIBED,
              HubSpotSDK::CommunicationPreferences::PublicStatusRequest::StatusState::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::CommunicationPreferences::PublicStatusRequest::StatusState::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The legal basis for communication.
        module LegalBasis
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::CommunicationPreferences::PublicStatusRequest::LegalBasis
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CONSENT_WITH_NOTICE =
            T.let(
              :CONSENT_WITH_NOTICE,
              HubSpotSDK::CommunicationPreferences::PublicStatusRequest::LegalBasis::TaggedSymbol
            )
          LEGITIMATE_INTEREST_CLIENT =
            T.let(
              :LEGITIMATE_INTEREST_CLIENT,
              HubSpotSDK::CommunicationPreferences::PublicStatusRequest::LegalBasis::TaggedSymbol
            )
          LEGITIMATE_INTEREST_OTHER =
            T.let(
              :LEGITIMATE_INTEREST_OTHER,
              HubSpotSDK::CommunicationPreferences::PublicStatusRequest::LegalBasis::TaggedSymbol
            )
          LEGITIMATE_INTEREST_PQL =
            T.let(
              :LEGITIMATE_INTEREST_PQL,
              HubSpotSDK::CommunicationPreferences::PublicStatusRequest::LegalBasis::TaggedSymbol
            )
          NON_GDPR =
            T.let(
              :NON_GDPR,
              HubSpotSDK::CommunicationPreferences::PublicStatusRequest::LegalBasis::TaggedSymbol
            )
          PERFORMANCE_OF_CONTRACT =
            T.let(
              :PERFORMANCE_OF_CONTRACT,
              HubSpotSDK::CommunicationPreferences::PublicStatusRequest::LegalBasis::TaggedSymbol
            )
          PROCESS_AND_STORE =
            T.let(
              :PROCESS_AND_STORE,
              HubSpotSDK::CommunicationPreferences::PublicStatusRequest::LegalBasis::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::CommunicationPreferences::PublicStatusRequest::LegalBasis::TaggedSymbol
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
