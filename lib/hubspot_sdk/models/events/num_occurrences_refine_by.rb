# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Events
      class NumOccurrencesRefineBy < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute type
        #
        #   @return [Symbol, HubSpotSDK::Models::Events::NumOccurrencesRefineBy::Type]
        required :type, enum: -> { HubSpotSDK::Events::NumOccurrencesRefineBy::Type }

        # @!attribute max_occurrences
        #
        #   @return [Integer, nil]
        optional :max_occurrences, Integer, api_name: :maxOccurrences

        # @!attribute min_occurrences
        #
        #   @return [Integer, nil]
        optional :min_occurrences, Integer, api_name: :minOccurrences

        # @!method initialize(type:, max_occurrences: nil, min_occurrences: nil)
        #   @param type [Symbol, HubSpotSDK::Models::Events::NumOccurrencesRefineBy::Type]
        #   @param max_occurrences [Integer]
        #   @param min_occurrences [Integer]

        # @see HubSpotSDK::Models::Events::NumOccurrencesRefineBy#type
        module Type
          extend HubSpotSDK::Internal::Type::Enum

          NUM_OCCURRENCES_REFINE_BY = :NumOccurrencesRefineBy

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
