# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Events
      class RelativeRangedTimestampRefineBy < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute lower_bound_offset
        #
        #   @return [HubSpotSDK::Models::Events::TimeOffset]
        required :lower_bound_offset, -> { HubSpotSDK::Events::TimeOffset }, api_name: :lowerBoundOffset

        # @!attribute range_type
        #
        #   @return [Symbol, HubSpotSDK::Models::Events::RelativeRangedTimestampRefineBy::RangeType]
        required :range_type,
                 enum: -> { HubSpotSDK::Events::RelativeRangedTimestampRefineBy::RangeType },
                 api_name: :rangeType

        # @!attribute type
        #
        #   @return [Symbol, HubSpotSDK::Models::Events::RelativeRangedTimestampRefineBy::Type]
        required :type, enum: -> { HubSpotSDK::Events::RelativeRangedTimestampRefineBy::Type }

        # @!attribute upper_bound_offset
        #
        #   @return [HubSpotSDK::Models::Events::TimeOffset]
        required :upper_bound_offset, -> { HubSpotSDK::Events::TimeOffset }, api_name: :upperBoundOffset

        # @!method initialize(lower_bound_offset:, range_type:, type:, upper_bound_offset:)
        #   @param lower_bound_offset [HubSpotSDK::Models::Events::TimeOffset]
        #   @param range_type [Symbol, HubSpotSDK::Models::Events::RelativeRangedTimestampRefineBy::RangeType]
        #   @param type [Symbol, HubSpotSDK::Models::Events::RelativeRangedTimestampRefineBy::Type]
        #   @param upper_bound_offset [HubSpotSDK::Models::Events::TimeOffset]

        # @see HubSpotSDK::Models::Events::RelativeRangedTimestampRefineBy#range_type
        module RangeType
          extend HubSpotSDK::Internal::Type::Enum

          BETWEEN = :BETWEEN
          NOT_BETWEEN = :NOT_BETWEEN

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubSpotSDK::Models::Events::RelativeRangedTimestampRefineBy#type
        module Type
          extend HubSpotSDK::Internal::Type::Enum

          RELATIVE_RANGED_TIMESTAMP_REFINE_BY = :RelativeRangedTimestampRefineBy

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
