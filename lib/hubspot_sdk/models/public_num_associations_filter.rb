# frozen_string_literal: true

module HubspotSDK
  module Models
    class PublicNumAssociationsFilter < HubspotSDK::Internal::Type::BaseModel
      # @!attribute association_category
      #
      #   @return [String]
      required :association_category, String, api_name: :associationCategory

      # @!attribute association_type_id
      #
      #   @return [Integer]
      required :association_type_id, Integer, api_name: :associationTypeId

      # @!attribute coalescing_refine_by
      #
      #   @return [HubspotSDK::Models::PublicNumOccurrencesRefineBy, HubspotSDK::Models::PublicSetOccurrencesRefineBy, HubspotSDK::Models::PublicRelativeComparativeTimestampRefineBy, HubspotSDK::Models::PublicRelativeRangedTimestampRefineBy, HubspotSDK::Models::PublicAbsoluteComparativeTimestampRefineBy, HubspotSDK::Models::PublicAbsoluteRangedTimestampRefineBy, HubspotSDK::Models::PublicAllHistoryRefineBy, HubspotSDK::Models::PublicTimePointOperation, HubspotSDK::Models::PublicRangedTimeOperation]
      required :coalescing_refine_by,
               union: -> { HubspotSDK::PublicNumAssociationsFilter::CoalescingRefineBy },
               api_name: :coalescingRefineBy

      # @!attribute filter_type
      #
      #   @return [Symbol, HubspotSDK::Models::PublicNumAssociationsFilter::FilterType]
      required :filter_type,
               enum: -> { HubspotSDK::PublicNumAssociationsFilter::FilterType },
               api_name: :filterType

      # @!method initialize(association_category:, association_type_id:, coalescing_refine_by:, filter_type:)
      #   @param association_category [String]
      #   @param association_type_id [Integer]
      #   @param coalescing_refine_by [HubspotSDK::Models::PublicNumOccurrencesRefineBy, HubspotSDK::Models::PublicSetOccurrencesRefineBy, HubspotSDK::Models::PublicRelativeComparativeTimestampRefineBy, HubspotSDK::Models::PublicRelativeRangedTimestampRefineBy, HubspotSDK::Models::PublicAbsoluteComparativeTimestampRefineBy, HubspotSDK::Models::PublicAbsoluteRangedTimestampRefineBy, HubspotSDK::Models::PublicAllHistoryRefineBy, HubspotSDK::Models::PublicTimePointOperation, HubspotSDK::Models::PublicRangedTimeOperation]
      #   @param filter_type [Symbol, HubspotSDK::Models::PublicNumAssociationsFilter::FilterType]

      # @see HubspotSDK::Models::PublicNumAssociationsFilter#coalescing_refine_by
      module CoalescingRefineBy
        extend HubspotSDK::Internal::Type::Union

        variant -> { HubspotSDK::PublicNumOccurrencesRefineBy }

        variant -> { HubspotSDK::PublicSetOccurrencesRefineBy }

        variant -> { HubspotSDK::PublicRelativeComparativeTimestampRefineBy }

        variant -> { HubspotSDK::PublicRelativeRangedTimestampRefineBy }

        variant -> { HubspotSDK::PublicAbsoluteComparativeTimestampRefineBy }

        variant -> { HubspotSDK::PublicAbsoluteRangedTimestampRefineBy }

        variant -> { HubspotSDK::PublicAllHistoryRefineBy }

        variant -> { HubspotSDK::PublicTimePointOperation }

        variant -> { HubspotSDK::PublicRangedTimeOperation }

        # @!method self.variants
        #   @return [Array(HubspotSDK::Models::PublicNumOccurrencesRefineBy, HubspotSDK::Models::PublicSetOccurrencesRefineBy, HubspotSDK::Models::PublicRelativeComparativeTimestampRefineBy, HubspotSDK::Models::PublicRelativeRangedTimestampRefineBy, HubspotSDK::Models::PublicAbsoluteComparativeTimestampRefineBy, HubspotSDK::Models::PublicAbsoluteRangedTimestampRefineBy, HubspotSDK::Models::PublicAllHistoryRefineBy, HubspotSDK::Models::PublicTimePointOperation, HubspotSDK::Models::PublicRangedTimeOperation)]
      end

      # @see HubspotSDK::Models::PublicNumAssociationsFilter#filter_type
      module FilterType
        extend HubspotSDK::Internal::Type::Enum

        NUM_ASSOCIATIONS = :NUM_ASSOCIATIONS

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
