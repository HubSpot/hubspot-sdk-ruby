# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class PublicRelativeComparativeTimestampRefineBy < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute comparison
        #   Defines the comparison operation to be used in the refinement (BEFORE, AFTER).
        #
        #   @return [String]
        required :comparison, String

        # @!attribute time_offset
        #
        #   @return [HubSpotSDK::Models::Crm::PublicTimeOffset]
        required :time_offset, -> { HubSpotSDK::Crm::PublicTimeOffset }, api_name: :timeOffset

        # @!attribute type
        #   Specifies the type of refinement, (RELATIVE_COMPARATIVE).
        #
        #   @return [Symbol, HubSpotSDK::Models::Crm::PublicRelativeComparativeTimestampRefineBy::Type]
        required :type, enum: -> { HubSpotSDK::Crm::PublicRelativeComparativeTimestampRefineBy::Type }

        # @!method initialize(comparison:, time_offset:, type:)
        #   @param comparison [String] Defines the comparison operation to be used in the refinement (BEFORE, AFTER).
        #
        #   @param time_offset [HubSpotSDK::Models::Crm::PublicTimeOffset]
        #
        #   @param type [Symbol, HubSpotSDK::Models::Crm::PublicRelativeComparativeTimestampRefineBy::Type] Specifies the type of refinement, (RELATIVE_COMPARATIVE).

        # Specifies the type of refinement, (RELATIVE_COMPARATIVE).
        #
        # @see HubSpotSDK::Models::Crm::PublicRelativeComparativeTimestampRefineBy#type
        module Type
          extend HubSpotSDK::Internal::Type::Enum

          RELATIVE_COMPARATIVE = :RELATIVE_COMPARATIVE

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
