# frozen_string_literal: true

module HubspotSDK
  module Models
    class PublicAbsoluteComparativeTimestampRefineBy < HubspotSDK::Internal::Type::BaseModel
      # @!attribute comparison
      #
      #   @return [String]
      required :comparison, String

      # @!attribute timestamp
      #
      #   @return [Integer]
      required :timestamp, Integer

      # @!attribute type
      #
      #   @return [Symbol, HubspotSDK::Models::PublicAbsoluteComparativeTimestampRefineBy::Type]
      required :type, enum: -> { HubspotSDK::PublicAbsoluteComparativeTimestampRefineBy::Type }

      # @!method initialize(comparison:, timestamp:, type:)
      #   @param comparison [String]
      #   @param timestamp [Integer]
      #   @param type [Symbol, HubspotSDK::Models::PublicAbsoluteComparativeTimestampRefineBy::Type]

      # @see HubspotSDK::Models::PublicAbsoluteComparativeTimestampRefineBy#type
      module Type
        extend HubspotSDK::Internal::Type::Enum

        ABSOLUTE_COMPARATIVE = :ABSOLUTE_COMPARATIVE

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
