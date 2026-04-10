# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class PublicPropertyAssociationInListFilter < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute coalescing_refine_by
        #   Specifies the criteria for refining the filter by coalescing.
        #
        #   @return [HubSpotSDK::Models::Crm::PublicNumOccurrencesRefineBy, HubSpotSDK::Models::Crm::PublicSetOccurrencesRefineBy, HubSpotSDK::Models::Crm::PublicRelativeComparativeTimestampRefineBy, HubSpotSDK::Models::Crm::PublicRelativeRangedTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAbsoluteComparativeTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAbsoluteRangedTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAllHistoryRefineBy, HubSpotSDK::Models::Crm::PublicTimePointOperation, HubSpotSDK::Models::Crm::PublicRangedTimeOperation]
        required :coalescing_refine_by,
                 union: -> { HubSpotSDK::Crm::PublicPropertyAssociationInListFilter::CoalescingRefineBy },
                 api_name: :coalescingRefineBy

        # @!attribute filter_type
        #   Indicates the type of filter being applied (PROPERTY_ASSOCIATION).
        #
        #   @return [Symbol, HubSpotSDK::Models::Crm::PublicPropertyAssociationInListFilter::FilterType]
        required :filter_type,
                 enum: -> { HubSpotSDK::Crm::PublicPropertyAssociationInListFilter::FilterType },
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
        #   {HubSpotSDK::Models::Crm::PublicPropertyAssociationInListFilter} for more
        #   details.
        #
        #   @param coalescing_refine_by [HubSpotSDK::Models::Crm::PublicNumOccurrencesRefineBy, HubSpotSDK::Models::Crm::PublicSetOccurrencesRefineBy, HubSpotSDK::Models::Crm::PublicRelativeComparativeTimestampRefineBy, HubSpotSDK::Models::Crm::PublicRelativeRangedTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAbsoluteComparativeTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAbsoluteRangedTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAllHistoryRefineBy, HubSpotSDK::Models::Crm::PublicTimePointOperation, HubSpotSDK::Models::Crm::PublicRangedTimeOperation] Specifies the criteria for refining the filter by coalescing.
        #
        #   @param filter_type [Symbol, HubSpotSDK::Models::Crm::PublicPropertyAssociationInListFilter::FilterType] Indicates the type of filter being applied (PROPERTY_ASSOCIATION).
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
        # @see HubSpotSDK::Models::Crm::PublicPropertyAssociationInListFilter#coalescing_refine_by
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

        # Indicates the type of filter being applied (PROPERTY_ASSOCIATION).
        #
        # @see HubSpotSDK::Models::Crm::PublicPropertyAssociationInListFilter#filter_type
        module FilterType
          extend HubSpotSDK::Internal::Type::Enum

          PROPERTY_ASSOCIATION = :PROPERTY_ASSOCIATION

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
