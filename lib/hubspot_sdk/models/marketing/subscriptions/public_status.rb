# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      module Subscriptions
        class PublicStatus < HubspotSDK::Internal::Type::BaseModel
          # @!attribute channel
          #   The type of communication channel, with 'EMAIL' as the only supported option.
          #
          #   @return [Symbol, HubspotSDK::Models::Marketing::Subscriptions::PublicStatus::Channel]
          required :channel, enum: -> { HubspotSDK::Marketing::Subscriptions::PublicStatus::Channel }

          # @!attribute source
          #   The origin or method through which the subscription status was set.
          #
          #   @return [String]
          required :source, String

          # @!attribute status
          #   The current subscription status of the contact, which can be 'SUBSCRIBED',
          #   'UNSUBSCRIBED', or 'NOT_SPECIFIED'.
          #
          #   @return [Symbol, HubspotSDK::Models::Marketing::Subscriptions::PublicStatus::Status]
          required :status, enum: -> { HubspotSDK::Marketing::Subscriptions::PublicStatus::Status }

          # @!attribute subscriber_id_string
          #   The contact's email address.
          #
          #   @return [String]
          required :subscriber_id_string, String, api_name: :subscriberIdString

          # @!attribute subscription_id
          #   The unique identifier of the subscription.
          #
          #   @return [Integer]
          required :subscription_id, Integer, api_name: :subscriptionId

          # @!attribute timestamp
          #   The date and time when the subscription status was last updated.
          #
          #   @return [Time]
          required :timestamp, Time

          # @!attribute business_unit_id
          #   The ID of the business unit associated with the subscription.
          #
          #   @return [Integer, nil]
          optional :business_unit_id, Integer, api_name: :businessUnitId

          # @!attribute legal_basis
          #   The legal basis for communication, with options including
          #   'LEGITIMATE_INTEREST_PQL', 'LEGITIMATE_INTEREST_CLIENT',
          #   'PERFORMANCE_OF_CONTRACT', 'CONSENT_WITH_NOTICE', 'NON_GDPR',
          #   'PROCESS_AND_STORE', and 'LEGITIMATE_INTEREST_OTHER'.
          #
          #   @return [Symbol, HubspotSDK::Models::Marketing::Subscriptions::PublicStatus::LegalBasis, nil]
          optional :legal_basis,
                   enum: -> { HubspotSDK::Marketing::Subscriptions::PublicStatus::LegalBasis },
                   api_name: :legalBasis

          # @!attribute legal_basis_explanation
          #   An explanation for the legal basis used for communication.
          #
          #   @return [String, nil]
          optional :legal_basis_explanation, String, api_name: :legalBasisExplanation

          # @!attribute set_status_success_reason
          #   The reason for the successful change in subscription status, such as
          #   'RESUBSCRIBE_OCCURRED' or 'NO_STATUS_CHANGE'.
          #
          #   @return [Symbol, HubspotSDK::Models::Marketing::Subscriptions::PublicStatus::SetStatusSuccessReason, nil]
          optional :set_status_success_reason,
                   enum: -> { HubspotSDK::Marketing::Subscriptions::PublicStatus::SetStatusSuccessReason },
                   api_name: :setStatusSuccessReason

          # @!attribute subscription_name
          #   The name of the subscription.
          #
          #   @return [String, nil]
          optional :subscription_name, String, api_name: :subscriptionName

          # @!method initialize(channel:, source:, status:, subscriber_id_string:, subscription_id:, timestamp:, business_unit_id: nil, legal_basis: nil, legal_basis_explanation: nil, set_status_success_reason: nil, subscription_name: nil)
          #   Some parameter documentations has been truncated, see
          #   {HubspotSDK::Models::Marketing::Subscriptions::PublicStatus} for more details.
          #
          #   @param channel [Symbol, HubspotSDK::Models::Marketing::Subscriptions::PublicStatus::Channel] The type of communication channel, with 'EMAIL' as the only supported option.
          #
          #   @param source [String] The origin or method through which the subscription status was set.
          #
          #   @param status [Symbol, HubspotSDK::Models::Marketing::Subscriptions::PublicStatus::Status] The current subscription status of the contact, which can be 'SUBSCRIBED', 'UNSU
          #
          #   @param subscriber_id_string [String] The contact's email address.
          #
          #   @param subscription_id [Integer] The unique identifier of the subscription.
          #
          #   @param timestamp [Time] The date and time when the subscription status was last updated.
          #
          #   @param business_unit_id [Integer] The ID of the business unit associated with the subscription.
          #
          #   @param legal_basis [Symbol, HubspotSDK::Models::Marketing::Subscriptions::PublicStatus::LegalBasis] The legal basis for communication, with options including 'LEGITIMATE_INTEREST_P
          #
          #   @param legal_basis_explanation [String] An explanation for the legal basis used for communication.
          #
          #   @param set_status_success_reason [Symbol, HubspotSDK::Models::Marketing::Subscriptions::PublicStatus::SetStatusSuccessReason] The reason for the successful change in subscription status, such as 'RESUBSCRIB
          #
          #   @param subscription_name [String] The name of the subscription.

          # The type of communication channel, with 'EMAIL' as the only supported option.
          #
          # @see HubspotSDK::Models::Marketing::Subscriptions::PublicStatus#channel
          module Channel
            extend HubspotSDK::Internal::Type::Enum

            EMAIL = :EMAIL

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # The current subscription status of the contact, which can be 'SUBSCRIBED',
          # 'UNSUBSCRIBED', or 'NOT_SPECIFIED'.
          #
          # @see HubspotSDK::Models::Marketing::Subscriptions::PublicStatus#status
          module Status
            extend HubspotSDK::Internal::Type::Enum

            NOT_SPECIFIED = :NOT_SPECIFIED
            SUBSCRIBED = :SUBSCRIBED
            UNSUBSCRIBED = :UNSUBSCRIBED

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # The legal basis for communication, with options including
          # 'LEGITIMATE_INTEREST_PQL', 'LEGITIMATE_INTEREST_CLIENT',
          # 'PERFORMANCE_OF_CONTRACT', 'CONSENT_WITH_NOTICE', 'NON_GDPR',
          # 'PROCESS_AND_STORE', and 'LEGITIMATE_INTEREST_OTHER'.
          #
          # @see HubspotSDK::Models::Marketing::Subscriptions::PublicStatus#legal_basis
          module LegalBasis
            extend HubspotSDK::Internal::Type::Enum

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

          # The reason for the successful change in subscription status, such as
          # 'RESUBSCRIBE_OCCURRED' or 'NO_STATUS_CHANGE'.
          #
          # @see HubspotSDK::Models::Marketing::Subscriptions::PublicStatus#set_status_success_reason
          module SetStatusSuccessReason
            extend HubspotSDK::Internal::Type::Enum

            NO_STATUS_CHANGE = :NO_STATUS_CHANGE
            REQUESTED_CHANGE_OCCURRED = :REQUESTED_CHANGE_OCCURRED
            RESUBSCRIBE_OCCURRED = :RESUBSCRIBE_OCCURRED
            UNSUBSCRIBE_FROM_ALL_OCCURRED = :UNSUBSCRIBE_FROM_ALL_OCCURRED

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
