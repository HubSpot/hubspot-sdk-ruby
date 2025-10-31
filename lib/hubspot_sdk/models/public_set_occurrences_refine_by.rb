# frozen_string_literal: true

module HubspotSDK
  module Models
    class PublicSetOccurrencesRefineBy < HubspotSDK::Internal::Type::BaseModel
      # @!attribute set_type
      #
      #   @return [String]
      required :set_type, String, api_name: :setType

      # @!attribute type
      #
      #   @return [Symbol, HubspotSDK::Models::PublicSetOccurrencesRefineBy::Type]
      required :type, enum: -> { HubspotSDK::PublicSetOccurrencesRefineBy::Type }

      # @!method initialize(set_type:, type:)
      #   @param set_type [String]
      #   @param type [Symbol, HubspotSDK::Models::PublicSetOccurrencesRefineBy::Type]

      # @see HubspotSDK::Models::PublicSetOccurrencesRefineBy#type
      module Type
        extend HubspotSDK::Internal::Type::Enum

        SET_OCCURRENCES = :SET_OCCURRENCES

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
