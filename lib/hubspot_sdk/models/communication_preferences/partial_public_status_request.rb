# frozen_string_literal: true

module HubspotSDK
  module Models
    module CommunicationPreferences
      class PartialPublicStatusRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute channel
        #   The type of communication channel, with 'EMAIL' as the only supported option.
        #
        #   @return [Symbol, HubspotSDK::Models::CommunicationPreferences::PartialPublicStatusRequest::Channel]
        required :channel, enum: -> { HubspotSDK::CommunicationPreferences::PartialPublicStatusRequest::Channel }

        # @!attribute status_state
        #   The current subscription status of the contact, which can be 'SUBSCRIBED',
        #   'UNSUBSCRIBED', or 'NOT_SPECIFIED'.
        #
        #   @return [Symbol, HubspotSDK::Models::CommunicationPreferences::PartialPublicStatusRequest::StatusState]
        required :status_state,
                 enum: -> { HubspotSDK::CommunicationPreferences::PartialPublicStatusRequest::StatusState },
                 api_name: :statusState

        # @!attribute subscription_id
        #   The unique identifier of the subscription to be updated.
        #
        #   @return [Integer]
        required :subscription_id, Integer, api_name: :subscriptionId

        # @!attribute legal_basis
        #   The legal basis for communication, with options including
        #   'LEGITIMATE_INTEREST_PQL', 'LEGITIMATE_INTEREST_CLIENT',
        #   'PERFORMANCE_OF_CONTRACT', 'CONSENT_WITH_NOTICE', 'NON_GDPR',
        #   'PROCESS_AND_STORE', and 'LEGITIMATE_INTEREST_OTHER'.
        #
        #   @return [Symbol, HubspotSDK::Models::CommunicationPreferences::PartialPublicStatusRequest::LegalBasis, nil]
        optional :legal_basis,
                 enum: -> { HubspotSDK::CommunicationPreferences::PartialPublicStatusRequest::LegalBasis },
                 api_name: :legalBasis

        # @!attribute legal_basis_explanation
        #   An explanation for the legal basis used for communication.
        #
        #   @return [String, nil]
        optional :legal_basis_explanation, String, api_name: :legalBasisExplanation

        # @!method initialize(channel:, status_state:, subscription_id:, legal_basis: nil, legal_basis_explanation: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::CommunicationPreferences::PartialPublicStatusRequest} for
        #   more details.
        #
        #   @param channel [Symbol, HubspotSDK::Models::CommunicationPreferences::PartialPublicStatusRequest::Channel] The type of communication channel, with 'EMAIL' as the only supported option.
        #
        #   @param status_state [Symbol, HubspotSDK::Models::CommunicationPreferences::PartialPublicStatusRequest::StatusState] The current subscription status of the contact, which can be 'SUBSCRIBED', 'UNSU
        #
        #   @param subscription_id [Integer] The unique identifier of the subscription to be updated.
        #
        #   @param legal_basis [Symbol, HubspotSDK::Models::CommunicationPreferences::PartialPublicStatusRequest::LegalBasis] The legal basis for communication, with options including 'LEGITIMATE_INTEREST_P
        #
        #   @param legal_basis_explanation [String] An explanation for the legal basis used for communication.

        # The type of communication channel, with 'EMAIL' as the only supported option.
        #
        # @see HubspotSDK::Models::CommunicationPreferences::PartialPublicStatusRequest#channel
        module Channel
          extend HubspotSDK::Internal::Type::Enum

          EMAIL = :EMAIL

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The current subscription status of the contact, which can be 'SUBSCRIBED',
        # 'UNSUBSCRIBED', or 'NOT_SPECIFIED'.
        #
        # @see HubspotSDK::Models::CommunicationPreferences::PartialPublicStatusRequest#status_state
        module StatusState
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
        # @see HubspotSDK::Models::CommunicationPreferences::PartialPublicStatusRequest#legal_basis
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
      end
    end
  end
end
