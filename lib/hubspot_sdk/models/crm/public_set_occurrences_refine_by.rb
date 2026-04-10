# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class PublicSetOccurrencesRefineBy < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute set_type
        #   Indicates the specific set type used in the refinement (ALL, ALL_INCLUDE_EMPTY,
        #   ANY, NONE, NONE_EXCLUDE_EMPTY, ANY_INCLUDE_EMPTY).
        #
        #   @return [String]
        required :set_type, String, api_name: :setType

        # @!attribute type
        #   Specifies the type of refinement (SET_OCCURRENCES).
        #
        #   @return [Symbol, HubSpotSDK::Models::Crm::PublicSetOccurrencesRefineBy::Type]
        required :type, enum: -> { HubSpotSDK::Crm::PublicSetOccurrencesRefineBy::Type }

        # @!method initialize(set_type:, type:)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Crm::PublicSetOccurrencesRefineBy} for more details.
        #
        #   @param set_type [String] Indicates the specific set type used in the refinement (ALL, ALL_INCLUDE_EMPTY,
        #
        #   @param type [Symbol, HubSpotSDK::Models::Crm::PublicSetOccurrencesRefineBy::Type] Specifies the type of refinement (SET_OCCURRENCES).

        # Specifies the type of refinement (SET_OCCURRENCES).
        #
        # @see HubSpotSDK::Models::Crm::PublicSetOccurrencesRefineBy#type
        module Type
          extend HubSpotSDK::Internal::Type::Enum

          SET_OCCURRENCES = :SET_OCCURRENCES

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
