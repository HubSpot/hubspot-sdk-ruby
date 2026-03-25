# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PublicRelativeComparativeTimestampRefineBy < HubspotSDK::Internal::Type::BaseModel
        # @!attribute comparison
        #   Defines the comparison operation to be used in the refinement (BEFORE, AFTER).
        #
        #   @return [String]
        required :comparison, String

        # @!attribute time_offset
        #
        #   @return [HubspotSDK::Models::Crm::PublicTimeOffset]
        required :time_offset, -> { HubspotSDK::Crm::PublicTimeOffset }, api_name: :timeOffset

        # @!attribute type
        #   Specifies the type of refinement, (RELATIVE_COMPARATIVE).
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::PublicRelativeComparativeTimestampRefineBy::Type]
        required :type, enum: -> { HubspotSDK::Crm::PublicRelativeComparativeTimestampRefineBy::Type }

        # @!method initialize(comparison:, time_offset:, type:)
        #   @param comparison [String] Defines the comparison operation to be used in the refinement (BEFORE, AFTER).
        #
        #   @param time_offset [HubspotSDK::Models::Crm::PublicTimeOffset]
        #
        #   @param type [Symbol, HubspotSDK::Models::Crm::PublicRelativeComparativeTimestampRefineBy::Type] Specifies the type of refinement, (RELATIVE_COMPARATIVE).

        # Specifies the type of refinement, (RELATIVE_COMPARATIVE).
        #
        # @see HubspotSDK::Models::Crm::PublicRelativeComparativeTimestampRefineBy#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          RELATIVE_COMPARATIVE = :RELATIVE_COMPARATIVE

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
