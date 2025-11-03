# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class ListCreateRequest < HubspotSDK::Internal::Type::BaseModel
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
        optional :custom_properties, HubspotSDK::Internal::Type::HashOf[String], api_name: :customProperties

        # @!attribute filter_branch
        #
        #   @return [HubspotSDK::Models::PublicOrFilterBranch, HubspotSDK::Models::PublicAndFilterBranch, HubspotSDK::Models::PublicNotAllFilterBranch, HubspotSDK::Models::PublicNotAnyFilterBranch, HubspotSDK::Models::PublicRestrictedFilterBranch, HubspotSDK::Models::PublicUnifiedEventsFilterBranch, HubspotSDK::Models::PublicPropertyAssociationFilterBranch, HubspotSDK::Models::PublicAssociationFilterBranch, nil]
        optional :filter_branch,
                 union: -> { HubspotSDK::Crm::ListCreateRequest::FilterBranch },
                 api_name: :filterBranch

        # @!attribute list_folder_id
        #   The ID of the folder that the list should be created in. If left blank, then the
        #   list will be created in the root of the list folder structure.
        #
        #   @return [Integer, nil]
        optional :list_folder_id, Integer, api_name: :listFolderId

        # @!attribute list_permissions
        #
        #   @return [HubspotSDK::Models::Crm::PublicListPermissions, nil]
        optional :list_permissions, -> { HubspotSDK::Crm::PublicListPermissions }, api_name: :listPermissions

        # @!attribute membership_settings
        #
        #   @return [HubspotSDK::Models::Crm::PublicMembershipSettings, nil]
        optional :membership_settings,
                 -> { HubspotSDK::Crm::PublicMembershipSettings },
                 api_name: :membershipSettings

        # @!method initialize(name:, object_type_id:, processing_type:, custom_properties: nil, filter_branch: nil, list_folder_id: nil, list_permissions: nil, membership_settings: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Crm::ListCreateRequest} for more details.
        #
        #   The request object used when creating a new object list.
        #
        #   @param name [String] The name of the list, which must be globally unique across all public lists in t
        #
        #   @param object_type_id [String] The object type ID of the type of objects that the list will store.
        #
        #   @param processing_type [String] The processing type of the list. One of: `SNAPSHOT`, `MANUAL`, or `DYNAMIC`.
        #
        #   @param custom_properties [Hash{Symbol=>String}] The list of custom properties to tie to the list. Custom property name is the ke
        #
        #   @param filter_branch [HubspotSDK::Models::PublicOrFilterBranch, HubspotSDK::Models::PublicAndFilterBranch, HubspotSDK::Models::PublicNotAllFilterBranch, HubspotSDK::Models::PublicNotAnyFilterBranch, HubspotSDK::Models::PublicRestrictedFilterBranch, HubspotSDK::Models::PublicUnifiedEventsFilterBranch, HubspotSDK::Models::PublicPropertyAssociationFilterBranch, HubspotSDK::Models::PublicAssociationFilterBranch]
        #
        #   @param list_folder_id [Integer] The ID of the folder that the list should be created in. If left blank, then the
        #
        #   @param list_permissions [HubspotSDK::Models::Crm::PublicListPermissions]
        #
        #   @param membership_settings [HubspotSDK::Models::Crm::PublicMembershipSettings]

        # @see HubspotSDK::Models::Crm::ListCreateRequest#filter_branch
        module FilterBranch
          extend HubspotSDK::Internal::Type::Union

          variant -> { HubspotSDK::PublicOrFilterBranch }

          variant -> { HubspotSDK::PublicAndFilterBranch }

          variant -> { HubspotSDK::PublicNotAllFilterBranch }

          variant -> { HubspotSDK::PublicNotAnyFilterBranch }

          variant -> { HubspotSDK::PublicRestrictedFilterBranch }

          variant -> { HubspotSDK::PublicUnifiedEventsFilterBranch }

          variant -> { HubspotSDK::PublicPropertyAssociationFilterBranch }

          variant -> { HubspotSDK::PublicAssociationFilterBranch }

          # @!method self.variants
          #   @return [Array(HubspotSDK::Models::PublicOrFilterBranch, HubspotSDK::Models::PublicAndFilterBranch, HubspotSDK::Models::PublicNotAllFilterBranch, HubspotSDK::Models::PublicNotAnyFilterBranch, HubspotSDK::Models::PublicRestrictedFilterBranch, HubspotSDK::Models::PublicUnifiedEventsFilterBranch, HubspotSDK::Models::PublicPropertyAssociationFilterBranch, HubspotSDK::Models::PublicAssociationFilterBranch)]
        end
      end
    end
  end
end
