# typed: strong

module HubspotSDK
  module Models
    module Marketing
      module Subscriptions
        class PublicStatusRequest < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Marketing::Subscriptions::PublicStatusRequest,
                HubspotSDK::Internal::AnyHash
              )
            end

          # The type of communication channel. Currently, only `EMAIL` is supported.
          sig do
            returns(
              HubspotSDK::Marketing::Subscriptions::PublicStatusRequest::Channel::OrSymbol
            )
          end
          attr_accessor :channel

          # The status of the contact's subscription.
          sig do
            returns(
              HubspotSDK::Marketing::Subscriptions::PublicStatusRequest::StatusState::OrSymbol
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
                HubspotSDK::Marketing::Subscriptions::PublicStatusRequest::LegalBasis::OrSymbol
              )
            )
          end
          attr_reader :legal_basis

          sig do
            params(
              legal_basis:
                HubspotSDK::Marketing::Subscriptions::PublicStatusRequest::LegalBasis::OrSymbol
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
                HubspotSDK::Marketing::Subscriptions::PublicStatusRequest::Channel::OrSymbol,
              status_state:
                HubspotSDK::Marketing::Subscriptions::PublicStatusRequest::StatusState::OrSymbol,
              subscriber_id_string: String,
              subscription_id: Integer,
              legal_basis:
                HubspotSDK::Marketing::Subscriptions::PublicStatusRequest::LegalBasis::OrSymbol,
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
                  HubspotSDK::Marketing::Subscriptions::PublicStatusRequest::Channel::OrSymbol,
                status_state:
                  HubspotSDK::Marketing::Subscriptions::PublicStatusRequest::StatusState::OrSymbol,
                subscriber_id_string: String,
                subscription_id: Integer,
                legal_basis:
                  HubspotSDK::Marketing::Subscriptions::PublicStatusRequest::LegalBasis::OrSymbol,
                legal_basis_explanation: String
              }
            )
          end
          def to_hash
          end

          # The type of communication channel. Currently, only `EMAIL` is supported.
          module Channel
            extend HubspotSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  HubspotSDK::Marketing::Subscriptions::PublicStatusRequest::Channel
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            EMAIL =
              T.let(
                :EMAIL,
                HubspotSDK::Marketing::Subscriptions::PublicStatusRequest::Channel::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  HubspotSDK::Marketing::Subscriptions::PublicStatusRequest::Channel::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # The status of the contact's subscription.
          module StatusState
            extend HubspotSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  HubspotSDK::Marketing::Subscriptions::PublicStatusRequest::StatusState
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            SUBSCRIBED =
              T.let(
                :SUBSCRIBED,
                HubspotSDK::Marketing::Subscriptions::PublicStatusRequest::StatusState::TaggedSymbol
              )
            UNSUBSCRIBED =
              T.let(
                :UNSUBSCRIBED,
                HubspotSDK::Marketing::Subscriptions::PublicStatusRequest::StatusState::TaggedSymbol
              )
            NOT_SPECIFIED =
              T.let(
                :NOT_SPECIFIED,
                HubspotSDK::Marketing::Subscriptions::PublicStatusRequest::StatusState::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  HubspotSDK::Marketing::Subscriptions::PublicStatusRequest::StatusState::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # The legal basis for communication.
          module LegalBasis
            extend HubspotSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  HubspotSDK::Marketing::Subscriptions::PublicStatusRequest::LegalBasis
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            LEGITIMATE_INTEREST_PQL =
              T.let(
                :LEGITIMATE_INTEREST_PQL,
                HubspotSDK::Marketing::Subscriptions::PublicStatusRequest::LegalBasis::TaggedSymbol
              )
            LEGITIMATE_INTEREST_CLIENT =
              T.let(
                :LEGITIMATE_INTEREST_CLIENT,
                HubspotSDK::Marketing::Subscriptions::PublicStatusRequest::LegalBasis::TaggedSymbol
              )
            PERFORMANCE_OF_CONTRACT =
              T.let(
                :PERFORMANCE_OF_CONTRACT,
                HubspotSDK::Marketing::Subscriptions::PublicStatusRequest::LegalBasis::TaggedSymbol
              )
            CONSENT_WITH_NOTICE =
              T.let(
                :CONSENT_WITH_NOTICE,
                HubspotSDK::Marketing::Subscriptions::PublicStatusRequest::LegalBasis::TaggedSymbol
              )
            NON_GDPR =
              T.let(
                :NON_GDPR,
                HubspotSDK::Marketing::Subscriptions::PublicStatusRequest::LegalBasis::TaggedSymbol
              )
            PROCESS_AND_STORE =
              T.let(
                :PROCESS_AND_STORE,
                HubspotSDK::Marketing::Subscriptions::PublicStatusRequest::LegalBasis::TaggedSymbol
              )
            LEGITIMATE_INTEREST_OTHER =
              T.let(
                :LEGITIMATE_INTEREST_OTHER,
                HubspotSDK::Marketing::Subscriptions::PublicStatusRequest::LegalBasis::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  HubspotSDK::Marketing::Subscriptions::PublicStatusRequest::LegalBasis::TaggedSymbol
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
