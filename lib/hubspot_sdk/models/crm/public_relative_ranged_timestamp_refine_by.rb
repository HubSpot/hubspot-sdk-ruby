# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class PublicRelativeRangedTimestampRefineBy < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute lower_bound_offset
        #
        #   @return [HubSpotSDK::Models::Crm::PublicTimeOffset]
        required :lower_bound_offset, -> { HubSpotSDK::Crm::PublicTimeOffset }, api_name: :lowerBoundOffset

        # @!attribute range_type
        #   Specifies the type of range for the refinement criteria (BETWEEN, NOT_BETWEEN).
        #
        #   @return [String]
        required :range_type, String, api_name: :rangeType

        # @!attribute type
        #   Indicates the type of refinement (RELATIVE_RANGED).
        #
        #   @return [Symbol, HubSpotSDK::Models::Crm::PublicRelativeRangedTimestampRefineBy::Type]
        required :type, enum: -> { HubSpotSDK::Crm::PublicRelativeRangedTimestampRefineBy::Type }

        # @!attribute upper_bound_offset
        #
        #   @return [HubSpotSDK::Models::Crm::PublicTimeOffset]
        required :upper_bound_offset, -> { HubSpotSDK::Crm::PublicTimeOffset }, api_name: :upperBoundOffset

        # @!method initialize(lower_bound_offset:, range_type:, type:, upper_bound_offset:)
        #   @param lower_bound_offset [HubSpotSDK::Models::Crm::PublicTimeOffset]
        #
        #   @param range_type [String] Specifies the type of range for the refinement criteria (BETWEEN, NOT_BETWEEN).
        #
        #   @param type [Symbol, HubSpotSDK::Models::Crm::PublicRelativeRangedTimestampRefineBy::Type] Indicates the type of refinement (RELATIVE_RANGED).
        #
        #   @param upper_bound_offset [HubSpotSDK::Models::Crm::PublicTimeOffset]

        # Indicates the type of refinement (RELATIVE_RANGED).
        #
        # @see HubSpotSDK::Models::Crm::PublicRelativeRangedTimestampRefineBy#type
        module Type
          extend HubSpotSDK::Internal::Type::Enum

          RELATIVE_RANGED = :RELATIVE_RANGED

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
