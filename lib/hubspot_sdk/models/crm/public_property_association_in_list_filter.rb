# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PublicPropertyAssociationInListFilter < HubspotSDK::Internal::Type::BaseModel
        # @!attribute coalescing_refine_by
        #   Specifies the criteria for refining the filter by coalescing.
        #
        #   @return [HubspotSDK::Models::Crm::PublicNumOccurrencesRefineBy, HubspotSDK::Models::Crm::PublicSetOccurrencesRefineBy, HubspotSDK::Models::Crm::PublicRelativeComparativeTimestampRefineBy, HubspotSDK::Models::Crm::PublicRelativeRangedTimestampRefineBy, HubspotSDK::Models::Crm::PublicAbsoluteComparativeTimestampRefineBy, HubspotSDK::Models::Crm::PublicAbsoluteRangedTimestampRefineBy, HubspotSDK::Models::Crm::PublicAllHistoryRefineBy, HubspotSDK::Models::Crm::PublicTimePointOperation, HubspotSDK::Models::Crm::PublicRangedTimeOperation]
        required :coalescing_refine_by,
                 union: -> { HubspotSDK::Crm::PublicPropertyAssociationInListFilter::CoalescingRefineBy },
                 api_name: :coalescingRefineBy

        # @!attribute filter_type
        #   Indicates the type of filter being applied (PROPERTY_ASSOCIATION).
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::PublicPropertyAssociationInListFilter::FilterType]
        required :filter_type,
                 enum: -> { HubspotSDK::Crm::PublicPropertyAssociationInListFilter::FilterType },
                 api_name: :filterType

        # @!attribute list_id
        #   The ID of the list used in the property association filter.
        #
        #   @return [String]
        required :list_id, String, api_name: :listId

        # @!attribute operator
        #   Defines the operation to be applied by the filter (IN_LIST, NOT_IN_LIST).
        #
        #   @return [String]
        required :operator, String

        # @!attribute property_with_object_id
        #   The property associated with the object ID in the filter.
        #
        #   @return [String]
        required :property_with_object_id, String, api_name: :propertyWithObjectId

        # @!attribute to_object_type_id
        #   The ID representing the type of object that the property association filter is
        #   targeting.
        #
        #   @return [String, nil]
        optional :to_object_type_id, String, api_name: :toObjectTypeId

        # @!method initialize(coalescing_refine_by:, filter_type:, list_id:, operator:, property_with_object_id:, to_object_type_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Crm::PublicPropertyAssociationInListFilter} for more
        #   details.
        #
        #   @param coalescing_refine_by [HubspotSDK::Models::Crm::PublicNumOccurrencesRefineBy, HubspotSDK::Models::Crm::PublicSetOccurrencesRefineBy, HubspotSDK::Models::Crm::PublicRelativeComparativeTimestampRefineBy, HubspotSDK::Models::Crm::PublicRelativeRangedTimestampRefineBy, HubspotSDK::Models::Crm::PublicAbsoluteComparativeTimestampRefineBy, HubspotSDK::Models::Crm::PublicAbsoluteRangedTimestampRefineBy, HubspotSDK::Models::Crm::PublicAllHistoryRefineBy, HubspotSDK::Models::Crm::PublicTimePointOperation, HubspotSDK::Models::Crm::PublicRangedTimeOperation] Specifies the criteria for refining the filter by coalescing.
        #
        #   @param filter_type [Symbol, HubspotSDK::Models::Crm::PublicPropertyAssociationInListFilter::FilterType] Indicates the type of filter being applied (PROPERTY_ASSOCIATION).
        #
        #   @param list_id [String] The ID of the list used in the property association filter.
        #
        #   @param operator [String] Defines the operation to be applied by the filter (IN_LIST, NOT_IN_LIST).
        #
        #   @param property_with_object_id [String] The property associated with the object ID in the filter.
        #
        #   @param to_object_type_id [String] The ID representing the type of object that the property association filter is t

        # Specifies the criteria for refining the filter by coalescing.
        #
        # @see HubspotSDK::Models::Crm::PublicPropertyAssociationInListFilter#coalescing_refine_by
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

        # Indicates the type of filter being applied (PROPERTY_ASSOCIATION).
        #
        # @see HubspotSDK::Models::Crm::PublicPropertyAssociationInListFilter#filter_type
        module FilterType
          extend HubspotSDK::Internal::Type::Enum

          PROPERTY_ASSOCIATION = :PROPERTY_ASSOCIATION

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
