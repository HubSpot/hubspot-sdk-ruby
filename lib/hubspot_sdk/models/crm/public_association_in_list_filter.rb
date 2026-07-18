# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class PublicAssociationInListFilter < HubSpotSDK::Internal::Type::BaseModel
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
        #   @return [HubSpotSDK::Models::Crm::PublicNumOccurrencesRefineBy, HubSpotSDK::Models::Crm::PublicSetOccurrencesRefineBy, HubSpotSDK::Models::Crm::PublicRelativeComparativeTimestampRefineBy, HubSpotSDK::Models::Crm::PublicRelativeRangedTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAbsoluteComparativeTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAbsoluteRangedTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAllHistoryRefineBy, HubSpotSDK::Models::Crm::PublicRangedTimeOperation, HubSpotSDK::Models::Crm::PublicTimePointOperation]
        required :coalescing_refine_by,
                 union: -> { HubSpotSDK::Crm::PublicAssociationInListFilter::CoalescingRefineBy },
                 api_name: :coalescingRefineBy

        # @!attribute filter_type
        #   Indicates the type of filter being applied, which is 'ASSOCIATION' by default.
        #
        #   @return [Symbol, HubSpotSDK::Models::Crm::PublicAssociationInListFilter::FilterType]
        required :filter_type,
                 enum: -> { HubSpotSDK::Crm::PublicAssociationInListFilter::FilterType },
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
        #   {HubSpotSDK::Models::Crm::PublicAssociationInListFilter} for more details.
        #
        #   @param association_category [String] Defines the category of the association, such as (HUBSPOT_DEFINED, USER_DEFINED,
        #
        #   @param association_type_id [Integer] The ID representing the type of association being filtered.
        #
        #   @param coalescing_refine_by [HubSpotSDK::Models::Crm::PublicNumOccurrencesRefineBy, HubSpotSDK::Models::Crm::PublicSetOccurrencesRefineBy, HubSpotSDK::Models::Crm::PublicRelativeComparativeTimestampRefineBy, HubSpotSDK::Models::Crm::PublicRelativeRangedTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAbsoluteComparativeTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAbsoluteRangedTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAllHistoryRefineBy, HubSpotSDK::Models::Crm::PublicRangedTimeOperation, HubSpotSDK::Models::Crm::PublicTimePointOperation] Specifies the criteria for refining the association filter.
        #
        #   @param filter_type [Symbol, HubSpotSDK::Models::Crm::PublicAssociationInListFilter::FilterType] Indicates the type of filter being applied, which is 'ASSOCIATION' by default.
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
        # @see HubSpotSDK::Models::Crm::PublicAssociationInListFilter#coalescing_refine_by
        module CoalescingRefineBy
          extend HubSpotSDK::Internal::Type::Union

          discriminator :type

          variant :NUM_OCCURRENCES, -> { HubSpotSDK::Crm::PublicNumOccurrencesRefineBy }

          variant :SET_OCCURRENCES, -> { HubSpotSDK::Crm::PublicSetOccurrencesRefineBy }

          variant :RELATIVE_COMPARATIVE, -> { HubSpotSDK::Crm::PublicRelativeComparativeTimestampRefineBy }

          variant :RELATIVE_RANGED, -> { HubSpotSDK::Crm::PublicRelativeRangedTimestampRefineBy }

          variant :ABSOLUTE_COMPARATIVE, -> { HubSpotSDK::Crm::PublicAbsoluteComparativeTimestampRefineBy }

          variant :ABSOLUTE_RANGED, -> { HubSpotSDK::Crm::PublicAbsoluteRangedTimestampRefineBy }

          variant :ALL_HISTORY, -> { HubSpotSDK::Crm::PublicAllHistoryRefineBy }

          variant :TIME_RANGED, -> { HubSpotSDK::Crm::PublicRangedTimeOperation }

          variant -> { HubSpotSDK::Crm::PublicTimePointOperation }

          # @!method self.variants
          #   @return [Array(HubSpotSDK::Models::Crm::PublicNumOccurrencesRefineBy, HubSpotSDK::Models::Crm::PublicSetOccurrencesRefineBy, HubSpotSDK::Models::Crm::PublicRelativeComparativeTimestampRefineBy, HubSpotSDK::Models::Crm::PublicRelativeRangedTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAbsoluteComparativeTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAbsoluteRangedTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAllHistoryRefineBy, HubSpotSDK::Models::Crm::PublicRangedTimeOperation, HubSpotSDK::Models::Crm::PublicTimePointOperation)]
        end

        # Indicates the type of filter being applied, which is 'ASSOCIATION' by default.
        #
        # @see HubSpotSDK::Models::Crm::PublicAssociationInListFilter#filter_type
        module FilterType
          extend HubSpotSDK::Internal::Type::Enum

          ASSOCIATION = :ASSOCIATION

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
