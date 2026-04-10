# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class PublicAbsoluteComparativeTimestampRefineBy < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute comparison
        #   Timestamp comparison options (BEFORE, AFTER)
        #
        #   @return [String]
        required :comparison, String

        # @!attribute timestamp
        #   Timestamp to be used in refine by criteria
        #
        #   @return [Integer]
        required :timestamp, Integer

        # @!attribute type
        #   type of refine by criteria (ABSOLUTE_COMPARATIVE)
        #
        #   @return [Symbol, HubSpotSDK::Models::Crm::PublicAbsoluteComparativeTimestampRefineBy::Type]
        required :type, enum: -> { HubSpotSDK::Crm::PublicAbsoluteComparativeTimestampRefineBy::Type }

        # @!method initialize(comparison:, timestamp:, type:)
        #   @param comparison [String] Timestamp comparison options (BEFORE, AFTER)
        #
        #   @param timestamp [Integer] Timestamp to be used in refine by criteria
        #
        #   @param type [Symbol, HubSpotSDK::Models::Crm::PublicAbsoluteComparativeTimestampRefineBy::Type] type of refine by criteria (ABSOLUTE_COMPARATIVE)

        # type of refine by criteria (ABSOLUTE_COMPARATIVE)
        #
        # @see HubSpotSDK::Models::Crm::PublicAbsoluteComparativeTimestampRefineBy#type
        module Type
          extend HubSpotSDK::Internal::Type::Enum

          ABSOLUTE_COMPARATIVE = :ABSOLUTE_COMPARATIVE

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
