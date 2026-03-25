# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PublicRelativeRangedTimestampRefineBy < HubspotSDK::Internal::Type::BaseModel
        # @!attribute lower_bound_offset
        #
        #   @return [HubspotSDK::Models::Crm::PublicTimeOffset]
        required :lower_bound_offset, -> { HubspotSDK::Crm::PublicTimeOffset }, api_name: :lowerBoundOffset

        # @!attribute range_type
        #   Specifies the type of range for the refinement criteria (BETWEEN, NOT_BETWEEN).
        #
        #   @return [String]
        required :range_type, String, api_name: :rangeType

        # @!attribute type
        #   Indicates the type of refinement (RELATIVE_RANGED).
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::PublicRelativeRangedTimestampRefineBy::Type]
        required :type, enum: -> { HubspotSDK::Crm::PublicRelativeRangedTimestampRefineBy::Type }

        # @!attribute upper_bound_offset
        #
        #   @return [HubspotSDK::Models::Crm::PublicTimeOffset]
        required :upper_bound_offset, -> { HubspotSDK::Crm::PublicTimeOffset }, api_name: :upperBoundOffset

        # @!method initialize(lower_bound_offset:, range_type:, type:, upper_bound_offset:)
        #   @param lower_bound_offset [HubspotSDK::Models::Crm::PublicTimeOffset]
        #
        #   @param range_type [String] Specifies the type of range for the refinement criteria (BETWEEN, NOT_BETWEEN).
        #
        #   @param type [Symbol, HubspotSDK::Models::Crm::PublicRelativeRangedTimestampRefineBy::Type] Indicates the type of refinement (RELATIVE_RANGED).
        #
        #   @param upper_bound_offset [HubspotSDK::Models::Crm::PublicTimeOffset]

        # Indicates the type of refinement (RELATIVE_RANGED).
        #
        # @see HubspotSDK::Models::Crm::PublicRelativeRangedTimestampRefineBy#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          RELATIVE_RANGED = :RELATIVE_RANGED

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
