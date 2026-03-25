# frozen_string_literal: true

module HubspotSDK
  module Models
    module CommunicationPreferences
      class PublicUpdateSubscriptionStatusRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute email_address
        #   The email address of the user whose subscription status is being updated. It is
        #   a required field and must be a string.
        #
        #   @return [String]
        required :email_address, String, api_name: :emailAddress

        # @!attribute subscription_id
        #   The unique identifier of the subscription for which the status is being updated.
        #   It is a required field and must be a string.
        #
        #   @return [String]
        required :subscription_id, String, api_name: :subscriptionId

        # @!attribute legal_basis
        #   The legal basis for processing the subscription status change. It is an optional
        #   field and must be a string with valid values including
        #   'LEGITIMATE_INTEREST_PQL', 'LEGITIMATE_INTEREST_CLIENT',
        #   'PERFORMANCE_OF_CONTRACT', 'CONSENT_WITH_NOTICE', 'NON_GDPR',
        #   'PROCESS_AND_STORE', and 'LEGITIMATE_INTEREST_OTHER'.
        #
        #   @return [Symbol, HubspotSDK::Models::CommunicationPreferences::PublicUpdateSubscriptionStatusRequest::LegalBasis, nil]
        optional :legal_basis,
                 enum: -> {
                   HubspotSDK::CommunicationPreferences::PublicUpdateSubscriptionStatusRequest::LegalBasis
                 },
                 api_name: :legalBasis

        # @!attribute legal_basis_explanation
        #   An optional field providing an explanation for the legal basis used. It must be
        #   a string.
        #
        #   @return [String, nil]
        optional :legal_basis_explanation, String, api_name: :legalBasisExplanation

        # @!method initialize(email_address:, subscription_id:, legal_basis: nil, legal_basis_explanation: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::CommunicationPreferences::PublicUpdateSubscriptionStatusRequest}
        #   for more details.
        #
        #   @param email_address [String] The email address of the user whose subscription status is being updated. It is
        #
        #   @param subscription_id [String] The unique identifier of the subscription for which the status is being updated.
        #
        #   @param legal_basis [Symbol, HubspotSDK::Models::CommunicationPreferences::PublicUpdateSubscriptionStatusRequest::LegalBasis] The legal basis for processing the subscription status change. It is an optional
        #
        #   @param legal_basis_explanation [String] An optional field providing an explanation for the legal basis used. It must be

        # The legal basis for processing the subscription status change. It is an optional
        # field and must be a string with valid values including
        # 'LEGITIMATE_INTEREST_PQL', 'LEGITIMATE_INTEREST_CLIENT',
        # 'PERFORMANCE_OF_CONTRACT', 'CONSENT_WITH_NOTICE', 'NON_GDPR',
        # 'PROCESS_AND_STORE', and 'LEGITIMATE_INTEREST_OTHER'.
        #
        # @see HubspotSDK::Models::CommunicationPreferences::PublicUpdateSubscriptionStatusRequest#legal_basis
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
