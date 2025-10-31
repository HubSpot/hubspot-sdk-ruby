# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class LegalConsentOptionsNone < HubspotSDK::Internal::Type::BaseModel
        # @!attribute type
        #
        #   @return [Symbol, HubspotSDK::Models::Marketing::LegalConsentOptionsNone::Type]
        required :type, enum: -> { HubspotSDK::Marketing::LegalConsentOptionsNone::Type }

        # @!method initialize(type:)
        #   @param type [Symbol, HubspotSDK::Models::Marketing::LegalConsentOptionsNone::Type]

        # @see HubspotSDK::Models::Marketing::LegalConsentOptionsNone#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          NONE = :none

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
