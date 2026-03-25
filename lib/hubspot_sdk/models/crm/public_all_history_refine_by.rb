# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PublicAllHistoryRefineBy < HubspotSDK::Internal::Type::BaseModel
        # @!attribute type
        #   Type of refine by (ALL_HISTORY)
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::PublicAllHistoryRefineBy::Type]
        required :type, enum: -> { HubspotSDK::Crm::PublicAllHistoryRefineBy::Type }

        # @!method initialize(type:)
        #   @param type [Symbol, HubspotSDK::Models::Crm::PublicAllHistoryRefineBy::Type] Type of refine by (ALL_HISTORY)

        # Type of refine by (ALL_HISTORY)
        #
        # @see HubspotSDK::Models::Crm::PublicAllHistoryRefineBy#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          ALL_HISTORY = :ALL_HISTORY

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
