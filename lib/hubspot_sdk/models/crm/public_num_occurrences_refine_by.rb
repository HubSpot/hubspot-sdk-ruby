# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class PublicNumOccurrencesRefineBy < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute type
        #   The type of refinement (NUM_OCCURRENCES).
        #
        #   @return [Symbol, HubSpotSDK::Models::Crm::PublicNumOccurrencesRefineBy::Type]
        required :type, enum: -> { HubSpotSDK::Crm::PublicNumOccurrencesRefineBy::Type }

        # @!attribute max_occurrences
        #   The maximum number of occurrences allowed.
        #
        #   @return [Integer, nil]
        optional :max_occurrences, Integer, api_name: :maxOccurrences

        # @!attribute min_occurrences
        #   The minimum number of occurrences required.
        #
        #   @return [Integer, nil]
        optional :min_occurrences, Integer, api_name: :minOccurrences

        # @!method initialize(type:, max_occurrences: nil, min_occurrences: nil)
        #   @param type [Symbol, HubSpotSDK::Models::Crm::PublicNumOccurrencesRefineBy::Type] The type of refinement (NUM_OCCURRENCES).
        #
        #   @param max_occurrences [Integer] The maximum number of occurrences allowed.
        #
        #   @param min_occurrences [Integer] The minimum number of occurrences required.

        # The type of refinement (NUM_OCCURRENCES).
        #
        # @see HubSpotSDK::Models::Crm::PublicNumOccurrencesRefineBy#type
        module Type
          extend HubSpotSDK::Internal::Type::Enum

          NUM_OCCURRENCES = :NUM_OCCURRENCES

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
