# frozen_string_literal: true

module HubspotSDK
  module Models
    class PublicAssociationInListFilter < HubspotSDK::Internal::Type::BaseModel
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
               union: -> { HubspotSDK::PublicAssociationInListFilter::CoalescingRefineBy },
               api_name: :coalescingRefineBy

      # @!attribute filter_type
      #
      #   @return [Symbol, HubspotSDK::Models::PublicAssociationInListFilter::FilterType]
      required :filter_type,
               enum: -> { HubspotSDK::PublicAssociationInListFilter::FilterType },
               api_name: :filterType

      # @!attribute list_id
      #
      #   @return [String]
      required :list_id, String, api_name: :listId

      # @!attribute operator
      #
      #   @return [String]
      required :operator, String

      # @!attribute to_object_type
      #
      #   @return [String, nil]
      optional :to_object_type, String, api_name: :toObjectType

      # @!attribute to_object_type_id
      #
      #   @return [String, nil]
      optional :to_object_type_id, String, api_name: :toObjectTypeId

      # @!method initialize(association_category:, association_type_id:, coalescing_refine_by:, filter_type:, list_id:, operator:, to_object_type: nil, to_object_type_id: nil)
      #   @param association_category [String]
      #   @param association_type_id [Integer]
      #   @param coalescing_refine_by [HubspotSDK::Models::PublicNumOccurrencesRefineBy, HubspotSDK::Models::PublicSetOccurrencesRefineBy, HubspotSDK::Models::PublicRelativeComparativeTimestampRefineBy, HubspotSDK::Models::PublicRelativeRangedTimestampRefineBy, HubspotSDK::Models::PublicAbsoluteComparativeTimestampRefineBy, HubspotSDK::Models::PublicAbsoluteRangedTimestampRefineBy, HubspotSDK::Models::PublicAllHistoryRefineBy, HubspotSDK::Models::PublicTimePointOperation, HubspotSDK::Models::PublicRangedTimeOperation]
      #   @param filter_type [Symbol, HubspotSDK::Models::PublicAssociationInListFilter::FilterType]
      #   @param list_id [String]
      #   @param operator [String]
      #   @param to_object_type [String]
      #   @param to_object_type_id [String]

      # @see HubspotSDK::Models::PublicAssociationInListFilter#coalescing_refine_by
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

      # @see HubspotSDK::Models::PublicAssociationInListFilter#filter_type
      module FilterType
        extend HubspotSDK::Internal::Type::Enum

        ASSOCIATION = :ASSOCIATION

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
