# typed: strong

module HubSpotSDK
  module Models
    module CommunicationPreferences
      class PublicStatus < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::CommunicationPreferences::PublicStatus,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The type of communication channel, with 'EMAIL' as the only supported option.
        sig do
          returns(
            HubSpotSDK::CommunicationPreferences::PublicStatus::Channel::TaggedSymbol
          )
        end
        attr_accessor :channel

        # The origin or method through which the subscription status was set.
        sig { returns(String) }
        attr_accessor :source

        # The current subscription status of the contact, which can be 'SUBSCRIBED',
        # 'UNSUBSCRIBED', or 'NOT_SPECIFIED'.
        sig do
          returns(
            HubSpotSDK::CommunicationPreferences::PublicStatus::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        # The contact's email address.
        sig { returns(String) }
        attr_accessor :subscriber_id_string

        # The unique identifier of the subscription.
        sig { returns(Integer) }
        attr_accessor :subscription_id

        # The date and time when the subscription status was last updated.
        sig { returns(Time) }
        attr_accessor :timestamp

        # The ID of the business unit associated with the subscription.
        sig { returns(T.nilable(Integer)) }
        attr_reader :business_unit_id

        sig { params(business_unit_id: Integer).void }
        attr_writer :business_unit_id

        # The legal basis for communication, with options including
        # 'LEGITIMATE_INTEREST_PQL', 'LEGITIMATE_INTEREST_CLIENT',
        # 'PERFORMANCE_OF_CONTRACT', 'CONSENT_WITH_NOTICE', 'NON_GDPR',
        # 'PROCESS_AND_STORE', and 'LEGITIMATE_INTEREST_OTHER'.
        sig do
          returns(
            T.nilable(
              HubSpotSDK::CommunicationPreferences::PublicStatus::LegalBasis::TaggedSymbol
            )
          )
        end
        attr_reader :legal_basis

        sig do
          params(
            legal_basis:
              HubSpotSDK::CommunicationPreferences::PublicStatus::LegalBasis::OrSymbol
          ).void
        end
        attr_writer :legal_basis

        # An explanation for the legal basis used for communication.
        sig { returns(T.nilable(String)) }
        attr_reader :legal_basis_explanation

        sig { params(legal_basis_explanation: String).void }
        attr_writer :legal_basis_explanation

        # The reason for the successful change in subscription status, such as
        # 'RESUBSCRIBE_OCCURRED' or 'NO_STATUS_CHANGE'.
        sig do
          returns(
            T.nilable(
              HubSpotSDK::CommunicationPreferences::PublicStatus::SetStatusSuccessReason::TaggedSymbol
            )
          )
        end
        attr_reader :set_status_success_reason

        sig do
          params(
            set_status_success_reason:
              HubSpotSDK::CommunicationPreferences::PublicStatus::SetStatusSuccessReason::OrSymbol
          ).void
        end
        attr_writer :set_status_success_reason

        # The name of the subscription.
        sig { returns(T.nilable(String)) }
        attr_reader :subscription_name

        sig { params(subscription_name: String).void }
        attr_writer :subscription_name

        sig do
          params(
            channel:
              HubSpotSDK::CommunicationPreferences::PublicStatus::Channel::OrSymbol,
            source: String,
            status:
              HubSpotSDK::CommunicationPreferences::PublicStatus::Status::OrSymbol,
            subscriber_id_string: String,
            subscription_id: Integer,
            timestamp: Time,
            business_unit_id: Integer,
            legal_basis:
              HubSpotSDK::CommunicationPreferences::PublicStatus::LegalBasis::OrSymbol,
            legal_basis_explanation: String,
            set_status_success_reason:
              HubSpotSDK::CommunicationPreferences::PublicStatus::SetStatusSuccessReason::OrSymbol,
            subscription_name: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The type of communication channel, with 'EMAIL' as the only supported option.
          channel:,
          # The origin or method through which the subscription status was set.
          source:,
          # The current subscription status of the contact, which can be 'SUBSCRIBED',
          # 'UNSUBSCRIBED', or 'NOT_SPECIFIED'.
          status:,
          # The contact's email address.
          subscriber_id_string:,
          # The unique identifier of the subscription.
          subscription_id:,
          # The date and time when the subscription status was last updated.
          timestamp:,
          # The ID of the business unit associated with the subscription.
          business_unit_id: nil,
          # The legal basis for communication, with options including
          # 'LEGITIMATE_INTEREST_PQL', 'LEGITIMATE_INTEREST_CLIENT',
          # 'PERFORMANCE_OF_CONTRACT', 'CONSENT_WITH_NOTICE', 'NON_GDPR',
          # 'PROCESS_AND_STORE', and 'LEGITIMATE_INTEREST_OTHER'.
          legal_basis: nil,
          # An explanation for the legal basis used for communication.
          legal_basis_explanation: nil,
          # The reason for the successful change in subscription status, such as
          # 'RESUBSCRIBE_OCCURRED' or 'NO_STATUS_CHANGE'.
          set_status_success_reason: nil,
          # The name of the subscription.
          subscription_name: nil
        )
        end

        sig do
          override.returns(
            {
              channel:
                HubSpotSDK::CommunicationPreferences::PublicStatus::Channel::TaggedSymbol,
              source: String,
              status:
                HubSpotSDK::CommunicationPreferences::PublicStatus::Status::TaggedSymbol,
              subscriber_id_string: String,
              subscription_id: Integer,
              timestamp: Time,
              business_unit_id: Integer,
              legal_basis:
                HubSpotSDK::CommunicationPreferences::PublicStatus::LegalBasis::TaggedSymbol,
              legal_basis_explanation: String,
              set_status_success_reason:
                HubSpotSDK::CommunicationPreferences::PublicStatus::SetStatusSuccessReason::TaggedSymbol,
              subscription_name: String
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
                HubSpotSDK::CommunicationPreferences::PublicStatus::Channel
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EMAIL =
            T.let(
              :EMAIL,
              HubSpotSDK::CommunicationPreferences::PublicStatus::Channel::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::CommunicationPreferences::PublicStatus::Channel::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The current subscription status of the contact, which can be 'SUBSCRIBED',
        # 'UNSUBSCRIBED', or 'NOT_SPECIFIED'.
        module Status
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::CommunicationPreferences::PublicStatus::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NOT_SPECIFIED =
            T.let(
              :NOT_SPECIFIED,
              HubSpotSDK::CommunicationPreferences::PublicStatus::Status::TaggedSymbol
            )
          SUBSCRIBED =
            T.let(
              :SUBSCRIBED,
              HubSpotSDK::CommunicationPreferences::PublicStatus::Status::TaggedSymbol
            )
          UNSUBSCRIBED =
            T.let(
              :UNSUBSCRIBED,
              HubSpotSDK::CommunicationPreferences::PublicStatus::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::CommunicationPreferences::PublicStatus::Status::TaggedSymbol
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
                HubSpotSDK::CommunicationPreferences::PublicStatus::LegalBasis
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CONSENT_WITH_NOTICE =
            T.let(
              :CONSENT_WITH_NOTICE,
              HubSpotSDK::CommunicationPreferences::PublicStatus::LegalBasis::TaggedSymbol
            )
          LEGITIMATE_INTEREST_CLIENT =
            T.let(
              :LEGITIMATE_INTEREST_CLIENT,
              HubSpotSDK::CommunicationPreferences::PublicStatus::LegalBasis::TaggedSymbol
            )
          LEGITIMATE_INTEREST_OTHER =
            T.let(
              :LEGITIMATE_INTEREST_OTHER,
              HubSpotSDK::CommunicationPreferences::PublicStatus::LegalBasis::TaggedSymbol
            )
          LEGITIMATE_INTEREST_PQL =
            T.let(
              :LEGITIMATE_INTEREST_PQL,
              HubSpotSDK::CommunicationPreferences::PublicStatus::LegalBasis::TaggedSymbol
            )
          NON_GDPR =
            T.let(
              :NON_GDPR,
              HubSpotSDK::CommunicationPreferences::PublicStatus::LegalBasis::TaggedSymbol
            )
          PERFORMANCE_OF_CONTRACT =
            T.let(
              :PERFORMANCE_OF_CONTRACT,
              HubSpotSDK::CommunicationPreferences::PublicStatus::LegalBasis::TaggedSymbol
            )
          PROCESS_AND_STORE =
            T.let(
              :PROCESS_AND_STORE,
              HubSpotSDK::CommunicationPreferences::PublicStatus::LegalBasis::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::CommunicationPreferences::PublicStatus::LegalBasis::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The reason for the successful change in subscription status, such as
        # 'RESUBSCRIBE_OCCURRED' or 'NO_STATUS_CHANGE'.
        module SetStatusSuccessReason
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::CommunicationPreferences::PublicStatus::SetStatusSuccessReason
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NO_STATUS_CHANGE =
            T.let(
              :NO_STATUS_CHANGE,
              HubSpotSDK::CommunicationPreferences::PublicStatus::SetStatusSuccessReason::TaggedSymbol
            )
          REQUESTED_CHANGE_OCCURRED =
            T.let(
              :REQUESTED_CHANGE_OCCURRED,
              HubSpotSDK::CommunicationPreferences::PublicStatus::SetStatusSuccessReason::TaggedSymbol
            )
          RESUBSCRIBE_OCCURRED =
            T.let(
              :RESUBSCRIBE_OCCURRED,
              HubSpotSDK::CommunicationPreferences::PublicStatus::SetStatusSuccessReason::TaggedSymbol
            )
          UNSUBSCRIBE_FROM_ALL_OCCURRED =
            T.let(
              :UNSUBSCRIBE_FROM_ALL_OCCURRED,
              HubSpotSDK::CommunicationPreferences::PublicStatus::SetStatusSuccessReason::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::CommunicationPreferences::PublicStatus::SetStatusSuccessReason::TaggedSymbol
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
