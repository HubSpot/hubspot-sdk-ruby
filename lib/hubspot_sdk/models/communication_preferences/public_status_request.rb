# frozen_string_literal: true

module HubSpotSDK
  module Models
    module CommunicationPreferences
      class PublicStatusRequest < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute channel
        #   The type of communication channel. Currently, only `EMAIL` is supported.
        #
        #   @return [Symbol, HubSpotSDK::Models::CommunicationPreferences::PublicStatusRequest::Channel]
        required :channel, enum: -> { HubSpotSDK::CommunicationPreferences::PublicStatusRequest::Channel }

        # @!attribute status_state
        #   The status of the contact's subscription.
        #
        #   @return [Symbol, HubSpotSDK::Models::CommunicationPreferences::PublicStatusRequest::StatusState]
        required :status_state,
                 enum: -> { HubSpotSDK::CommunicationPreferences::PublicStatusRequest::StatusState },
                 api_name: :statusState

        # @!attribute subscriber_id_string
        #   The contact's email address.
        #
        #   @return [String]
        required :subscriber_id_string, String, api_name: :subscriberIdString

        # @!attribute subscription_id
        #   The ID of the subscription to update.
        #
        #   @return [Integer]
        required :subscription_id, Integer, api_name: :subscriptionId

        # @!attribute legal_basis
        #   The legal basis for communication.
        #
        #   @return [Symbol, HubSpotSDK::Models::CommunicationPreferences::PublicStatusRequest::LegalBasis, nil]
        optional :legal_basis,
                 enum: -> { HubSpotSDK::CommunicationPreferences::PublicStatusRequest::LegalBasis },
                 api_name: :legalBasis

        # @!attribute legal_basis_explanation
        #   The explanation for the legal basis.
        #
        #   @return [String, nil]
        optional :legal_basis_explanation, String, api_name: :legalBasisExplanation

        # @!method initialize(channel:, status_state:, subscriber_id_string:, subscription_id:, legal_basis: nil, legal_basis_explanation: nil)
        #   @param channel [Symbol, HubSpotSDK::Models::CommunicationPreferences::PublicStatusRequest::Channel] The type of communication channel. Currently, only `EMAIL` is supported.
        #
        #   @param status_state [Symbol, HubSpotSDK::Models::CommunicationPreferences::PublicStatusRequest::StatusState] The status of the contact's subscription.
        #
        #   @param subscriber_id_string [String] The contact's email address.
        #
        #   @param subscription_id [Integer] The ID of the subscription to update.
        #
        #   @param legal_basis [Symbol, HubSpotSDK::Models::CommunicationPreferences::PublicStatusRequest::LegalBasis] The legal basis for communication.
        #
        #   @param legal_basis_explanation [String] The explanation for the legal basis.

        # The type of communication channel. Currently, only `EMAIL` is supported.
        #
        # @see HubSpotSDK::Models::CommunicationPreferences::PublicStatusRequest#channel
        module Channel
          extend HubSpotSDK::Internal::Type::Enum

          EMAIL = :EMAIL

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The status of the contact's subscription.
        #
        # @see HubSpotSDK::Models::CommunicationPreferences::PublicStatusRequest#status_state
        module StatusState
          extend HubSpotSDK::Internal::Type::Enum

          NOT_SPECIFIED = :NOT_SPECIFIED
          SUBSCRIBED = :SUBSCRIBED
          UNSUBSCRIBED = :UNSUBSCRIBED

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The legal basis for communication.
        #
        # @see HubSpotSDK::Models::CommunicationPreferences::PublicStatusRequest#legal_basis
        module LegalBasis
          extend HubSpotSDK::Internal::Type::Enum

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
