# frozen_string_literal: true

module HubspotSDK
  module Models
    class PublicNumOccurrencesRefineBy < HubspotSDK::Internal::Type::BaseModel
      # @!attribute type
      #
      #   @return [Symbol, HubspotSDK::Models::PublicNumOccurrencesRefineBy::Type]
      required :type, enum: -> { HubspotSDK::PublicNumOccurrencesRefineBy::Type }

      # @!attribute max_occurrences
      #
      #   @return [Integer, nil]
      optional :max_occurrences, Integer, api_name: :maxOccurrences

      # @!attribute min_occurrences
      #
      #   @return [Integer, nil]
      optional :min_occurrences, Integer, api_name: :minOccurrences

      # @!method initialize(type:, max_occurrences: nil, min_occurrences: nil)
      #   @param type [Symbol, HubspotSDK::Models::PublicNumOccurrencesRefineBy::Type]
      #   @param max_occurrences [Integer]
      #   @param min_occurrences [Integer]

      # @see HubspotSDK::Models::PublicNumOccurrencesRefineBy#type
      module Type
        extend HubspotSDK::Internal::Type::Enum

        NUM_OCCURRENCES = :NUM_OCCURRENCES

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
