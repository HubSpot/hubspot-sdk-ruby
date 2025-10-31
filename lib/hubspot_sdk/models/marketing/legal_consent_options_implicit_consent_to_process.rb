# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class LegalConsentOptionsImplicitConsentToProcess < HubspotSDK::Internal::Type::BaseModel
        # @!attribute communications_checkboxes
        #
        #   @return [Array<HubspotSDK::Models::Marketing::LegalConsentCheckbox>]
        required :communications_checkboxes,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::LegalConsentCheckbox] },
                 api_name: :communicationsCheckboxes

        # @!attribute privacy_text
        #
        #   @return [String]
        required :privacy_text, String, api_name: :privacyText

        # @!attribute type
        #
        #   @return [Symbol, HubspotSDK::Models::Marketing::LegalConsentOptionsImplicitConsentToProcess::Type]
        required :type, enum: -> { HubspotSDK::Marketing::LegalConsentOptionsImplicitConsentToProcess::Type }

        # @!attribute communication_consent_text
        #
        #   @return [String, nil]
        optional :communication_consent_text, String, api_name: :communicationConsentText

        # @!attribute consent_to_process_text
        #
        #   @return [String, nil]
        optional :consent_to_process_text, String, api_name: :consentToProcessText

        # @!method initialize(communications_checkboxes:, privacy_text:, type:, communication_consent_text: nil, consent_to_process_text: nil)
        #   @param communications_checkboxes [Array<HubspotSDK::Models::Marketing::LegalConsentCheckbox>]
        #   @param privacy_text [String]
        #   @param type [Symbol, HubspotSDK::Models::Marketing::LegalConsentOptionsImplicitConsentToProcess::Type]
        #   @param communication_consent_text [String]
        #   @param consent_to_process_text [String]

        # @see HubspotSDK::Models::Marketing::LegalConsentOptionsImplicitConsentToProcess#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          IMPLICIT_CONSENT_TO_PROCESS = :implicit_consent_to_process

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
