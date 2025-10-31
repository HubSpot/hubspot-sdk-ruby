# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class LegalConsentOptionsLegitimateInterest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute lawful_basis
        #
        #   @return [Symbol, HubspotSDK::Models::Marketing::LegalConsentOptionsLegitimateInterest::LawfulBasis]
        required :lawful_basis,
                 enum: -> { HubspotSDK::Marketing::LegalConsentOptionsLegitimateInterest::LawfulBasis },
                 api_name: :lawfulBasis

        # @!attribute privacy_text
        #
        #   @return [String]
        required :privacy_text, String, api_name: :privacyText

        # @!attribute subscription_type_ids
        #
        #   @return [Array<Integer>]
        required :subscription_type_ids,
                 HubspotSDK::Internal::Type::ArrayOf[Integer],
                 api_name: :subscriptionTypeIds

        # @!attribute type
        #
        #   @return [Symbol, HubspotSDK::Models::Marketing::LegalConsentOptionsLegitimateInterest::Type]
        required :type, enum: -> { HubspotSDK::Marketing::LegalConsentOptionsLegitimateInterest::Type }

        # @!method initialize(lawful_basis:, privacy_text:, subscription_type_ids:, type:)
        #   @param lawful_basis [Symbol, HubspotSDK::Models::Marketing::LegalConsentOptionsLegitimateInterest::LawfulBasis]
        #   @param privacy_text [String]
        #   @param subscription_type_ids [Array<Integer>]
        #   @param type [Symbol, HubspotSDK::Models::Marketing::LegalConsentOptionsLegitimateInterest::Type]

        # @see HubspotSDK::Models::Marketing::LegalConsentOptionsLegitimateInterest#lawful_basis
        module LawfulBasis
          extend HubspotSDK::Internal::Type::Enum

          LEAD = :lead
          CLIENT = :client
          OTHER = :other

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubspotSDK::Models::Marketing::LegalConsentOptionsLegitimateInterest#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          LEGITIMATE_INTEREST = :legitimate_interest

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
