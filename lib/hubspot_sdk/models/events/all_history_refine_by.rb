# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Events
      class AllHistoryRefineBy < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute type
        #
        #   @return [Symbol, HubSpotSDK::Models::Events::AllHistoryRefineBy::Type]
        required :type, enum: -> { HubSpotSDK::Events::AllHistoryRefineBy::Type }

        # @!method initialize(type:)
        #   @param type [Symbol, HubSpotSDK::Models::Events::AllHistoryRefineBy::Type]

        # @see HubSpotSDK::Models::Events::AllHistoryRefineBy#type
        module Type
          extend HubSpotSDK::Internal::Type::Enum

          ALL_HISTORY_REFINE_BY = :AllHistoryRefineBy

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
