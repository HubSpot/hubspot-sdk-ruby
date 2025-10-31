# frozen_string_literal: true

module HubspotSDK
  module Models
    module Events
      class AbsoluteRangedTimestampRefineBy < HubspotSDK::Internal::Type::BaseModel
        # @!attribute lower_timestamp
        #
        #   @return [Integer]
        required :lower_timestamp, Integer, api_name: :lowerTimestamp

        # @!attribute range_type
        #
        #   @return [Symbol, HubspotSDK::Models::Events::AbsoluteRangedTimestampRefineBy::RangeType]
        required :range_type,
                 enum: -> { HubspotSDK::Events::AbsoluteRangedTimestampRefineBy::RangeType },
                 api_name: :rangeType

        # @!attribute type
        #
        #   @return [Symbol, HubspotSDK::Models::Events::AbsoluteRangedTimestampRefineBy::Type]
        required :type, enum: -> { HubspotSDK::Events::AbsoluteRangedTimestampRefineBy::Type }

        # @!attribute upper_timestamp
        #
        #   @return [Integer]
        required :upper_timestamp, Integer, api_name: :upperTimestamp

        # @!method initialize(lower_timestamp:, range_type:, type:, upper_timestamp:)
        #   @param lower_timestamp [Integer]
        #   @param range_type [Symbol, HubspotSDK::Models::Events::AbsoluteRangedTimestampRefineBy::RangeType]
        #   @param type [Symbol, HubspotSDK::Models::Events::AbsoluteRangedTimestampRefineBy::Type]
        #   @param upper_timestamp [Integer]

        # @see HubspotSDK::Models::Events::AbsoluteRangedTimestampRefineBy#range_type
        module RangeType
          extend HubspotSDK::Internal::Type::Enum

          BETWEEN = :BETWEEN
          NOT_BETWEEN = :NOT_BETWEEN

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubspotSDK::Models::Events::AbsoluteRangedTimestampRefineBy#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          ABSOLUTE_RANGED_TIMESTAMP_REFINE_BY = :AbsoluteRangedTimestampRefineBy

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
