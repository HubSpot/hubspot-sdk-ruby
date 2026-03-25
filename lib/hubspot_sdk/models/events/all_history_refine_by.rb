# frozen_string_literal: true

module HubspotSDK
  module Models
    module Events
      class AllHistoryRefineBy < HubspotSDK::Internal::Type::BaseModel
        # @!attribute type
        #
        #   @return [Symbol, HubspotSDK::Models::Events::AllHistoryRefineBy::Type]
        required :type, enum: -> { HubspotSDK::Events::AllHistoryRefineBy::Type }

        # @!method initialize(type:)
        #   @param type [Symbol, HubspotSDK::Models::Events::AllHistoryRefineBy::Type]

        # @see HubspotSDK::Models::Events::AllHistoryRefineBy#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          ALL_HISTORY_REFINE_BY = :AllHistoryRefineBy

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
