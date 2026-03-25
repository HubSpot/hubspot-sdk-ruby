# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PublicAbsoluteComparativeTimestampRefineBy < HubspotSDK::Internal::Type::BaseModel
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
        #   @return [Symbol, HubspotSDK::Models::Crm::PublicAbsoluteComparativeTimestampRefineBy::Type]
        required :type, enum: -> { HubspotSDK::Crm::PublicAbsoluteComparativeTimestampRefineBy::Type }

        # @!method initialize(comparison:, timestamp:, type:)
        #   @param comparison [String] Timestamp comparison options (BEFORE, AFTER)
        #
        #   @param timestamp [Integer] Timestamp to be used in refine by criteria
        #
        #   @param type [Symbol, HubspotSDK::Models::Crm::PublicAbsoluteComparativeTimestampRefineBy::Type] type of refine by criteria (ABSOLUTE_COMPARATIVE)

        # type of refine by criteria (ABSOLUTE_COMPARATIVE)
        #
        # @see HubspotSDK::Models::Crm::PublicAbsoluteComparativeTimestampRefineBy#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          ABSOLUTE_COMPARATIVE = :ABSOLUTE_COMPARATIVE

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
