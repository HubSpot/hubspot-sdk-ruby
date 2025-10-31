# frozen_string_literal: true

module HubspotSDK
  module Models
    class PublicPropertyAssociationInListFilter < HubspotSDK::Internal::Type::BaseModel
      # @!attribute coalescing_refine_by
      #
      #   @return [HubspotSDK::Models::PublicNumOccurrencesRefineBy, HubspotSDK::Models::PublicSetOccurrencesRefineBy, HubspotSDK::Models::PublicRelativeComparativeTimestampRefineBy, HubspotSDK::Models::PublicRelativeRangedTimestampRefineBy, HubspotSDK::Models::PublicAbsoluteComparativeTimestampRefineBy, HubspotSDK::Models::PublicAbsoluteRangedTimestampRefineBy, HubspotSDK::Models::PublicAllHistoryRefineBy, HubspotSDK::Models::PublicTimePointOperation, HubspotSDK::Models::PublicRangedTimeOperation]
      required :coalescing_refine_by,
               union: -> { HubspotSDK::PublicPropertyAssociationInListFilter::CoalescingRefineBy },
               api_name: :coalescingRefineBy

      # @!attribute filter_type
      #
      #   @return [Symbol, HubspotSDK::Models::PublicPropertyAssociationInListFilter::FilterType]
      required :filter_type,
               enum: -> { HubspotSDK::PublicPropertyAssociationInListFilter::FilterType },
               api_name: :filterType

      # @!attribute list_id
      #
      #   @return [String]
      required :list_id, String, api_name: :listId

      # @!attribute operator
      #
      #   @return [String]
      required :operator, String

      # @!attribute property_with_object_id
      #
      #   @return [String]
      required :property_with_object_id, String, api_name: :propertyWithObjectId

      # @!attribute to_object_type_id
      #
      #   @return [String, nil]
      optional :to_object_type_id, String, api_name: :toObjectTypeId

      # @!method initialize(coalescing_refine_by:, filter_type:, list_id:, operator:, property_with_object_id:, to_object_type_id: nil)
      #   @param coalescing_refine_by [HubspotSDK::Models::PublicNumOccurrencesRefineBy, HubspotSDK::Models::PublicSetOccurrencesRefineBy, HubspotSDK::Models::PublicRelativeComparativeTimestampRefineBy, HubspotSDK::Models::PublicRelativeRangedTimestampRefineBy, HubspotSDK::Models::PublicAbsoluteComparativeTimestampRefineBy, HubspotSDK::Models::PublicAbsoluteRangedTimestampRefineBy, HubspotSDK::Models::PublicAllHistoryRefineBy, HubspotSDK::Models::PublicTimePointOperation, HubspotSDK::Models::PublicRangedTimeOperation]
      #   @param filter_type [Symbol, HubspotSDK::Models::PublicPropertyAssociationInListFilter::FilterType]
      #   @param list_id [String]
      #   @param operator [String]
      #   @param property_with_object_id [String]
      #   @param to_object_type_id [String]

      # @see HubspotSDK::Models::PublicPropertyAssociationInListFilter#coalescing_refine_by
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

      # @see HubspotSDK::Models::PublicPropertyAssociationInListFilter#filter_type
      module FilterType
        extend HubspotSDK::Internal::Type::Enum

        PROPERTY_ASSOCIATION = :PROPERTY_ASSOCIATION

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
