# frozen_string_literal: true

module HubspotSDK
  module Models
    module CommunicationPreferences
      # @see HubspotSDK::Resources::CommunicationPreferences#subscribe
      class PublicSubscriptionStatus < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the subscription status.
        #
        #   @return [String]
        required :id, String

        # @!attribute description
        #   A description of the subscription status.
        #
        #   @return [String]
        required :description, String

        # @!attribute name
        #   The name of the subscription status.
        #
        #   @return [String]
        required :name, String

        # @!attribute source_of_status
        #   Indicates the origin of the subscription status, with possible values being
        #   'PORTAL_WIDE_STATUS', 'BRAND_WIDE_STATUS', or 'SUBSCRIPTION_STATUS'.
        #
        #   @return [Symbol, HubspotSDK::Models::CommunicationPreferences::PublicSubscriptionStatus::SourceOfStatus]
        required :source_of_status,
                 enum: -> { HubspotSDK::CommunicationPreferences::PublicSubscriptionStatus::SourceOfStatus },
                 api_name: :sourceOfStatus

        # @!attribute status
        #   The current status of the subscription, which can be 'SUBSCRIBED' or
        #   'NOT_SUBSCRIBED'.
        #
        #   @return [Symbol, HubspotSDK::Models::CommunicationPreferences::PublicSubscriptionStatus::Status]
        required :status, enum: -> { HubspotSDK::CommunicationPreferences::PublicSubscriptionStatus::Status }

        # @!attribute brand_id
        #   The unique identifier for the brand associated with the subscription status,
        #   represented as an integer.
        #
        #   @return [Integer, nil]
        optional :brand_id, Integer, api_name: :brandId

        # @!attribute legal_basis
        #   The legal basis for processing the subscription, which can include values such
        #   as 'LEGITIMATE_INTEREST_PQL', 'LEGITIMATE_INTEREST_CLIENT',
        #   'PERFORMANCE_OF_CONTRACT', 'CONSENT_WITH_NOTICE', 'NON_GDPR',
        #   'PROCESS_AND_STORE', or 'LEGITIMATE_INTEREST_OTHER'.
        #
        #   @return [Symbol, HubspotSDK::Models::CommunicationPreferences::PublicSubscriptionStatus::LegalBasis, nil]
        optional :legal_basis,
                 enum: -> { HubspotSDK::CommunicationPreferences::PublicSubscriptionStatus::LegalBasis },
                 api_name: :legalBasis

        # @!attribute legal_basis_explanation
        #   An explanation of the legal basis for the subscription status.
        #
        #   @return [String, nil]
        optional :legal_basis_explanation, String, api_name: :legalBasisExplanation

        # @!attribute preference_group_name
        #   The name of the preference group associated with the subscription status.
        #
        #   @return [String, nil]
        optional :preference_group_name, String, api_name: :preferenceGroupName

        # @!method initialize(id:, description:, name:, source_of_status:, status:, brand_id: nil, legal_basis: nil, legal_basis_explanation: nil, preference_group_name: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::CommunicationPreferences::PublicSubscriptionStatus} for
        #   more details.
        #
        #   @param id [String] The unique identifier for the subscription status.
        #
        #   @param description [String] A description of the subscription status.
        #
        #   @param name [String] The name of the subscription status.
        #
        #   @param source_of_status [Symbol, HubspotSDK::Models::CommunicationPreferences::PublicSubscriptionStatus::SourceOfStatus] Indicates the origin of the subscription status, with possible values being 'POR
        #
        #   @param status [Symbol, HubspotSDK::Models::CommunicationPreferences::PublicSubscriptionStatus::Status] The current status of the subscription, which can be 'SUBSCRIBED' or 'NOT_SUBSCR
        #
        #   @param brand_id [Integer] The unique identifier for the brand associated with the subscription status, rep
        #
        #   @param legal_basis [Symbol, HubspotSDK::Models::CommunicationPreferences::PublicSubscriptionStatus::LegalBasis] The legal basis for processing the subscription, which can include values such a
        #
        #   @param legal_basis_explanation [String] An explanation of the legal basis for the subscription status.
        #
        #   @param preference_group_name [String] The name of the preference group associated with the subscription status.

        # Indicates the origin of the subscription status, with possible values being
        # 'PORTAL_WIDE_STATUS', 'BRAND_WIDE_STATUS', or 'SUBSCRIPTION_STATUS'.
        #
        # @see HubspotSDK::Models::CommunicationPreferences::PublicSubscriptionStatus#source_of_status
        module SourceOfStatus
          extend HubspotSDK::Internal::Type::Enum

          BRAND_WIDE_STATUS = :BRAND_WIDE_STATUS
          PORTAL_WIDE_STATUS = :PORTAL_WIDE_STATUS
          SUBSCRIPTION_STATUS = :SUBSCRIPTION_STATUS

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The current status of the subscription, which can be 'SUBSCRIBED' or
        # 'NOT_SUBSCRIBED'.
        #
        # @see HubspotSDK::Models::CommunicationPreferences::PublicSubscriptionStatus#status
        module Status
          extend HubspotSDK::Internal::Type::Enum

          NOT_SUBSCRIBED = :NOT_SUBSCRIBED
          SUBSCRIBED = :SUBSCRIBED

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The legal basis for processing the subscription, which can include values such
        # as 'LEGITIMATE_INTEREST_PQL', 'LEGITIMATE_INTEREST_CLIENT',
        # 'PERFORMANCE_OF_CONTRACT', 'CONSENT_WITH_NOTICE', 'NON_GDPR',
        # 'PROCESS_AND_STORE', or 'LEGITIMATE_INTEREST_OTHER'.
        #
        # @see HubspotSDK::Models::CommunicationPreferences::PublicSubscriptionStatus#legal_basis
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
