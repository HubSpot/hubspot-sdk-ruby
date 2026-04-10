# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Events
      class AbsoluteComparativeTimestampRefineBy < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute comparison
        #
        #   @return [Symbol, HubSpotSDK::Models::Events::AbsoluteComparativeTimestampRefineBy::Comparison]
        required :comparison, enum: -> { HubSpotSDK::Events::AbsoluteComparativeTimestampRefineBy::Comparison }

        # @!attribute timestamp
        #
        #   @return [Integer]
        required :timestamp, Integer

        # @!attribute type
        #
        #   @return [Symbol, HubSpotSDK::Models::Events::AbsoluteComparativeTimestampRefineBy::Type]
        required :type, enum: -> { HubSpotSDK::Events::AbsoluteComparativeTimestampRefineBy::Type }

        # @!method initialize(comparison:, timestamp:, type:)
        #   @param comparison [Symbol, HubSpotSDK::Models::Events::AbsoluteComparativeTimestampRefineBy::Comparison]
        #   @param timestamp [Integer]
        #   @param type [Symbol, HubSpotSDK::Models::Events::AbsoluteComparativeTimestampRefineBy::Type]

        # @see HubSpotSDK::Models::Events::AbsoluteComparativeTimestampRefineBy#comparison
        module Comparison
          extend HubSpotSDK::Internal::Type::Enum

          AFTER = :AFTER
          BEFORE = :BEFORE

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubSpotSDK::Models::Events::AbsoluteComparativeTimestampRefineBy#type
        module Type
          extend HubSpotSDK::Internal::Type::Enum

          ABSOLUTE_COMPARATIVE_TIMESTAMP_REFINE_BY = :AbsoluteComparativeTimestampRefineBy

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
