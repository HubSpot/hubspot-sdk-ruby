# frozen_string_literal: true

module HubspotSDK
  module Models
    module Events
      class AbsoluteComparativeTimestampRefineBy < HubspotSDK::Internal::Type::BaseModel
        # @!attribute comparison
        #
        #   @return [Symbol, HubspotSDK::Models::Events::AbsoluteComparativeTimestampRefineBy::Comparison]
        required :comparison, enum: -> { HubspotSDK::Events::AbsoluteComparativeTimestampRefineBy::Comparison }

        # @!attribute timestamp
        #
        #   @return [Integer]
        required :timestamp, Integer

        # @!attribute type
        #
        #   @return [Symbol, HubspotSDK::Models::Events::AbsoluteComparativeTimestampRefineBy::Type]
        required :type, enum: -> { HubspotSDK::Events::AbsoluteComparativeTimestampRefineBy::Type }

        # @!method initialize(comparison:, timestamp:, type:)
        #   @param comparison [Symbol, HubspotSDK::Models::Events::AbsoluteComparativeTimestampRefineBy::Comparison]
        #   @param timestamp [Integer]
        #   @param type [Symbol, HubspotSDK::Models::Events::AbsoluteComparativeTimestampRefineBy::Type]

        # @see HubspotSDK::Models::Events::AbsoluteComparativeTimestampRefineBy#comparison
        module Comparison
          extend HubspotSDK::Internal::Type::Enum

          AFTER = :AFTER
          BEFORE = :BEFORE

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubspotSDK::Models::Events::AbsoluteComparativeTimestampRefineBy#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          ABSOLUTE_COMPARATIVE_TIMESTAMP_REFINE_BY = :AbsoluteComparativeTimestampRefineBy

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
