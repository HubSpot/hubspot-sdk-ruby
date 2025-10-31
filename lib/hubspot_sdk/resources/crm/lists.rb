# frozen_string_literal: true

module HubspotSDK
  module Resources
    class CRM
      class Lists
        # @return [HubspotSDK::Resources::CRM::Lists::Folders]
        attr_reader :folders

        # @return [HubspotSDK::Resources::CRM::Lists::Mapping]
        attr_reader :mapping

        # @return [HubspotSDK::Resources::CRM::Lists::Memberships]
        attr_reader :memberships

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::CRM::ListCreateParams} for more details.
        #
        # Create a new list with the provided object list definition.
        #
        # @overload create(name:, object_type_id:, processing_type:, custom_properties: nil, filter_branch: nil, list_folder_id: nil, list_permissions: nil, membership_settings: nil, request_options: {})
        #
        # @param name [String] The name of the list, which must be globally unique across all public lists in t
        #
        # @param object_type_id [String] The object type ID of the type of objects that the list will store.
        #
        # @param processing_type [String] The processing type of the list. One of: `SNAPSHOT`, `MANUAL`, or `DYNAMIC`.
        #
        # @param custom_properties [Hash{Symbol=>String}] The list of custom properties to tie to the list. Custom property name is the ke
        #
        # @param filter_branch [HubspotSDK::Models::PublicOrFilterBranch, HubspotSDK::Models::PublicAndFilterBranch, HubspotSDK::Models::PublicNotAllFilterBranch, HubspotSDK::Models::PublicNotAnyFilterBranch, HubspotSDK::Models::PublicRestrictedFilterBranch, HubspotSDK::Models::PublicUnifiedEventsFilterBranch, HubspotSDK::Models::PublicPropertyAssociationFilterBranch, HubspotSDK::Models::PublicAssociationFilterBranch]
        #
        # @param list_folder_id [Integer] The ID of the folder that the list should be created in. If left blank, then the
        #
        # @param list_permissions [HubspotSDK::Models::CRM::PublicListPermissions]
        #
        # @param membership_settings [HubspotSDK::Models::CRM::PublicMembershipSettings]
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::CRM::ListCreateResponse]
        #
        # @see HubspotSDK::Models::CRM::ListCreateParams
        def create(params)
          parsed, options = HubspotSDK::CRM::ListCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "crm/v3/lists/",
            body: parsed,
            model: HubspotSDK::CRM::ListCreateResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::CRM::ListListParams} for more details.
        #
        # Fetch multiple lists in a single request by **ILS list ID**. The response will
        # include the definitions of all lists that exist for the `listIds` provided.
        #
        # @overload list(include_filters: nil, list_ids: nil, request_options: {})
        #
        # @param include_filters [Boolean] A flag indicating whether or not the response object list definitions should inc
        #
        # @param list_ids [Array<String>] The **ILS IDs** of the lists to fetch.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::CRM::ListsByIDResponse]
        #
        # @see HubspotSDK::Models::CRM::ListListParams
        def list(params = {})
          parsed, options = HubspotSDK::CRM::ListListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "crm/v3/lists/",
            query: parsed.transform_keys(include_filters: "includeFilters", list_ids: "listIds"),
            model: HubspotSDK::CRM::ListsByIDResponse,
            options: options
          )
        end

        # Delete a list by **ILS list ID**. Lists deleted through this endpoint can be
        # restored up to 90-days following the delete. After 90-days, the list is purged
        # and can no longer be restored.
        #
        # @overload delete(list_id, request_options: {})
        #
        # @param list_id [String] The **ILS ID** of the list to delete.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubspotSDK::Models::CRM::ListDeleteParams
        def delete(list_id, params = {})
          @client.request(
            method: :delete,
            path: ["crm/v3/lists/%1$s", list_id],
            model: NilClass,
            options: params[:request_options]
          )
        end

        # Delete an existing scheduled conversion for a list.
        #
        # @overload delete_schedule_conversion(list_id, request_options: {})
        #
        # @param list_id [String] The ID of the list that you want to cancel the conversion for.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubspotSDK::Models::CRM::ListDeleteScheduleConversionParams
        def delete_schedule_conversion(list_id, params = {})
          @client.request(
            method: :delete,
            path: ["crm/v3/lists/%1$s/schedule-conversion", list_id],
            model: NilClass,
            options: params[:request_options]
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::CRM::ListGetParams} for more details.
        #
        # Fetch a single list by **ILS list ID**.
        #
        # @overload get(list_id, include_filters: nil, request_options: {})
        #
        # @param list_id [String] The **ILS ID** of the list to fetch.
        #
        # @param include_filters [Boolean] A flag indicating whether or not the response object list definition should incl
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::CRM::ListFetchResponse]
        #
        # @see HubspotSDK::Models::CRM::ListGetParams
        def get(list_id, params = {})
          parsed, options = HubspotSDK::CRM::ListGetParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["crm/v3/lists/%1$s", list_id],
            query: parsed.transform_keys(include_filters: "includeFilters"),
            model: HubspotSDK::CRM::ListFetchResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::CRM::ListGetByObjectTypeIDAndNameParams} for more details.
        #
        # Fetch a single list by list name and object type.
        #
        # @overload get_by_object_type_id_and_name(list_name, object_type_id:, include_filters: nil, request_options: {})
        #
        # @param list_name [String] Path param: The name of the list to fetch. This is **not** case sensitive.
        #
        # @param object_type_id [String] Path param: The object type ID of the object types stored by the list to fetch.
        #
        # @param include_filters [Boolean] Query param: A flag indicating whether or not the response object list definitio
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::CRM::ListFetchResponse]
        #
        # @see HubspotSDK::Models::CRM::ListGetByObjectTypeIDAndNameParams
        def get_by_object_type_id_and_name(list_name, params)
          parsed, options = HubspotSDK::CRM::ListGetByObjectTypeIDAndNameParams.dump_request(params)
          object_type_id =
            parsed.delete(:object_type_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["crm/v3/lists/object-type-id/%1$s/name/%2$s", object_type_id, list_name],
            query: parsed.transform_keys(include_filters: "includeFilters"),
            model: HubspotSDK::CRM::ListFetchResponse,
            options: options
          )
        end

        # Retrieve the conversion details for a list. This can be used to check for an
        # upcoming conversion, or to get the details of when a list was already converted.
        #
        # @overload get_schedule_conversion(list_id, request_options: {})
        #
        # @param list_id [String] The ID of the list to schedule the conversion for.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::CRM::PublicListConversionResponse]
        #
        # @see HubspotSDK::Models::CRM::ListGetScheduleConversionParams
        def get_schedule_conversion(list_id, params = {})
          @client.request(
            method: :get,
            path: ["crm/v3/lists/%1$s/schedule-conversion", list_id],
            model: HubspotSDK::CRM::PublicListConversionResponse,
            options: params[:request_options]
          )
        end

        # Restore a previously deleted list by **ILS list ID**. Deleted lists are eligible
        # to be restored up-to 90-days after the list has been deleted.
        #
        # @overload restore(list_id, request_options: {})
        #
        # @param list_id [String] The **ILS ID** of the list to restore.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubspotSDK::Models::CRM::ListRestoreParams
        def restore(list_id, params = {})
          @client.request(
            method: :put,
            path: ["crm/v3/lists/%1$s/restore", list_id],
            model: NilClass,
            options: params[:request_options]
          )
        end

        # Schedule the conversion of an active list into a static list, or update the
        # already scheduled conversion. This can be scheduled for a specific date or based
        # on activity.
        #
        # @overload schedule_conversion(list_id, public_list_conversion_time:, request_options: {})
        #
        # @param list_id [String] The ID of the list to schedule the conversion for.
        #
        # @param public_list_conversion_time [HubspotSDK::CRM::PublicListConversionTime]
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::CRM::PublicListConversionResponse]
        #
        # @see HubspotSDK::Models::CRM::ListScheduleConversionParams
        def schedule_conversion(list_id, params)
          parsed, options = HubspotSDK::CRM::ListScheduleConversionParams.dump_request(params)
          case parsed
          in {public_list_conversion_time: Hash => union, **rest}
            parsed = {**rest, **union}
          else
          end
          @client.request(
            method: :put,
            path: ["crm/v3/lists/%1$s/schedule-conversion", list_id],
            body: parsed,
            model: HubspotSDK::CRM::PublicListConversionResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::CRM::ListSearchParams} for more details.
        #
        # Search lists by list name or page through all lists by providing an empty
        # `query` value.
        #
        # @overload search(additional_properties: nil, count: nil, list_ids: nil, offset: nil, processing_types: nil, query: nil, sort: nil, request_options: {})
        #
        # @param additional_properties [Array<String>] The property names of any additional list properties to include in the response.
        #
        # @param count [Integer] The number of lists to include in the response. Defaults to `20` if no value is
        #
        # @param list_ids [Array<String>] The `listIds` that will be used to filter results by `listId`. If values are pro
        #
        # @param offset [Integer] Value used to paginate through lists. The `offset` provided in the response can
        #
        # @param processing_types [Array<String>] The `processingTypes` that will be used to filter results by `processingType`. I
        #
        # @param query [String] The `query` that will be used to search for lists by list name. If no `query` is
        #
        # @param sort [String]
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::CRM::ListSearchResponse]
        #
        # @see HubspotSDK::Models::CRM::ListSearchParams
        def search(params = {})
          parsed, options = HubspotSDK::CRM::ListSearchParams.dump_request(params)
          @client.request(
            method: :post,
            path: "crm/v3/lists/search",
            body: parsed,
            model: HubspotSDK::CRM::ListSearchResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::CRM::ListUpdateFiltersParams} for more details.
        #
        # Update the filter branch definition of a `DYNAMIC` list. Once updated, the list
        # memberships will be re-evaluated and updated to match the new definition.
        #
        # @overload update_filters(list_id, filter_branch:, enroll_objects_in_workflows: nil, request_options: {})
        #
        # @param list_id [String] Path param: The **ILS ID** of the list to update.
        #
        # @param filter_branch [HubspotSDK::Models::PublicOrFilterBranch, HubspotSDK::Models::PublicAndFilterBranch, HubspotSDK::Models::PublicNotAllFilterBranch, HubspotSDK::Models::PublicNotAnyFilterBranch, HubspotSDK::Models::PublicRestrictedFilterBranch, HubspotSDK::Models::PublicUnifiedEventsFilterBranch, HubspotSDK::Models::PublicPropertyAssociationFilterBranch, HubspotSDK::Models::PublicAssociationFilterBranch] Body param:
        #
        # @param enroll_objects_in_workflows [Boolean] Query param: A flag indicating whether or not the memberships added to the list
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::CRM::ListUpdateResponse]
        #
        # @see HubspotSDK::Models::CRM::ListUpdateFiltersParams
        def update_filters(list_id, params)
          parsed, options = HubspotSDK::CRM::ListUpdateFiltersParams.dump_request(params)
          query_params = [:enroll_objects_in_workflows]
          @client.request(
            method: :put,
            path: ["crm/v3/lists/%1$s/update-list-filters", list_id],
            query: parsed.slice(*query_params).transform_keys(enroll_objects_in_workflows: "enrollObjectsInWorkflows"),
            body: parsed.except(*query_params),
            model: HubspotSDK::CRM::ListUpdateResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::CRM::ListUpdateNameParams} for more details.
        #
        # Update the name of a list. The name must be globally unique relative to all
        # other public lists in the portal.
        #
        # @overload update_name(list_id, include_filters: nil, list_name: nil, request_options: {})
        #
        # @param list_id [String] The **ILS ID** of the list to update.
        #
        # @param include_filters [Boolean] A flag indicating whether or not the response object list definition should incl
        #
        # @param list_name [String] The name to update the list to.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::CRM::ListUpdateResponse]
        #
        # @see HubspotSDK::Models::CRM::ListUpdateNameParams
        def update_name(list_id, params = {})
          parsed, options = HubspotSDK::CRM::ListUpdateNameParams.dump_request(params)
          @client.request(
            method: :put,
            path: ["crm/v3/lists/%1$s/update-list-name", list_id],
            query: parsed.transform_keys(include_filters: "includeFilters", list_name: "listName"),
            model: HubspotSDK::CRM::ListUpdateResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [HubspotSDK::Client]
        def initialize(client:)
          @client = client
          @folders = HubspotSDK::Resources::CRM::Lists::Folders.new(client: client)
          @mapping = HubspotSDK::Resources::CRM::Lists::Mapping.new(client: client)
          @memberships = HubspotSDK::Resources::CRM::Lists::Memberships.new(client: client)
        end
      end
    end
  end
end
