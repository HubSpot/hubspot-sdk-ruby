# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PublicNumAssociationsFilter < HubspotSDK::Internal::Type::BaseModel
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
        #   @return [HubspotSDK::Models::Crm::PublicNumOccurrencesRefineBy, HubspotSDK::Models::Crm::PublicSetOccurrencesRefineBy, HubspotSDK::Models::Crm::PublicRelativeComparativeTimestampRefineBy, HubspotSDK::Models::Crm::PublicRelativeRangedTimestampRefineBy, HubspotSDK::Models::Crm::PublicAbsoluteComparativeTimestampRefineBy, HubspotSDK::Models::Crm::PublicAbsoluteRangedTimestampRefineBy, HubspotSDK::Models::Crm::PublicAllHistoryRefineBy, HubspotSDK::Models::Crm::PublicTimePointOperation, HubspotSDK::Models::Crm::PublicRangedTimeOperation]
        required :coalescing_refine_by,
                 union: -> { HubspotSDK::Crm::PublicNumAssociationsFilter::CoalescingRefineBy },
                 api_name: :coalescingRefineBy

        # @!attribute filter_type
        #   Indicates the type of filter being applied (NUM_ASSOCIATIONS).
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::PublicNumAssociationsFilter::FilterType]
        required :filter_type,
                 enum: -> { HubspotSDK::Crm::PublicNumAssociationsFilter::FilterType },
                 api_name: :filterType

        # @!method initialize(association_category:, association_type_id:, coalescing_refine_by:, filter_type:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Crm::PublicNumAssociationsFilter} for more details.
        #
        #   @param association_category [String] Defines the category of the association (HUBSPOT_DEFINED, USER_DEFINED, INTEGRAT
        #
        #   @param association_type_id [Integer] The ID representing the type of association being filtered.
        #
        #   @param coalescing_refine_by [HubspotSDK::Models::Crm::PublicNumOccurrencesRefineBy, HubspotSDK::Models::Crm::PublicSetOccurrencesRefineBy, HubspotSDK::Models::Crm::PublicRelativeComparativeTimestampRefineBy, HubspotSDK::Models::Crm::PublicRelativeRangedTimestampRefineBy, HubspotSDK::Models::Crm::PublicAbsoluteComparativeTimestampRefineBy, HubspotSDK::Models::Crm::PublicAbsoluteRangedTimestampRefineBy, HubspotSDK::Models::Crm::PublicAllHistoryRefineBy, HubspotSDK::Models::Crm::PublicTimePointOperation, HubspotSDK::Models::Crm::PublicRangedTimeOperation] Specifies the criteria for refining the association filter.
        #
        #   @param filter_type [Symbol, HubspotSDK::Models::Crm::PublicNumAssociationsFilter::FilterType] Indicates the type of filter being applied (NUM_ASSOCIATIONS).

        # Specifies the criteria for refining the association filter.
        #
        # @see HubspotSDK::Models::Crm::PublicNumAssociationsFilter#coalescing_refine_by
        module CoalescingRefineBy
          extend HubspotSDK::Internal::Type::Union

          variant -> { HubspotSDK::Crm::PublicNumOccurrencesRefineBy }

          variant -> { HubspotSDK::Crm::PublicSetOccurrencesRefineBy }

          variant -> { HubspotSDK::Crm::PublicRelativeComparativeTimestampRefineBy }

          variant -> { HubspotSDK::Crm::PublicRelativeRangedTimestampRefineBy }

          variant -> { HubspotSDK::Crm::PublicAbsoluteComparativeTimestampRefineBy }

          variant -> { HubspotSDK::Crm::PublicAbsoluteRangedTimestampRefineBy }

          variant -> { HubspotSDK::Crm::PublicAllHistoryRefineBy }

          variant -> { HubspotSDK::Crm::PublicTimePointOperation }

          variant -> { HubspotSDK::Crm::PublicRangedTimeOperation }

          # @!method self.variants
          #   @return [Array(HubspotSDK::Models::Crm::PublicNumOccurrencesRefineBy, HubspotSDK::Models::Crm::PublicSetOccurrencesRefineBy, HubspotSDK::Models::Crm::PublicRelativeComparativeTimestampRefineBy, HubspotSDK::Models::Crm::PublicRelativeRangedTimestampRefineBy, HubspotSDK::Models::Crm::PublicAbsoluteComparativeTimestampRefineBy, HubspotSDK::Models::Crm::PublicAbsoluteRangedTimestampRefineBy, HubspotSDK::Models::Crm::PublicAllHistoryRefineBy, HubspotSDK::Models::Crm::PublicTimePointOperation, HubspotSDK::Models::Crm::PublicRangedTimeOperation)]
        end

        # Indicates the type of filter being applied (NUM_ASSOCIATIONS).
        #
        # @see HubspotSDK::Models::Crm::PublicNumAssociationsFilter#filter_type
        module FilterType
          extend HubspotSDK::Internal::Type::Enum

          NUM_ASSOCIATIONS = :NUM_ASSOCIATIONS

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
