# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Events
      class SetOccurrencesRefineBy < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute set_type
        #
        #   @return [Symbol, HubSpotSDK::Models::Events::SetOccurrencesRefineBy::SetType]
        required :set_type,
                 enum: -> {
                   HubSpotSDK::Events::SetOccurrencesRefineBy::SetType
                 },
                 api_name: :setType

        # @!attribute type
        #
        #   @return [Symbol, HubSpotSDK::Models::Events::SetOccurrencesRefineBy::Type]
        required :type, enum: -> { HubSpotSDK::Events::SetOccurrencesRefineBy::Type }

        # @!method initialize(set_type:, type:)
        #   @param set_type [Symbol, HubSpotSDK::Models::Events::SetOccurrencesRefineBy::SetType]
        #   @param type [Symbol, HubSpotSDK::Models::Events::SetOccurrencesRefineBy::Type]

        # @see HubSpotSDK::Models::Events::SetOccurrencesRefineBy#set_type
        module SetType
          extend HubSpotSDK::Internal::Type::Enum

          ALL = :ALL
          ALL_INCLUDE_EMPTY = :ALL_INCLUDE_EMPTY
          ANY = :ANY
          ANY_INCLUDE_EMPTY = :ANY_INCLUDE_EMPTY
          NONE = :NONE
          NONE_EXCLUDE_EMPTY = :NONE_EXCLUDE_EMPTY

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubSpotSDK::Models::Events::SetOccurrencesRefineBy#type
        module Type
          extend HubSpotSDK::Internal::Type::Enum

          SET_OCCURRENCES_REFINE_BY = :SetOccurrencesRefineBy

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
