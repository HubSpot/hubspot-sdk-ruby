# frozen_string_literal: true

module HubspotSDK
  module Models
    class PublicAbsoluteRangedTimestampRefineBy < HubspotSDK::Internal::Type::BaseModel
      # @!attribute lower_timestamp
      #
      #   @return [Integer]
      required :lower_timestamp, Integer, api_name: :lowerTimestamp

      # @!attribute range_type
      #
      #   @return [String]
      required :range_type, String, api_name: :rangeType

      # @!attribute type
      #
      #   @return [Symbol, HubspotSDK::Models::PublicAbsoluteRangedTimestampRefineBy::Type]
      required :type, enum: -> { HubspotSDK::PublicAbsoluteRangedTimestampRefineBy::Type }

      # @!attribute upper_timestamp
      #
      #   @return [Integer]
      required :upper_timestamp, Integer, api_name: :upperTimestamp

      # @!method initialize(lower_timestamp:, range_type:, type:, upper_timestamp:)
      #   @param lower_timestamp [Integer]
      #   @param range_type [String]
      #   @param type [Symbol, HubspotSDK::Models::PublicAbsoluteRangedTimestampRefineBy::Type]
      #   @param upper_timestamp [Integer]

      # @see HubspotSDK::Models::PublicAbsoluteRangedTimestampRefineBy#type
      module Type
        extend HubspotSDK::Internal::Type::Enum

        ABSOLUTE_RANGED = :ABSOLUTE_RANGED

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
