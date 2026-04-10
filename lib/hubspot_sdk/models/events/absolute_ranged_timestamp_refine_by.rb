# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Events
      class AbsoluteRangedTimestampRefineBy < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute lower_timestamp
        #
        #   @return [Integer]
        required :lower_timestamp, Integer, api_name: :lowerTimestamp

        # @!attribute range_type
        #
        #   @return [Symbol, HubSpotSDK::Models::Events::AbsoluteRangedTimestampRefineBy::RangeType]
        required :range_type,
                 enum: -> { HubSpotSDK::Events::AbsoluteRangedTimestampRefineBy::RangeType },
                 api_name: :rangeType

        # @!attribute type
        #
        #   @return [Symbol, HubSpotSDK::Models::Events::AbsoluteRangedTimestampRefineBy::Type]
        required :type, enum: -> { HubSpotSDK::Events::AbsoluteRangedTimestampRefineBy::Type }

        # @!attribute upper_timestamp
        #
        #   @return [Integer]
        required :upper_timestamp, Integer, api_name: :upperTimestamp

        # @!method initialize(lower_timestamp:, range_type:, type:, upper_timestamp:)
        #   @param lower_timestamp [Integer]
        #   @param range_type [Symbol, HubSpotSDK::Models::Events::AbsoluteRangedTimestampRefineBy::RangeType]
        #   @param type [Symbol, HubSpotSDK::Models::Events::AbsoluteRangedTimestampRefineBy::Type]
        #   @param upper_timestamp [Integer]

        # @see HubSpotSDK::Models::Events::AbsoluteRangedTimestampRefineBy#range_type
        module RangeType
          extend HubSpotSDK::Internal::Type::Enum

          BETWEEN = :BETWEEN
          NOT_BETWEEN = :NOT_BETWEEN

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubSpotSDK::Models::Events::AbsoluteRangedTimestampRefineBy#type
        module Type
          extend HubSpotSDK::Internal::Type::Enum

          ABSOLUTE_RANGED_TIMESTAMP_REFINE_BY = :AbsoluteRangedTimestampRefineBy

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
