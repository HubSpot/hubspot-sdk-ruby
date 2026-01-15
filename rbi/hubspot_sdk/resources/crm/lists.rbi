# typed: strong

module HubspotSDK
  module Resources
    class Crm
      class Lists
        sig { returns(HubspotSDK::Resources::Crm::Lists::Folders) }
        attr_reader :folders

        sig { returns(HubspotSDK::Resources::Crm::Lists::Mapping) }
        attr_reader :mapping

        sig { returns(HubspotSDK::Resources::Crm::Lists::Memberships) }
        attr_reader :memberships

        # Create a new list with the provided object list definition.
        sig do
          params(
            name: String,
            object_type_id: String,
            processing_type: String,
            custom_properties: T::Hash[Symbol, String],
            filter_branch:
              T.any(
                HubspotSDK::PublicOrFilterBranch::OrHash,
                HubspotSDK::PublicAndFilterBranch::OrHash,
                HubspotSDK::PublicNotAllFilterBranch::OrHash,
                HubspotSDK::PublicNotAnyFilterBranch::OrHash,
                HubspotSDK::PublicRestrictedFilterBranch::OrHash,
                HubspotSDK::PublicUnifiedEventsFilterBranch::OrHash,
                HubspotSDK::PublicPropertyAssociationFilterBranch::OrHash,
                HubspotSDK::PublicAssociationFilterBranch::OrHash
              ),
            list_folder_id: Integer,
            list_permissions: HubspotSDK::Crm::PublicListPermissions::OrHash,
            membership_settings:
              HubspotSDK::Crm::PublicMembershipSettings::OrHash,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Crm::ListCreateResponse)
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
          filter_branch: nil,
          # The ID of the folder that the list should be created in. If left blank, then the
          # list will be created in the root of the list folder structure.
          list_folder_id: nil,
          list_permissions: nil,
          membership_settings: nil,
          request_options: {}
        )
        end

        # Fetch multiple lists in a single request by **ILS list ID**. The response will
        # include the definitions of all lists that exist for the `listIds` provided.
        sig do
          params(
            include_filters: T::Boolean,
            list_ids: T::Array[String],
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Crm::ListsByIDResponse)
        end
        def list(
          # A flag indicating whether or not the response object list definitions should
          # include a filter branch definition. By default, object list definitions will not
          # have their filter branch definitions included in the response.
          include_filters: nil,
          # The **ILS IDs** of the lists to fetch.
          list_ids: nil,
          request_options: {}
        )
        end

        # Delete a list by **ILS list ID**. Lists deleted through this endpoint can be
        # restored up to 90-days following the delete. After 90-days, the list is purged
        # and can no longer be restored.
        sig do
          params(
            list_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).void
        end
        def delete(
          # The **ILS ID** of the list to delete.
          list_id,
          request_options: {}
        )
        end

        # Delete an existing scheduled conversion for a list.
        sig do
          params(
            list_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).void
        end
        def delete_schedule_conversion(
          # The ID of the list that you want to cancel the conversion for.
          list_id,
          request_options: {}
        )
        end

        # Fetch a single list by **ILS list ID**.
        sig do
          params(
            list_id: String,
            include_filters: T::Boolean,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Crm::ListFetchResponse)
        end
        def get(
          # The **ILS ID** of the list to fetch.
          list_id,
          # A flag indicating whether or not the response object list definition should
          # include a filter branch definition. By default, object list definitions will not
          # have their filter branch definitions included in the response.
          include_filters: nil,
          request_options: {}
        )
        end

        # Fetch a single list by list name and object type.
        sig do
          params(
            list_name: String,
            object_type_id: String,
            include_filters: T::Boolean,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Crm::ListFetchResponse)
        end
        def get_by_object_type_id_and_name(
          # Path param: The name of the list to fetch. This is **not** case sensitive.
          list_name,
          # Path param: The object type ID of the object types stored by the list to fetch.
          # For example, `0-1` for a `CONTACT` list.
          object_type_id:,
          # Query param: A flag indicating whether or not the response object list
          # definition should include a filter branch definition. By default, object list
          # definitions will not have their filter branch definitions included in the
          # response.
          include_filters: nil,
          request_options: {}
        )
        end

        # Retrieve the conversion details for a list. This can be used to check for an
        # upcoming conversion, or to get the details of when a list was already converted.
        sig do
          params(
            list_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Crm::PublicListConversionResponse)
        end
        def get_schedule_conversion(
          # The ID of the list to schedule the conversion for.
          list_id,
          request_options: {}
        )
        end

        # Restore a previously deleted list by **ILS list ID**. Deleted lists are eligible
        # to be restored up-to 90-days after the list has been deleted.
        sig do
          params(
            list_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).void
        end
        def restore(
          # The **ILS ID** of the list to restore.
          list_id,
          request_options: {}
        )
        end

        # Schedule the conversion of an active list into a static list, or update the
        # already scheduled conversion. This can be scheduled for a specific date or based
        # on activity.
        sig do
          params(
            list_id: String,
            public_list_conversion_time:
              HubspotSDK::Crm::PublicListConversionTime,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Crm::PublicListConversionResponse)
        end
        def schedule_conversion(
          # The ID of the list to schedule the conversion for.
          list_id,
          public_list_conversion_time:,
          request_options: {}
        )
        end

        # Search lists by list name or page through all lists by providing an empty
        # `query` value.
        sig do
          params(
            additional_properties: T::Array[String],
            offset: Integer,
            count: Integer,
            list_ids: T::Array[String],
            processing_types: T::Array[String],
            query: String,
            sort: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Crm::ListSearchResponse)
        end
        def search(
          # The property names of any additional list properties to include in the response.
          # Properties that do not exist or that are empty for a particular list are not
          # included in the response.
          #
          # By default, all requests will fetch the following properties for each list:
          # `hs_list_size`, `hs_last_record_added_at`, `hs_last_record_removed_at`,
          # `hs_folder_name`, and `hs_list_reference_count`.
          additional_properties:,
          # Value used to paginate through lists. The `offset` provided in the response can
          # be used in the next request to fetch the next page of results. Defaults to `0`
          # if no offset is provided.
          offset:,
          # The number of lists to include in the response. Defaults to `20` if no value is
          # provided. The max `count` is `500`.
          count: nil,
          # The `listIds` that will be used to filter results by `listId`. If values are
          # provided, then the response will only include results that have a `listId` in
          # this array.
          #
          # If no value is provided, or if an empty list is provided, then the results will
          # not be filtered by `listId`.
          list_ids: nil,
          # The `processingTypes` that will be used to filter results by `processingType`.
          # If values are provided, then the response will only include results that have a
          # `processingType` in this array.
          #
          # If no value is provided, or if an empty list is provided, then results will not
          # be filtered by `processingType`.
          #
          # Valid `processingTypes` are: `MANUAL`, `SNAPSHOT`, or `DYNAMIC`.
          processing_types: nil,
          # The `query` that will be used to search for lists by list name. If no `query` is
          # provided, then the results will include all lists.
          query: nil,
          sort: nil,
          request_options: {}
        )
        end

        # Update the filter branch definition of a `DYNAMIC` list. Once updated, the list
        # memberships will be re-evaluated and updated to match the new definition.
        sig do
          params(
            list_id: String,
            filter_branch:
              T.any(
                HubspotSDK::PublicOrFilterBranch::OrHash,
                HubspotSDK::PublicAndFilterBranch::OrHash,
                HubspotSDK::PublicNotAllFilterBranch::OrHash,
                HubspotSDK::PublicNotAnyFilterBranch::OrHash,
                HubspotSDK::PublicRestrictedFilterBranch::OrHash,
                HubspotSDK::PublicUnifiedEventsFilterBranch::OrHash,
                HubspotSDK::PublicPropertyAssociationFilterBranch::OrHash,
                HubspotSDK::PublicAssociationFilterBranch::OrHash
              ),
            enroll_objects_in_workflows: T::Boolean,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Crm::ListUpdateResponse)
        end
        def update_filters(
          # Path param: The **ILS ID** of the list to update.
          list_id,
          # Body param
          filter_branch:,
          # Query param: A flag indicating whether or not the memberships added to the list
          # as a result of the filter change should be enrolled in workflows that are
          # relevant to this list.
          enroll_objects_in_workflows: nil,
          request_options: {}
        )
        end

        # Update the name of a list. The name must be globally unique relative to all
        # other public lists in the portal.
        sig do
          params(
            list_id: String,
            include_filters: T::Boolean,
            list_name: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Crm::ListUpdateResponse)
        end
        def update_name(
          # The **ILS ID** of the list to update.
          list_id,
          # A flag indicating whether or not the response object list definition should
          # include a filter branch definition. By default, object list definitions will not
          # have their filter branch definitions included in the response.
          include_filters: nil,
          # The name to update the list to.
          list_name: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
