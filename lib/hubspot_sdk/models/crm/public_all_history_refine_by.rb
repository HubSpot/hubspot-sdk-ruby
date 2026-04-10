# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class PublicAllHistoryRefineBy < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute type
        #   Type of refine by (ALL_HISTORY)
        #
        #   @return [Symbol, HubSpotSDK::Models::Crm::PublicAllHistoryRefineBy::Type]
        required :type, enum: -> { HubSpotSDK::Crm::PublicAllHistoryRefineBy::Type }

        # @!method initialize(type:)
        #   @param type [Symbol, HubSpotSDK::Models::Crm::PublicAllHistoryRefineBy::Type] Type of refine by (ALL_HISTORY)

        # Type of refine by (ALL_HISTORY)
        #
        # @see HubSpotSDK::Models::Crm::PublicAllHistoryRefineBy#type
        module Type
          extend HubSpotSDK::Internal::Type::Enum

          ALL_HISTORY = :ALL_HISTORY

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
