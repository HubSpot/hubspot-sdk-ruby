# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PublicObjectList < HubspotSDK::Internal::Type::BaseModel
        # @!attribute list_id
        #   The **ILS ID** of the list.
        #
        #   @return [String]
        required :list_id, String, api_name: :listId

        # @!attribute list_version
        #   The version of the list.
        #
        #   @return [Integer]
        required :list_version, Integer, api_name: :listVersion

        # @!attribute name
        #   The name of the list.
        #
        #   @return [String]
        required :name, String

        # @!attribute object_type_id
        #   The object type of the list.
        #
        #   @return [String]
        required :object_type_id, String, api_name: :objectTypeId

        # @!attribute processing_status
        #   The processing status of the list.
        #
        #   @return [String]
        required :processing_status, String, api_name: :processingStatus

        # @!attribute processing_type
        #   The processing type of the list.
        #
        #   @return [String]
        required :processing_type, String, api_name: :processingType

        # @!attribute created_at
        #   The time when the list was created.
        #
        #   @return [Time, nil]
        optional :created_at, Time, api_name: :createdAt

        # @!attribute created_by_id
        #   The ID of the user that created the list.
        #
        #   @return [String, nil]
        optional :created_by_id, String, api_name: :createdById

        # @!attribute deleted_at
        #   The time when the list was deleted.
        #
        #   @return [Time, nil]
        optional :deleted_at, Time, api_name: :deletedAt

        # @!attribute filter_branch
        #   Defines the filter criteria for the list, allowing for complex logical
        #   operations and nested filter branches to determine list membership.
        #
        #   @return [HubspotSDK::Models::Crm::PublicOrFilterBranch, HubspotSDK::Models::Crm::PublicAndFilterBranch, HubspotSDK::Models::Crm::PublicNotAllFilterBranch, HubspotSDK::Models::Crm::PublicNotAnyFilterBranch, HubspotSDK::Models::Crm::PublicRestrictedFilterBranch, HubspotSDK::Models::Crm::PublicUnifiedEventsFilterBranch, HubspotSDK::Models::Crm::PublicPropertyAssociationFilterBranch, HubspotSDK::Models::Crm::PublicAssociationFilterBranch, nil]
        optional :filter_branch,
                 union: -> { HubspotSDK::Crm::PublicObjectList::FilterBranch },
                 api_name: :filterBranch

        # @!attribute filters_updated_at
        #   The time when the filters for this list were last updated.
        #
        #   @return [Time, nil]
        optional :filters_updated_at, Time, api_name: :filtersUpdatedAt

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

        # @!attribute size
        #   Size of the list
        #
        #   @return [Integer, nil]
        optional :size, Integer

        # @!attribute updated_at
        #   The time the list was last updated.
        #
        #   @return [Time, nil]
        optional :updated_at, Time, api_name: :updatedAt

        # @!attribute updated_by_id
        #   The ID of the user that last updated the list.
        #
        #   @return [String, nil]
        optional :updated_by_id, String, api_name: :updatedById

        # @!method initialize(list_id:, list_version:, name:, object_type_id:, processing_status:, processing_type:, created_at: nil, created_by_id: nil, deleted_at: nil, filter_branch: nil, filters_updated_at: nil, list_permissions: nil, membership_settings: nil, size: nil, updated_at: nil, updated_by_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Crm::PublicObjectList} for more details.
        #
        #   @param list_id [String] The **ILS ID** of the list.
        #
        #   @param list_version [Integer] The version of the list.
        #
        #   @param name [String] The name of the list.
        #
        #   @param object_type_id [String] The object type of the list.
        #
        #   @param processing_status [String] The processing status of the list.
        #
        #   @param processing_type [String] The processing type of the list.
        #
        #   @param created_at [Time] The time when the list was created.
        #
        #   @param created_by_id [String] The ID of the user that created the list.
        #
        #   @param deleted_at [Time] The time when the list was deleted.
        #
        #   @param filter_branch [HubspotSDK::Models::Crm::PublicOrFilterBranch, HubspotSDK::Models::Crm::PublicAndFilterBranch, HubspotSDK::Models::Crm::PublicNotAllFilterBranch, HubspotSDK::Models::Crm::PublicNotAnyFilterBranch, HubspotSDK::Models::Crm::PublicRestrictedFilterBranch, HubspotSDK::Models::Crm::PublicUnifiedEventsFilterBranch, HubspotSDK::Models::Crm::PublicPropertyAssociationFilterBranch, HubspotSDK::Models::Crm::PublicAssociationFilterBranch] Defines the filter criteria for the list, allowing for complex logical operation
        #
        #   @param filters_updated_at [Time] The time when the filters for this list were last updated.
        #
        #   @param list_permissions [HubspotSDK::Models::Crm::PublicListPermissions]
        #
        #   @param membership_settings [HubspotSDK::Models::Crm::PublicMembershipSettings]
        #
        #   @param size [Integer] Size of the list
        #
        #   @param updated_at [Time] The time the list was last updated.
        #
        #   @param updated_by_id [String] The ID of the user that last updated the list.

        # Defines the filter criteria for the list, allowing for complex logical
        # operations and nested filter branches to determine list membership.
        #
        # @see HubspotSDK::Models::Crm::PublicObjectList#filter_branch
        module FilterBranch
          extend HubspotSDK::Internal::Type::Union

          variant -> { HubspotSDK::Crm::PublicOrFilterBranch }

          variant -> { HubspotSDK::Crm::PublicAndFilterBranch }

          variant -> { HubspotSDK::Crm::PublicNotAllFilterBranch }

          variant -> { HubspotSDK::Crm::PublicNotAnyFilterBranch }

          variant -> { HubspotSDK::Crm::PublicRestrictedFilterBranch }

          variant -> { HubspotSDK::Crm::PublicUnifiedEventsFilterBranch }

          variant -> { HubspotSDK::Crm::PublicPropertyAssociationFilterBranch }

          variant -> { HubspotSDK::Crm::PublicAssociationFilterBranch }

          # @!method self.variants
          #   @return [Array(HubspotSDK::Models::Crm::PublicOrFilterBranch, HubspotSDK::Models::Crm::PublicAndFilterBranch, HubspotSDK::Models::Crm::PublicNotAllFilterBranch, HubspotSDK::Models::Crm::PublicNotAnyFilterBranch, HubspotSDK::Models::Crm::PublicRestrictedFilterBranch, HubspotSDK::Models::Crm::PublicUnifiedEventsFilterBranch, HubspotSDK::Models::Crm::PublicPropertyAssociationFilterBranch, HubspotSDK::Models::Crm::PublicAssociationFilterBranch)]
        end
      end
    end
  end
end
