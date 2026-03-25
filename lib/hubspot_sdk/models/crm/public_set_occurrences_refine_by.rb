# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PublicSetOccurrencesRefineBy < HubspotSDK::Internal::Type::BaseModel
        # @!attribute set_type
        #   Indicates the specific set type used in the refinement (ALL, ALL_INCLUDE_EMPTY,
        #   ANY, NONE, NONE_EXCLUDE_EMPTY, ANY_INCLUDE_EMPTY).
        #
        #   @return [String]
        required :set_type, String, api_name: :setType

        # @!attribute type
        #   Specifies the type of refinement (SET_OCCURRENCES).
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::PublicSetOccurrencesRefineBy::Type]
        required :type, enum: -> { HubspotSDK::Crm::PublicSetOccurrencesRefineBy::Type }

        # @!method initialize(set_type:, type:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Crm::PublicSetOccurrencesRefineBy} for more details.
        #
        #   @param set_type [String] Indicates the specific set type used in the refinement (ALL, ALL_INCLUDE_EMPTY,
        #
        #   @param type [Symbol, HubspotSDK::Models::Crm::PublicSetOccurrencesRefineBy::Type] Specifies the type of refinement (SET_OCCURRENCES).

        # Specifies the type of refinement (SET_OCCURRENCES).
        #
        # @see HubspotSDK::Models::Crm::PublicSetOccurrencesRefineBy#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          SET_OCCURRENCES = :SET_OCCURRENCES

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
