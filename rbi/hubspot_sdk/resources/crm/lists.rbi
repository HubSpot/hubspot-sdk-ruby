# typed: strong

module HubSpotSDK
  module Resources
    class Crm
      class Lists
        sig do
          params(
            name: String,
            object_type_id: String,
            processing_type: String,
            custom_properties: T::Hash[Symbol, String],
            filter_branch:
              T.any(
                HubSpotSDK::Crm::PublicOrFilterBranch::OrHash,
                HubSpotSDK::Crm::PublicAndFilterBranch::OrHash,
                HubSpotSDK::Crm::PublicNotAllFilterBranch::OrHash,
                HubSpotSDK::Crm::PublicNotAnyFilterBranch::OrHash,
                HubSpotSDK::Crm::PublicRestrictedFilterBranch::OrHash,
                HubSpotSDK::Crm::PublicUnifiedEventsFilterBranch::OrHash,
                HubSpotSDK::Crm::PublicPropertyAssociationFilterBranch::OrHash,
                HubSpotSDK::Crm::PublicAssociationFilterBranch::OrHash
              ),
            list_folder_id: Integer,
            list_permissions: HubSpotSDK::Crm::PublicListPermissions::OrHash,
            membership_settings:
              HubSpotSDK::Crm::PublicMembershipSettings::OrHash,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Crm::ListCreateResponse)
        end
        def create(
          # The name of the list, which must be globally unique across all public lists in
          # the portal.
          name:,
          # The object type ID of the type of objects that the list will store.
          object_type_id:,
          # The processing type of the list. One of: `SNAPSHOT`, `MANUAL`, or `DYNAMIC`.
          processing_type:,
          # The list of custom properties to tie to the list. Custom property name is the
          # key, the value is the value.
          custom_properties: nil,
          # Filter branch object containing filtering criteria for the list
          filter_branch: nil,
          # The ID of the folder that the list should be created in. If left blank, then the
          # list will be created in the root of the list folder structure.
          list_folder_id: nil,
          list_permissions: nil,
          membership_settings: nil,
          request_options: {}
        )
        end

        sig do
          params(
            include_filters: T::Boolean,
            list_ids: T::Array[String],
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Crm::ListsByIDResponse)
        end
        def list(include_filters: nil, list_ids: nil, request_options: {})
        end

        sig do
          params(
            list_id: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).void
        end
        def delete(list_id, request_options: {})
        end

        sig do
          params(
            list_id: String,
            record_ids_to_add: T::Array[String],
            record_ids_to_remove: T::Array[String],
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Crm::MembershipsUpdateResponse)
        end
        def add_and_remove_memberships(
          list_id,
          record_ids_to_add:,
          record_ids_to_remove:,
          request_options: {}
        )
        end

        sig do
          params(
            list_id: String,
            body: T::Array[String],
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Crm::MembershipsUpdateResponse)
        end
        def add_memberships(list_id, body:, request_options: {})
        end

        sig do
          params(
            source_list_id: String,
            list_id: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).void
        end
        def add_memberships_from(source_list_id, list_id:, request_options: {})
        end

        sig do
          params(
            inputs: T::Array[HubSpotSDK::Crm::RecordIDInput::OrHash],
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Crm::BatchResponseRecordIDWithMemberships)
        end
        def batch_read_memberships(inputs:, request_options: {})
        end

        sig do
          params(
            name: String,
            parent_folder_id: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Crm::ListFolderCreateResponse)
        end
        def create_folder(
          # The name of the folder to be created.
          name:,
          # The folder this should be created in, if not specified will be created in the
          # root folder 0.
          parent_folder_id: nil,
          request_options: {}
        )
        end

        sig do
          params(
            body: T::Array[String],
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Crm::PublicBatchMigrationMapping)
        end
        def create_id_mapping(body:, request_options: {})
        end

        sig do
          params(
            folder_id: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).void
        end
        def delete_folder(folder_id, request_options: {})
        end

        sig do
          params(
            list_id: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).void
        end
        def delete_memberships(list_id, request_options: {})
        end

        sig do
          params(
            list_id: String,
            include_filters: T::Boolean,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Crm::ListFetchResponse)
        end
        def get(list_id, include_filters: nil, request_options: {})
        end

        sig do
          params(
            list_name: String,
            object_type_id: String,
            include_filters: T::Boolean,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Crm::ListFetchResponse)
        end
        def get_by_object_type_and_name(
          # Path param
          list_name,
          # Path param
          object_type_id:,
          # Query param
          include_filters: nil,
          request_options: {}
        )
        end

        sig do
          params(
            legacy_list_id: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Crm::PublicMigrationMapping)
        end
        def get_id_mapping(legacy_list_id: nil, request_options: {})
        end

        sig do
          params(
            list_id: String,
            after: String,
            before: String,
            limit: Integer,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(
            HubSpotSDK::Internal::Page[HubSpotSDK::Crm::JoinTimeAndRecordID]
          )
        end
        def get_memberships_join_order(
          list_id,
          # The paging cursor token of the last successfully read resource will be returned
          # as the `paging.next.after` JSON property of a paged response containing more
          # results.
          after: nil,
          before: nil,
          # The maximum number of results to display per page.
          limit: nil,
          request_options: {}
        )
        end

        sig do
          params(
            record_id: String,
            object_type_id: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Crm::APICollectionResponseRecordListMembership)
        end
        def get_record_memberships(
          record_id,
          object_type_id:,
          request_options: {}
        )
        end

        sig do
          params(
            list_id: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Crm::PublicListConversionResponse)
        end
        def get_schedule_conversion(list_id, request_options: {})
        end

        sig do
          params(
            list_id: String,
            end_date: String,
            start_date: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Crm::ListSizeAndEditHistoryResponse)
        end
        def get_size_and_edits_history_between(
          list_id,
          end_date: nil,
          start_date: nil,
          request_options: {}
        )
        end

        sig do
          params(
            list_ids: T::Array[String],
            offset: Integer,
            processing_types: T::Array[String],
            additional_filter_properties: T::Array[String],
            count: Integer,
            object_type_id: String,
            query: String,
            sort: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Crm::ListSearchResponse)
        end
        def list_by_search(
          # ILS list ids to be included in search results. If not specified, all lists
          # matching other criteria will be included
          list_ids:,
          # Value used to paginate through lists. The `offset` provided in the response can
          # be used in the next request to fetch the next page of results. Defaults to `0`
          # if no offset is provided.
          offset:,
          # List processing types to be included in search results. If not specified, all
          # lists with all processing types will be included.
          processing_types:,
          # The property names of any additional list properties to include in the response.
          # Properties that do not exist or that are empty for a particular list are not
          # included in the response.
          #
          # By default, all requests will fetch the following properties for each list:
          # `hs_list_size`, `hs_last_record_added_at`, `hs_last_record_removed_at`,
          # `hs_folder_name`, and `hs_list_reference_count`.
          additional_filter_properties: nil,
          # The number of lists to include in the response. Defaults to `20` if no value is
          # provided. The max `count` is `500`.
          count: nil,
          object_type_id: nil,
          # The `query` that will be used to search for lists by list name. If no `query` is
          # provided, then the results will include all lists.
          query: nil,
          # Sort field and order
          sort: nil,
          request_options: {}
        )
        end

        sig do
          params(
            folder_id: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Crm::ListFolderFetchResponse)
        end
        def list_folders(folder_id: nil, request_options: {})
        end

        sig do
          params(
            list_id: String,
            after: String,
            before: String,
            limit: Integer,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(
            HubSpotSDK::Internal::Page[HubSpotSDK::Crm::JoinTimeAndRecordID]
          )
        end
        def list_memberships(
          list_id,
          # The paging cursor token of the last successfully read resource will be returned
          # as the `paging.next.after` JSON property of a paged response containing more
          # results.
          after: nil,
          before: nil,
          # The maximum number of results to display per page.
          limit: nil,
          request_options: {}
        )
        end

        sig do
          params(
            new_parent_folder_id: String,
            folder_id: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Crm::ListFolderFetchResponse)
        end
        def move_folder(new_parent_folder_id, folder_id:, request_options: {})
        end

        sig do
          params(
            list_id: String,
            new_folder_id: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).void
        end
        def move_list(
          # The Id of the list to move.
          list_id:,
          # The Id of folder to move the list to, the root folder is Id 0.
          new_folder_id:,
          request_options: {}
        )
        end

        sig do
          params(
            list_id: String,
            body: T::Array[String],
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Crm::MembershipsUpdateResponse)
        end
        def remove_memberships(list_id, body:, request_options: {})
        end

        sig do
          params(
            folder_id: String,
            new_folder_name: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Crm::ListFolderFetchResponse)
        end
        def rename_folder(folder_id, new_folder_name: nil, request_options: {})
        end

        sig do
          params(
            list_id: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).void
        end
        def restore(list_id, request_options: {})
        end

        sig do
          params(
            list_id: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).void
        end
        def schedule_conversion(list_id, request_options: {})
        end

        sig do
          params(
            list_id: String,
            filter_branch:
              T.any(
                HubSpotSDK::Crm::PublicOrFilterBranch::OrHash,
                HubSpotSDK::Crm::PublicAndFilterBranch::OrHash,
                HubSpotSDK::Crm::PublicNotAllFilterBranch::OrHash,
                HubSpotSDK::Crm::PublicNotAnyFilterBranch::OrHash,
                HubSpotSDK::Crm::PublicRestrictedFilterBranch::OrHash,
                HubSpotSDK::Crm::PublicUnifiedEventsFilterBranch::OrHash,
                HubSpotSDK::Crm::PublicPropertyAssociationFilterBranch::OrHash,
                HubSpotSDK::Crm::PublicAssociationFilterBranch::OrHash
              ),
            enroll_objects_in_workflows: T::Boolean,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Crm::ListUpdateResponse)
        end
        def update_list_filters(
          # Path param
          list_id,
          # Body param: Updated filtering criteria for the list
          filter_branch:,
          # Query param
          enroll_objects_in_workflows: nil,
          request_options: {}
        )
        end

        sig do
          params(
            list_id: String,
            include_filters: T::Boolean,
            list_name: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Crm::ListUpdateResponse)
        end
        def update_list_name(
          list_id,
          include_filters: nil,
          list_name: nil,
          request_options: {}
        )
        end

        sig do
          params(
            list_id: String,
            public_list_conversion_time:
              T.any(
                HubSpotSDK::Crm::PublicListConversionDate::OrHash,
                HubSpotSDK::Crm::PublicListConversionInactivity::OrHash
              ),
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Crm::PublicListConversionResponse)
        end
        def update_schedule_conversion(
          list_id,
          public_list_conversion_time:,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: HubSpotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
