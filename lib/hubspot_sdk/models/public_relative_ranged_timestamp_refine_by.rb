# frozen_string_literal: true

module HubspotSDK
  module Models
    class PublicRelativeRangedTimestampRefineBy < HubspotSDK::Internal::Type::BaseModel
      # @!attribute lower_bound_offset
      #
      #   @return [HubspotSDK::Models::PublicTimeOffset]
      required :lower_bound_offset, -> { HubspotSDK::PublicTimeOffset }, api_name: :lowerBoundOffset

      # @!attribute range_type
      #
      #   @return [String]
      required :range_type, String, api_name: :rangeType

      # @!attribute type
      #
      #   @return [Symbol, HubspotSDK::Models::PublicRelativeRangedTimestampRefineBy::Type]
      required :type, enum: -> { HubspotSDK::PublicRelativeRangedTimestampRefineBy::Type }

      # @!attribute upper_bound_offset
      #
      #   @return [HubspotSDK::Models::PublicTimeOffset]
      required :upper_bound_offset, -> { HubspotSDK::PublicTimeOffset }, api_name: :upperBoundOffset

      # @!method initialize(lower_bound_offset:, range_type:, type:, upper_bound_offset:)
      #   @param lower_bound_offset [HubspotSDK::Models::PublicTimeOffset]
      #   @param range_type [String]
      #   @param type [Symbol, HubspotSDK::Models::PublicRelativeRangedTimestampRefineBy::Type]
      #   @param upper_bound_offset [HubspotSDK::Models::PublicTimeOffset]

      # @see HubspotSDK::Models::PublicRelativeRangedTimestampRefineBy#type
      module Type
        extend HubspotSDK::Internal::Type::Enum

        RELATIVE_RANGED = :RELATIVE_RANGED

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
