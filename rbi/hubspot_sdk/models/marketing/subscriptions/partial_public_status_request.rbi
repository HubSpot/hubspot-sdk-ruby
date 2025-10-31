# typed: strong

module HubspotSDK
  module Models
    module Marketing
      module Subscriptions
        class PartialPublicStatusRequest < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Marketing::Subscriptions::PartialPublicStatusRequest,
                HubspotSDK::Internal::AnyHash
              )
            end

          # The type of communication channel, with 'EMAIL' as the only supported option.
          sig do
            returns(
              HubspotSDK::Marketing::Subscriptions::PartialPublicStatusRequest::Channel::OrSymbol
            )
          end
          attr_accessor :channel

          # The current subscription status of the contact, which can be 'SUBSCRIBED',
          # 'UNSUBSCRIBED', or 'NOT_SPECIFIED'.
          sig do
            returns(
              HubspotSDK::Marketing::Subscriptions::PartialPublicStatusRequest::StatusState::OrSymbol
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
                HubspotSDK::Marketing::Subscriptions::PartialPublicStatusRequest::LegalBasis::OrSymbol
              )
            )
          end
          attr_reader :legal_basis

          sig do
            params(
              legal_basis:
                HubspotSDK::Marketing::Subscriptions::PartialPublicStatusRequest::LegalBasis::OrSymbol
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
                HubspotSDK::Marketing::Subscriptions::PartialPublicStatusRequest::Channel::OrSymbol,
              status_state:
                HubspotSDK::Marketing::Subscriptions::PartialPublicStatusRequest::StatusState::OrSymbol,
              subscription_id: Integer,
              legal_basis:
                HubspotSDK::Marketing::Subscriptions::PartialPublicStatusRequest::LegalBasis::OrSymbol,
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
                  HubspotSDK::Marketing::Subscriptions::PartialPublicStatusRequest::Channel::OrSymbol,
                status_state:
                  HubspotSDK::Marketing::Subscriptions::PartialPublicStatusRequest::StatusState::OrSymbol,
                subscription_id: Integer,
                legal_basis:
                  HubspotSDK::Marketing::Subscriptions::PartialPublicStatusRequest::LegalBasis::OrSymbol,
                legal_basis_explanation: String
              }
            )
          end
          def to_hash
          end

          # The type of communication channel, with 'EMAIL' as the only supported option.
          module Channel
            extend HubspotSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  HubspotSDK::Marketing::Subscriptions::PartialPublicStatusRequest::Channel
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            EMAIL =
              T.let(
                :EMAIL,
                HubspotSDK::Marketing::Subscriptions::PartialPublicStatusRequest::Channel::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  HubspotSDK::Marketing::Subscriptions::PartialPublicStatusRequest::Channel::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # The current subscription status of the contact, which can be 'SUBSCRIBED',
          # 'UNSUBSCRIBED', or 'NOT_SPECIFIED'.
          module StatusState
            extend HubspotSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  HubspotSDK::Marketing::Subscriptions::PartialPublicStatusRequest::StatusState
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            SUBSCRIBED =
              T.let(
                :SUBSCRIBED,
                HubspotSDK::Marketing::Subscriptions::PartialPublicStatusRequest::StatusState::TaggedSymbol
              )
            UNSUBSCRIBED =
              T.let(
                :UNSUBSCRIBED,
                HubspotSDK::Marketing::Subscriptions::PartialPublicStatusRequest::StatusState::TaggedSymbol
              )
            NOT_SPECIFIED =
              T.let(
                :NOT_SPECIFIED,
                HubspotSDK::Marketing::Subscriptions::PartialPublicStatusRequest::StatusState::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  HubspotSDK::Marketing::Subscriptions::PartialPublicStatusRequest::StatusState::TaggedSymbol
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
            extend HubspotSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  HubspotSDK::Marketing::Subscriptions::PartialPublicStatusRequest::LegalBasis
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            LEGITIMATE_INTEREST_PQL =
              T.let(
                :LEGITIMATE_INTEREST_PQL,
                HubspotSDK::Marketing::Subscriptions::PartialPublicStatusRequest::LegalBasis::TaggedSymbol
              )
            LEGITIMATE_INTEREST_CLIENT =
              T.let(
                :LEGITIMATE_INTEREST_CLIENT,
                HubspotSDK::Marketing::Subscriptions::PartialPublicStatusRequest::LegalBasis::TaggedSymbol
              )
            PERFORMANCE_OF_CONTRACT =
              T.let(
                :PERFORMANCE_OF_CONTRACT,
                HubspotSDK::Marketing::Subscriptions::PartialPublicStatusRequest::LegalBasis::TaggedSymbol
              )
            CONSENT_WITH_NOTICE =
              T.let(
                :CONSENT_WITH_NOTICE,
                HubspotSDK::Marketing::Subscriptions::PartialPublicStatusRequest::LegalBasis::TaggedSymbol
              )
            NON_GDPR =
              T.let(
                :NON_GDPR,
                HubspotSDK::Marketing::Subscriptions::PartialPublicStatusRequest::LegalBasis::TaggedSymbol
              )
            PROCESS_AND_STORE =
              T.let(
                :PROCESS_AND_STORE,
                HubspotSDK::Marketing::Subscriptions::PartialPublicStatusRequest::LegalBasis::TaggedSymbol
              )
            LEGITIMATE_INTEREST_OTHER =
              T.let(
                :LEGITIMATE_INTEREST_OTHER,
                HubspotSDK::Marketing::Subscriptions::PartialPublicStatusRequest::LegalBasis::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  HubspotSDK::Marketing::Subscriptions::PartialPublicStatusRequest::LegalBasis::TaggedSymbol
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
end
