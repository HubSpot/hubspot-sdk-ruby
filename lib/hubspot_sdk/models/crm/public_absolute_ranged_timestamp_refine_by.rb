# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PublicAbsoluteRangedTimestampRefineBy < HubspotSDK::Internal::Type::BaseModel
        # @!attribute lower_timestamp
        #   Lower range timestamp of refinement criteria
        #
        #   @return [Integer]
        required :lower_timestamp, Integer, api_name: :lowerTimestamp

        # @!attribute range_type
        #   Type of range of refinement critaria (BETWEEN, NOT_BETWEEN)
        #
        #   @return [String]
        required :range_type, String, api_name: :rangeType

        # @!attribute type
        #   type of refine by criteria (ABSOLUTE_RANGED)
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::PublicAbsoluteRangedTimestampRefineBy::Type]
        required :type, enum: -> { HubspotSDK::Crm::PublicAbsoluteRangedTimestampRefineBy::Type }

        # @!attribute upper_timestamp
        #   Upper range timestamp of refinement criteria
        #
        #   @return [Integer]
        required :upper_timestamp, Integer, api_name: :upperTimestamp

        # @!method initialize(lower_timestamp:, range_type:, type:, upper_timestamp:)
        #   @param lower_timestamp [Integer] Lower range timestamp of refinement criteria
        #
        #   @param range_type [String] Type of range of refinement critaria (BETWEEN, NOT_BETWEEN)
        #
        #   @param type [Symbol, HubspotSDK::Models::Crm::PublicAbsoluteRangedTimestampRefineBy::Type] type of refine by criteria (ABSOLUTE_RANGED)
        #
        #   @param upper_timestamp [Integer] Upper range timestamp of refinement criteria

        # type of refine by criteria (ABSOLUTE_RANGED)
        #
        # @see HubspotSDK::Models::Crm::PublicAbsoluteRangedTimestampRefineBy#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          ABSOLUTE_RANGED = :ABSOLUTE_RANGED

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
