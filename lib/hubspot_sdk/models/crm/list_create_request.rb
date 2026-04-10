# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class ListCreateRequest < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute name
        #   The name of the list, which must be globally unique across all public lists in
        #   the portal.
        #
        #   @return [String]
        required :name, String

        # @!attribute object_type_id
        #   The object type ID of the type of objects that the list will store.
        #
        #   @return [String]
        required :object_type_id, String, api_name: :objectTypeId

        # @!attribute processing_type
        #   The processing type of the list. One of: `SNAPSHOT`, `MANUAL`, or `DYNAMIC`.
        #
        #   @return [String]
        required :processing_type, String, api_name: :processingType

        # @!attribute custom_properties
        #   The list of custom properties to tie to the list. Custom property name is the
        #   key, the value is the value.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :custom_properties, HubSpotSDK::Internal::Type::HashOf[String], api_name: :customProperties

        # @!attribute filter_branch
        #   Filter branch object containing filtering criteria for the list
        #
        #   @return [HubSpotSDK::Models::Crm::PublicOrFilterBranch, HubSpotSDK::Models::Crm::PublicAndFilterBranch, HubSpotSDK::Models::Crm::PublicNotAllFilterBranch, HubSpotSDK::Models::Crm::PublicNotAnyFilterBranch, HubSpotSDK::Models::Crm::PublicRestrictedFilterBranch, HubSpotSDK::Models::Crm::PublicUnifiedEventsFilterBranch, HubSpotSDK::Models::Crm::PublicPropertyAssociationFilterBranch, HubSpotSDK::Models::Crm::PublicAssociationFilterBranch, nil]
        optional :filter_branch,
                 union: -> { HubSpotSDK::Crm::ListCreateRequest::FilterBranch },
                 api_name: :filterBranch

        # @!attribute list_folder_id
        #   The ID of the folder that the list should be created in. If left blank, then the
        #   list will be created in the root of the list folder structure.
        #
        #   @return [Integer, nil]
        optional :list_folder_id, Integer, api_name: :listFolderId

        # @!attribute list_permissions
        #
        #   @return [HubSpotSDK::Models::Crm::PublicListPermissions, nil]
        optional :list_permissions, -> { HubSpotSDK::Crm::PublicListPermissions }, api_name: :listPermissions

        # @!attribute membership_settings
        #
        #   @return [HubSpotSDK::Models::Crm::PublicMembershipSettings, nil]
        optional :membership_settings,
                 -> { HubSpotSDK::Crm::PublicMembershipSettings },
                 api_name: :membershipSettings

        # @!method initialize(name:, object_type_id:, processing_type:, custom_properties: nil, filter_branch: nil, list_folder_id: nil, list_permissions: nil, membership_settings: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Crm::ListCreateRequest} for more details.
        #
        #   @param name [String] The name of the list, which must be globally unique across all public lists in t
        #
        #   @param object_type_id [String] The object type ID of the type of objects that the list will store.
        #
        #   @param processing_type [String] The processing type of the list. One of: `SNAPSHOT`, `MANUAL`, or `DYNAMIC`.
        #
        #   @param custom_properties [Hash{Symbol=>String}] The list of custom properties to tie to the list. Custom property name is the ke
        #
        #   @param filter_branch [HubSpotSDK::Models::Crm::PublicOrFilterBranch, HubSpotSDK::Models::Crm::PublicAndFilterBranch, HubSpotSDK::Models::Crm::PublicNotAllFilterBranch, HubSpotSDK::Models::Crm::PublicNotAnyFilterBranch, HubSpotSDK::Models::Crm::PublicRestrictedFilterBranch, HubSpotSDK::Models::Crm::PublicUnifiedEventsFilterBranch, HubSpotSDK::Models::Crm::PublicPropertyAssociationFilterBranch, HubSpotSDK::Models::Crm::PublicAssociationFilterBranch] Filter branch object containing filtering criteria for the list
        #
        #   @param list_folder_id [Integer] The ID of the folder that the list should be created in. If left blank, then the
        #
        #   @param list_permissions [HubSpotSDK::Models::Crm::PublicListPermissions]
        #
        #   @param membership_settings [HubSpotSDK::Models::Crm::PublicMembershipSettings]

        # Filter branch object containing filtering criteria for the list
        #
        # @see HubSpotSDK::Models::Crm::ListCreateRequest#filter_branch
        module FilterBranch
          extend HubSpotSDK::Internal::Type::Union

          discriminator :filterBranchType

          variant :OR, -> { HubSpotSDK::Crm::PublicOrFilterBranch }

          variant :AND, -> { HubSpotSDK::Crm::PublicAndFilterBranch }

          variant :NOT_ALL, -> { HubSpotSDK::Crm::PublicNotAllFilterBranch }

          variant :NOT_ANY, -> { HubSpotSDK::Crm::PublicNotAnyFilterBranch }

          variant :RESTRICTED, -> { HubSpotSDK::Crm::PublicRestrictedFilterBranch }

          variant :UNIFIED_EVENTS, -> { HubSpotSDK::Crm::PublicUnifiedEventsFilterBranch }

          variant :PROPERTY_ASSOCIATION, -> { HubSpotSDK::Crm::PublicPropertyAssociationFilterBranch }

          variant :ASSOCIATION, -> { HubSpotSDK::Crm::PublicAssociationFilterBranch }

          # @!method self.variants
          #   @return [Array(HubSpotSDK::Models::Crm::PublicOrFilterBranch, HubSpotSDK::Models::Crm::PublicAndFilterBranch, HubSpotSDK::Models::Crm::PublicNotAllFilterBranch, HubSpotSDK::Models::Crm::PublicNotAnyFilterBranch, HubSpotSDK::Models::Crm::PublicRestrictedFilterBranch, HubSpotSDK::Models::Crm::PublicUnifiedEventsFilterBranch, HubSpotSDK::Models::Crm::PublicPropertyAssociationFilterBranch, HubSpotSDK::Models::Crm::PublicAssociationFilterBranch)]
        end
      end
    end
  end
end
