# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      # @see HubspotSDK::Resources::Marketing::Subscriptions#subscribe
      class PublicSubscriptionStatus < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID for the subscription.
        #
        #   @return [String]
        required :id, String

        # @!attribute description
        #   A description of the subscription.
        #
        #   @return [String]
        required :description, String

        # @!attribute name
        #   The name of the subscription.
        #
        #   @return [String]
        required :name, String

        # @!attribute source_of_status
        #   Where the status is determined from e.g. PORTAL_WIDE_STATUS if the contact opted
        #   out from the portal.
        #
        #   @return [Symbol, HubspotSDK::Models::Marketing::PublicSubscriptionStatus::SourceOfStatus]
        required :source_of_status,
                 enum: -> { HubspotSDK::Marketing::PublicSubscriptionStatus::SourceOfStatus },
                 api_name: :sourceOfStatus

        # @!attribute status
        #   Whether the contact is subscribed.
        #
        #   @return [Symbol, HubspotSDK::Models::Marketing::PublicSubscriptionStatus::Status]
        required :status, enum: -> { HubspotSDK::Marketing::PublicSubscriptionStatus::Status }

        # @!attribute brand_id
        #   The ID of the brand that the subscription is associated with, if there is one.
        #
        #   @return [Integer, nil]
        optional :brand_id, Integer, api_name: :brandId

        # @!attribute legal_basis
        #   The legal reason for the current status of the subscription.
        #
        #   @return [Symbol, HubspotSDK::Models::Marketing::PublicSubscriptionStatus::LegalBasis, nil]
        optional :legal_basis,
                 enum: -> { HubspotSDK::Marketing::PublicSubscriptionStatus::LegalBasis },
                 api_name: :legalBasis

        # @!attribute legal_basis_explanation
        #   A more detailed explanation to go with the legal basis.
        #
        #   @return [String, nil]
        optional :legal_basis_explanation, String, api_name: :legalBasisExplanation

        # @!attribute preference_group_name
        #   The name of the preferences group that the subscription is associated with.
        #
        #   @return [String, nil]
        optional :preference_group_name, String, api_name: :preferenceGroupName

        # @!method initialize(id:, description:, name:, source_of_status:, status:, brand_id: nil, legal_basis: nil, legal_basis_explanation: nil, preference_group_name: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Marketing::PublicSubscriptionStatus} for more details.
        #
        #   @param id [String] The ID for the subscription.
        #
        #   @param description [String] A description of the subscription.
        #
        #   @param name [String] The name of the subscription.
        #
        #   @param source_of_status [Symbol, HubspotSDK::Models::Marketing::PublicSubscriptionStatus::SourceOfStatus] Where the status is determined from e.g. PORTAL_WIDE_STATUS if the contact opted
        #
        #   @param status [Symbol, HubspotSDK::Models::Marketing::PublicSubscriptionStatus::Status] Whether the contact is subscribed.
        #
        #   @param brand_id [Integer] The ID of the brand that the subscription is associated with, if there is one.
        #
        #   @param legal_basis [Symbol, HubspotSDK::Models::Marketing::PublicSubscriptionStatus::LegalBasis] The legal reason for the current status of the subscription.
        #
        #   @param legal_basis_explanation [String] A more detailed explanation to go with the legal basis.
        #
        #   @param preference_group_name [String] The name of the preferences group that the subscription is associated with.

        # Where the status is determined from e.g. PORTAL_WIDE_STATUS if the contact opted
        # out from the portal.
        #
        # @see HubspotSDK::Models::Marketing::PublicSubscriptionStatus#source_of_status
        module SourceOfStatus
          extend HubspotSDK::Internal::Type::Enum

          BRAND_WIDE_STATUS = :BRAND_WIDE_STATUS
          PORTAL_WIDE_STATUS = :PORTAL_WIDE_STATUS
          SUBSCRIPTION_STATUS = :SUBSCRIPTION_STATUS

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Whether the contact is subscribed.
        #
        # @see HubspotSDK::Models::Marketing::PublicSubscriptionStatus#status
        module Status
          extend HubspotSDK::Internal::Type::Enum

          NOT_SUBSCRIBED = :NOT_SUBSCRIBED
          SUBSCRIBED = :SUBSCRIBED

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The legal reason for the current status of the subscription.
        #
        # @see HubspotSDK::Models::Marketing::PublicSubscriptionStatus#legal_basis
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
