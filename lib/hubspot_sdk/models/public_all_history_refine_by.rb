# frozen_string_literal: true

module HubspotSDK
  module Models
    class PublicAllHistoryRefineBy < HubspotSDK::Internal::Type::BaseModel
      # @!attribute type
      #
      #   @return [Symbol, HubspotSDK::Models::PublicAllHistoryRefineBy::Type]
      required :type, enum: -> { HubspotSDK::PublicAllHistoryRefineBy::Type }

      # @!method initialize(type:)
      #   @param type [Symbol, HubspotSDK::Models::PublicAllHistoryRefineBy::Type]

      # @see HubspotSDK::Models::PublicAllHistoryRefineBy#type
      module Type
        extend HubspotSDK::Internal::Type::Enum

        ALL_HISTORY = :ALL_HISTORY

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
