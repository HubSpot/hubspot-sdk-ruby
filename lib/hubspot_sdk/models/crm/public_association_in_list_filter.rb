# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PublicAssociationInListFilter < HubspotSDK::Internal::Type::BaseModel
        # @!attribute association_category
        #   Defines the category of the association, such as (HUBSPOT_DEFINED, USER_DEFINED,
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
                 union: -> { HubspotSDK::Crm::PublicAssociationInListFilter::CoalescingRefineBy },
                 api_name: :coalescingRefineBy

        # @!attribute filter_type
        #   Indicates the type of filter being applied, which is 'ASSOCIATION' by default.
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::PublicAssociationInListFilter::FilterType]
        required :filter_type,
                 enum: -> { HubspotSDK::Crm::PublicAssociationInListFilter::FilterType },
                 api_name: :filterType

        # @!attribute list_id
        #   The ID of the list used in the association filter.
        #
        #   @return [String]
        required :list_id, String, api_name: :listId

        # @!attribute operator
        #   Specifies the operation to be performed by the filter, such as 'IN_LIST' or
        #   'NOT_IN_LIST'.
        #
        #   @return [String]
        required :operator, String

        # @!attribute to_object_type
        #   The type of object that the association filter is targeting.
        #
        #   @return [String, nil]
        optional :to_object_type, String, api_name: :toObjectType

        # @!attribute to_object_type_id
        #   The ID representing the type of object that the association filter is targeting.
        #
        #   @return [String, nil]
        optional :to_object_type_id, String, api_name: :toObjectTypeId

        # @!method initialize(association_category:, association_type_id:, coalescing_refine_by:, filter_type:, list_id:, operator:, to_object_type: nil, to_object_type_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Crm::PublicAssociationInListFilter} for more details.
        #
        #   @param association_category [String] Defines the category of the association, such as (HUBSPOT_DEFINED, USER_DEFINED,
        #
        #   @param association_type_id [Integer] The ID representing the type of association being filtered.
        #
        #   @param coalescing_refine_by [HubspotSDK::Models::Crm::PublicNumOccurrencesRefineBy, HubspotSDK::Models::Crm::PublicSetOccurrencesRefineBy, HubspotSDK::Models::Crm::PublicRelativeComparativeTimestampRefineBy, HubspotSDK::Models::Crm::PublicRelativeRangedTimestampRefineBy, HubspotSDK::Models::Crm::PublicAbsoluteComparativeTimestampRefineBy, HubspotSDK::Models::Crm::PublicAbsoluteRangedTimestampRefineBy, HubspotSDK::Models::Crm::PublicAllHistoryRefineBy, HubspotSDK::Models::Crm::PublicTimePointOperation, HubspotSDK::Models::Crm::PublicRangedTimeOperation] Specifies the criteria for refining the association filter.
        #
        #   @param filter_type [Symbol, HubspotSDK::Models::Crm::PublicAssociationInListFilter::FilterType] Indicates the type of filter being applied, which is 'ASSOCIATION' by default.
        #
        #   @param list_id [String] The ID of the list used in the association filter.
        #
        #   @param operator [String] Specifies the operation to be performed by the filter, such as 'IN_LIST' or 'NOT
        #
        #   @param to_object_type [String] The type of object that the association filter is targeting.
        #
        #   @param to_object_type_id [String] The ID representing the type of object that the association filter is targeting.

        # Specifies the criteria for refining the association filter.
        #
        # @see HubspotSDK::Models::Crm::PublicAssociationInListFilter#coalescing_refine_by
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

        # Indicates the type of filter being applied, which is 'ASSOCIATION' by default.
        #
        # @see HubspotSDK::Models::Crm::PublicAssociationInListFilter#filter_type
        module FilterType
          extend HubspotSDK::Internal::Type::Enum

          ASSOCIATION = :ASSOCIATION

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
