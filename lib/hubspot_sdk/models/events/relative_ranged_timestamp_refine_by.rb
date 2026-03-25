# frozen_string_literal: true

module HubspotSDK
  module Models
    module Events
      class RelativeRangedTimestampRefineBy < HubspotSDK::Internal::Type::BaseModel
        # @!attribute lower_bound_offset
        #
        #   @return [HubspotSDK::Models::Events::TimeOffset]
        required :lower_bound_offset, -> { HubspotSDK::Events::TimeOffset }, api_name: :lowerBoundOffset

        # @!attribute range_type
        #
        #   @return [Symbol, HubspotSDK::Models::Events::RelativeRangedTimestampRefineBy::RangeType]
        required :range_type,
                 enum: -> { HubspotSDK::Events::RelativeRangedTimestampRefineBy::RangeType },
                 api_name: :rangeType

        # @!attribute type
        #
        #   @return [Symbol, HubspotSDK::Models::Events::RelativeRangedTimestampRefineBy::Type]
        required :type, enum: -> { HubspotSDK::Events::RelativeRangedTimestampRefineBy::Type }

        # @!attribute upper_bound_offset
        #
        #   @return [HubspotSDK::Models::Events::TimeOffset]
        required :upper_bound_offset, -> { HubspotSDK::Events::TimeOffset }, api_name: :upperBoundOffset

        # @!method initialize(lower_bound_offset:, range_type:, type:, upper_bound_offset:)
        #   @param lower_bound_offset [HubspotSDK::Models::Events::TimeOffset]
        #   @param range_type [Symbol, HubspotSDK::Models::Events::RelativeRangedTimestampRefineBy::RangeType]
        #   @param type [Symbol, HubspotSDK::Models::Events::RelativeRangedTimestampRefineBy::Type]
        #   @param upper_bound_offset [HubspotSDK::Models::Events::TimeOffset]

        # @see HubspotSDK::Models::Events::RelativeRangedTimestampRefineBy#range_type
        module RangeType
          extend HubspotSDK::Internal::Type::Enum

          BETWEEN = :BETWEEN
          NOT_BETWEEN = :NOT_BETWEEN

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubspotSDK::Models::Events::RelativeRangedTimestampRefineBy#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          RELATIVE_RANGED_TIMESTAMP_REFINE_BY = :RelativeRangedTimestampRefineBy

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
