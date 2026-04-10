# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class PublicNumAssociationsFilter < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute association_category
        #   Defines the category of the association (HUBSPOT_DEFINED, USER_DEFINED,
        #   INTEGRATOR_DEFINED, WORK).
        #
        #   @return [String]
        required :association_category, String, api_name: :associationCategory

        # @!attribute association_type_id
        #   The ID representing the type of association being filtered.
        #
        #   @return [Integer]
        required :association_type_id, Integer, api_name: :associationTypeId

        # @!attribute coalescing_refine_by
        #   Specifies the criteria for refining the association filter.
        #
        #   @return [HubSpotSDK::Models::Crm::PublicNumOccurrencesRefineBy, HubSpotSDK::Models::Crm::PublicSetOccurrencesRefineBy, HubSpotSDK::Models::Crm::PublicRelativeComparativeTimestampRefineBy, HubSpotSDK::Models::Crm::PublicRelativeRangedTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAbsoluteComparativeTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAbsoluteRangedTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAllHistoryRefineBy, HubSpotSDK::Models::Crm::PublicTimePointOperation, HubSpotSDK::Models::Crm::PublicRangedTimeOperation]
        required :coalescing_refine_by,
                 union: -> { HubSpotSDK::Crm::PublicNumAssociationsFilter::CoalescingRefineBy },
                 api_name: :coalescingRefineBy

        # @!attribute filter_type
        #   Indicates the type of filter being applied (NUM_ASSOCIATIONS).
        #
        #   @return [Symbol, HubSpotSDK::Models::Crm::PublicNumAssociationsFilter::FilterType]
        required :filter_type,
                 enum: -> { HubSpotSDK::Crm::PublicNumAssociationsFilter::FilterType },
                 api_name: :filterType

        # @!method initialize(association_category:, association_type_id:, coalescing_refine_by:, filter_type:)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Crm::PublicNumAssociationsFilter} for more details.
        #
        #   @param association_category [String] Defines the category of the association (HUBSPOT_DEFINED, USER_DEFINED, INTEGRAT
        #
        #   @param association_type_id [Integer] The ID representing the type of association being filtered.
        #
        #   @param coalescing_refine_by [HubSpotSDK::Models::Crm::PublicNumOccurrencesRefineBy, HubSpotSDK::Models::Crm::PublicSetOccurrencesRefineBy, HubSpotSDK::Models::Crm::PublicRelativeComparativeTimestampRefineBy, HubSpotSDK::Models::Crm::PublicRelativeRangedTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAbsoluteComparativeTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAbsoluteRangedTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAllHistoryRefineBy, HubSpotSDK::Models::Crm::PublicTimePointOperation, HubSpotSDK::Models::Crm::PublicRangedTimeOperation] Specifies the criteria for refining the association filter.
        #
        #   @param filter_type [Symbol, HubSpotSDK::Models::Crm::PublicNumAssociationsFilter::FilterType] Indicates the type of filter being applied (NUM_ASSOCIATIONS).

        # Specifies the criteria for refining the association filter.
        #
        # @see HubSpotSDK::Models::Crm::PublicNumAssociationsFilter#coalescing_refine_by
        module CoalescingRefineBy
          extend HubSpotSDK::Internal::Type::Union

          variant -> { HubSpotSDK::Crm::PublicNumOccurrencesRefineBy }

          variant -> { HubSpotSDK::Crm::PublicSetOccurrencesRefineBy }

          variant -> { HubSpotSDK::Crm::PublicRelativeComparativeTimestampRefineBy }

          variant -> { HubSpotSDK::Crm::PublicRelativeRangedTimestampRefineBy }

          variant -> { HubSpotSDK::Crm::PublicAbsoluteComparativeTimestampRefineBy }

          variant -> { HubSpotSDK::Crm::PublicAbsoluteRangedTimestampRefineBy }

          variant -> { HubSpotSDK::Crm::PublicAllHistoryRefineBy }

          variant -> { HubSpotSDK::Crm::PublicTimePointOperation }

          variant -> { HubSpotSDK::Crm::PublicRangedTimeOperation }

          # @!method self.variants
          #   @return [Array(HubSpotSDK::Models::Crm::PublicNumOccurrencesRefineBy, HubSpotSDK::Models::Crm::PublicSetOccurrencesRefineBy, HubSpotSDK::Models::Crm::PublicRelativeComparativeTimestampRefineBy, HubSpotSDK::Models::Crm::PublicRelativeRangedTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAbsoluteComparativeTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAbsoluteRangedTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAllHistoryRefineBy, HubSpotSDK::Models::Crm::PublicTimePointOperation, HubSpotSDK::Models::Crm::PublicRangedTimeOperation)]
        end

        # Indicates the type of filter being applied (NUM_ASSOCIATIONS).
        #
        # @see HubSpotSDK::Models::Crm::PublicNumAssociationsFilter#filter_type
        module FilterType
          extend HubSpotSDK::Internal::Type::Enum

          NUM_ASSOCIATIONS = :NUM_ASSOCIATIONS

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
