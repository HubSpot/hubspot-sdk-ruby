# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class PublicUpdateSubscriptionStatusRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute email_address
        #   Contact's email address.
        #
        #   @return [String]
        required :email_address, String, api_name: :emailAddress

        # @!attribute subscription_id
        #   ID of the subscription being updated for the contact.
        #
        #   @return [String]
        required :subscription_id, String, api_name: :subscriptionId

        # @!attribute legal_basis
        #   Legal basis for updating the contact's status (required for GDPR enabled
        #   portals).
        #
        #   @return [Symbol, HubspotSDK::Models::Marketing::PublicUpdateSubscriptionStatusRequest::LegalBasis, nil]
        optional :legal_basis,
                 enum: -> { HubspotSDK::Marketing::PublicUpdateSubscriptionStatusRequest::LegalBasis },
                 api_name: :legalBasis

        # @!attribute legal_basis_explanation
        #   A more detailed explanation to go with the legal basis (required for GDPR
        #   enabled portals).
        #
        #   @return [String, nil]
        optional :legal_basis_explanation, String, api_name: :legalBasisExplanation

        # @!method initialize(email_address:, subscription_id:, legal_basis: nil, legal_basis_explanation: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Marketing::PublicUpdateSubscriptionStatusRequest} for more
        #   details.
        #
        #   @param email_address [String] Contact's email address.
        #
        #   @param subscription_id [String] ID of the subscription being updated for the contact.
        #
        #   @param legal_basis [Symbol, HubspotSDK::Models::Marketing::PublicUpdateSubscriptionStatusRequest::LegalBasis] Legal basis for updating the contact's status (required for GDPR enabled portals
        #
        #   @param legal_basis_explanation [String] A more detailed explanation to go with the legal basis (required for GDPR enable

        # Legal basis for updating the contact's status (required for GDPR enabled
        # portals).
        #
        # @see HubspotSDK::Models::Marketing::PublicUpdateSubscriptionStatusRequest#legal_basis
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
