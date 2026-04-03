# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Crm
      class Lists
        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Crm::ListCreateParams} for more details.
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
        # @param filter_branch [HubspotSDK::Models::Crm::PublicOrFilterBranch, HubspotSDK::Models::Crm::PublicAndFilterBranch, HubspotSDK::Models::Crm::PublicNotAllFilterBranch, HubspotSDK::Models::Crm::PublicNotAnyFilterBranch, HubspotSDK::Models::Crm::PublicRestrictedFilterBranch, HubspotSDK::Models::Crm::PublicUnifiedEventsFilterBranch, HubspotSDK::Models::Crm::PublicPropertyAssociationFilterBranch, HubspotSDK::Models::Crm::PublicAssociationFilterBranch] Filter branch object containing filtering criteria for the list
        #
        # @param list_folder_id [Integer] The ID of the folder that the list should be created in. If left blank, then the
        #
        # @param list_permissions [HubspotSDK::Models::Crm::PublicListPermissions]
        #
        # @param membership_settings [HubspotSDK::Models::Crm::PublicMembershipSettings]
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Crm::ListCreateResponse]
        #
        # @see HubspotSDK::Models::Crm::ListCreateParams
        def create(params)
          parsed, options = HubspotSDK::Crm::ListCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "crm/lists/2026-03",
            body: parsed,
            model: HubspotSDK::Crm::ListCreateResponse,
            options: options
          )
        end

        # @overload list(include_filters: nil, list_ids: nil, request_options: {})
        #
        # @param include_filters [Boolean]
        # @param list_ids [Array<String>]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Crm::ListsByIDResponse]
        #
        # @see HubspotSDK::Models::Crm::ListListParams
        def list(params = {})
          parsed, options = HubspotSDK::Crm::ListListParams.dump_request(params)
          query = HubspotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "crm/lists/2026-03",
            query: query.transform_keys(include_filters: "includeFilters", list_ids: "listIds"),
            model: HubspotSDK::Crm::ListsByIDResponse,
            options: options
          )
        end

        # @overload delete(list_id, request_options: {})
        #
        # @param list_id [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubspotSDK::Models::Crm::ListDeleteParams
        def delete(list_id, params = {})
          @client.request(
            method: :delete,
            path: ["crm/lists/2026-03/%1$s", list_id],
            model: NilClass,
            options: params[:request_options]
          )
        end

        # @overload add_and_remove_memberships(list_id, record_ids_to_add:, record_ids_to_remove:, request_options: {})
        #
        # @param list_id [String]
        # @param record_ids_to_add [Array<String>]
        # @param record_ids_to_remove [Array<String>]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Crm::MembershipsUpdateResponse]
        #
        # @see HubspotSDK::Models::Crm::ListAddAndRemoveMembershipsParams
        def add_and_remove_memberships(list_id, params)
          parsed, options = HubspotSDK::Crm::ListAddAndRemoveMembershipsParams.dump_request(params)
          @client.request(
            method: :put,
            path: ["crm/lists/2026-03/%1$s/memberships/add-and-remove", list_id],
            body: parsed,
            model: HubspotSDK::Crm::MembershipsUpdateResponse,
            options: options
          )
        end

        # @overload add_memberships(list_id, body:, request_options: {})
        #
        # @param list_id [String]
        # @param body [Array<String>]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Crm::MembershipsUpdateResponse]
        #
        # @see HubspotSDK::Models::Crm::ListAddMembershipsParams
        def add_memberships(list_id, params)
          parsed, options = HubspotSDK::Crm::ListAddMembershipsParams.dump_request(params)
          @client.request(
            method: :put,
            path: ["crm/lists/2026-03/%1$s/memberships/add", list_id],
            body: parsed[:body],
            model: HubspotSDK::Crm::MembershipsUpdateResponse,
            options: options
          )
        end

        # @overload add_memberships_from(source_list_id, list_id:, request_options: {})
        #
        # @param source_list_id [String]
        # @param list_id [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubspotSDK::Models::Crm::ListAddMembershipsFromParams
        def add_memberships_from(source_list_id, params)
          parsed, options = HubspotSDK::Crm::ListAddMembershipsFromParams.dump_request(params)
          list_id =
            parsed.delete(:list_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :put,
            path: ["crm/lists/2026-03/%1$s/memberships/add-from/%2$s", list_id, source_list_id],
            model: NilClass,
            options: options
          )
        end

        # @overload batch_read_memberships(inputs:, request_options: {})
        #
        # @param inputs [Array<HubspotSDK::Models::Crm::RecordIDInput>]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Crm::BatchResponseRecordIDWithMemberships]
        #
        # @see HubspotSDK::Models::Crm::ListBatchReadMembershipsParams
        def batch_read_memberships(params)
          parsed, options = HubspotSDK::Crm::ListBatchReadMembershipsParams.dump_request(params)
          @client.request(
            method: :post,
            path: "crm/lists/2026-03/records/memberships/batch/read",
            body: parsed,
            model: HubspotSDK::Crm::BatchResponseRecordIDWithMemberships,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Crm::ListCreateFolderParams} for more details.
        #
        # @overload create_folder(name:, parent_folder_id: nil, request_options: {})
        #
        # @param name [String] The name of the folder to be created.
        #
        # @param parent_folder_id [String] The folder this should be created in, if not specified will be created in the ro
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Crm::ListFolderCreateResponse]
        #
        # @see HubspotSDK::Models::Crm::ListCreateFolderParams
        def create_folder(params)
          parsed, options = HubspotSDK::Crm::ListCreateFolderParams.dump_request(params)
          @client.request(
            method: :post,
            path: "crm/lists/2026-03/folders",
            body: parsed,
            model: HubspotSDK::Crm::ListFolderCreateResponse,
            options: options
          )
        end

        # @overload create_id_mapping(body:, request_options: {})
        #
        # @param body [Array<String>]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Crm::PublicBatchMigrationMapping]
        #
        # @see HubspotSDK::Models::Crm::ListCreateIDMappingParams
        def create_id_mapping(params)
          parsed, options = HubspotSDK::Crm::ListCreateIDMappingParams.dump_request(params)
          @client.request(
            method: :post,
            path: "crm/lists/2026-03/idmapping",
            body: parsed[:body],
            model: HubspotSDK::Crm::PublicBatchMigrationMapping,
            options: options
          )
        end

        # @overload delete_folder(folder_id, request_options: {})
        #
        # @param folder_id [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubspotSDK::Models::Crm::ListDeleteFolderParams
        def delete_folder(folder_id, params = {})
          @client.request(
            method: :delete,
            path: ["crm/lists/2026-03/folders/%1$s", folder_id],
            model: NilClass,
            options: params[:request_options]
          )
        end

        # @overload delete_memberships(list_id, request_options: {})
        #
        # @param list_id [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubspotSDK::Models::Crm::ListDeleteMembershipsParams
        def delete_memberships(list_id, params = {})
          @client.request(
            method: :delete,
            path: ["crm/lists/2026-03/%1$s/memberships", list_id],
            model: NilClass,
            options: params[:request_options]
          )
        end

        # @overload get(list_id, include_filters: nil, request_options: {})
        #
        # @param list_id [String]
        # @param include_filters [Boolean]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Crm::ListFetchResponse]
        #
        # @see HubspotSDK::Models::Crm::ListGetParams
        def get(list_id, params = {})
          parsed, options = HubspotSDK::Crm::ListGetParams.dump_request(params)
          query = HubspotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["crm/lists/2026-03/%1$s", list_id],
            query: query.transform_keys(include_filters: "includeFilters"),
            model: HubspotSDK::Crm::ListFetchResponse,
            options: options
          )
        end

        # @overload get_by_object_type_and_name(list_name, object_type_id:, include_filters: nil, request_options: {})
        #
        # @param list_name [String] Path param
        #
        # @param object_type_id [String] Path param
        #
        # @param include_filters [Boolean] Query param
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Crm::ListFetchResponse]
        #
        # @see HubspotSDK::Models::Crm::ListGetByObjectTypeAndNameParams
        def get_by_object_type_and_name(list_name, params)
          parsed, options = HubspotSDK::Crm::ListGetByObjectTypeAndNameParams.dump_request(params)
          query = HubspotSDK::Internal::Util.encode_query_params(parsed)
          object_type_id =
            parsed.delete(:object_type_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["crm/lists/2026-03/object-type-id/%1$s/name/%2$s", object_type_id, list_name],
            query: query.transform_keys(include_filters: "includeFilters"),
            model: HubspotSDK::Crm::ListFetchResponse,
            options: options
          )
        end

        # @overload get_id_mapping(legacy_list_id: nil, request_options: {})
        #
        # @param legacy_list_id [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Crm::PublicMigrationMapping]
        #
        # @see HubspotSDK::Models::Crm::ListGetIDMappingParams
        def get_id_mapping(params = {})
          parsed, options = HubspotSDK::Crm::ListGetIDMappingParams.dump_request(params)
          query = HubspotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "crm/lists/2026-03/idmapping",
            query: query.transform_keys(legacy_list_id: "legacyListId"),
            model: HubspotSDK::Crm::PublicMigrationMapping,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Crm::ListGetMembershipsJoinOrderParams} for more details.
        #
        # @overload get_memberships_join_order(list_id, after: nil, before: nil, limit: nil, request_options: {})
        #
        # @param list_id [String]
        #
        # @param after [String] The paging cursor token of the last successfully read resource will be returned
        #
        # @param before [String]
        #
        # @param limit [Integer] The maximum number of results to display per page.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Internal::Page<HubspotSDK::Models::Crm::JoinTimeAndRecordID>]
        #
        # @see HubspotSDK::Models::Crm::ListGetMembershipsJoinOrderParams
        def get_memberships_join_order(list_id, params = {})
          parsed, options = HubspotSDK::Crm::ListGetMembershipsJoinOrderParams.dump_request(params)
          query = HubspotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["crm/lists/2026-03/%1$s/memberships/join-order", list_id],
            query: query,
            page: HubspotSDK::Internal::Page,
            model: HubspotSDK::Crm::JoinTimeAndRecordID,
            options: options
          )
        end

        # @overload get_record_memberships(record_id, object_type_id:, request_options: {})
        #
        # @param record_id [String]
        # @param object_type_id [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Crm::APICollectionResponseRecordListMembership]
        #
        # @see HubspotSDK::Models::Crm::ListGetRecordMembershipsParams
        def get_record_memberships(record_id, params)
          parsed, options = HubspotSDK::Crm::ListGetRecordMembershipsParams.dump_request(params)
          object_type_id =
            parsed.delete(:object_type_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["crm/lists/2026-03/records/%1$s/%2$s/memberships", object_type_id, record_id],
            model: HubspotSDK::Crm::APICollectionResponseRecordListMembership,
            options: options
          )
        end

        # @overload get_schedule_conversion(list_id, request_options: {})
        #
        # @param list_id [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Crm::PublicListConversionResponse]
        #
        # @see HubspotSDK::Models::Crm::ListGetScheduleConversionParams
        def get_schedule_conversion(list_id, params = {})
          @client.request(
            method: :get,
            path: ["crm/lists/2026-03/%1$s/schedule-conversion", list_id],
            model: HubspotSDK::Crm::PublicListConversionResponse,
            options: params[:request_options]
          )
        end

        # @overload get_size_and_edits_history_between(list_id, end_date: nil, start_date: nil, request_options: {})
        #
        # @param list_id [String]
        # @param end_date [String]
        # @param start_date [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Crm::ListSizeAndEditHistoryResponse]
        #
        # @see HubspotSDK::Models::Crm::ListGetSizeAndEditsHistoryBetweenParams
        def get_size_and_edits_history_between(list_id, params = {})
          parsed, options = HubspotSDK::Crm::ListGetSizeAndEditsHistoryBetweenParams.dump_request(params)
          query = HubspotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["crm/lists/2026-03/%1$s/size-and-edits-history/between", list_id],
            query: query.transform_keys(end_date: "endDate", start_date: "startDate"),
            model: HubspotSDK::Crm::ListSizeAndEditHistoryResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Crm::ListListBySearchParams} for more details.
        #
        # @overload list_by_search(list_ids:, offset:, processing_types:, additional_filter_properties: nil, count: nil, object_type_id: nil, query: nil, sort: nil, request_options: {})
        #
        # @param list_ids [Array<String>] ILS list ids to be included in search results. If not specified, all lists match
        #
        # @param offset [Integer] Value used to paginate through lists. The `offset` provided in the response can
        #
        # @param processing_types [Array<String>] List processing types to be included in search results. If not specified, all li
        #
        # @param additional_filter_properties [Array<String>] The property names of any additional list properties to include in the response.
        #
        # @param count [Integer] The number of lists to include in the response. Defaults to `20` if no value is
        #
        # @param object_type_id [String]
        #
        # @param query [String] The `query` that will be used to search for lists by list name. If no `query` is
        #
        # @param sort [String] Sort field and order
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Crm::ListSearchResponse]
        #
        # @see HubspotSDK::Models::Crm::ListListBySearchParams
        def list_by_search(params)
          parsed, options = HubspotSDK::Crm::ListListBySearchParams.dump_request(params)
          @client.request(
            method: :post,
            path: "crm/lists/2026-03/search",
            body: parsed,
            model: HubspotSDK::Crm::ListSearchResponse,
            options: options
          )
        end

        # @overload list_folders(folder_id: nil, request_options: {})
        #
        # @param folder_id [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Crm::ListFolderFetchResponse]
        #
        # @see HubspotSDK::Models::Crm::ListListFoldersParams
        def list_folders(params = {})
          parsed, options = HubspotSDK::Crm::ListListFoldersParams.dump_request(params)
          query = HubspotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "crm/lists/2026-03/folders",
            query: query.transform_keys(folder_id: "folderId"),
            model: HubspotSDK::Crm::ListFolderFetchResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Crm::ListListMembershipsParams} for more details.
        #
        # @overload list_memberships(list_id, after: nil, before: nil, limit: nil, request_options: {})
        #
        # @param list_id [String]
        #
        # @param after [String] The paging cursor token of the last successfully read resource will be returned
        #
        # @param before [String]
        #
        # @param limit [Integer] The maximum number of results to display per page.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Internal::Page<HubspotSDK::Models::Crm::JoinTimeAndRecordID>]
        #
        # @see HubspotSDK::Models::Crm::ListListMembershipsParams
        def list_memberships(list_id, params = {})
          parsed, options = HubspotSDK::Crm::ListListMembershipsParams.dump_request(params)
          query = HubspotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["crm/lists/2026-03/%1$s/memberships", list_id],
            query: query,
            page: HubspotSDK::Internal::Page,
            model: HubspotSDK::Crm::JoinTimeAndRecordID,
            options: options
          )
        end

        # @overload move_folder(new_parent_folder_id, folder_id:, request_options: {})
        #
        # @param new_parent_folder_id [String]
        # @param folder_id [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Crm::ListFolderFetchResponse]
        #
        # @see HubspotSDK::Models::Crm::ListMoveFolderParams
        def move_folder(new_parent_folder_id, params)
          parsed, options = HubspotSDK::Crm::ListMoveFolderParams.dump_request(params)
          folder_id =
            parsed.delete(:folder_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :put,
            path: ["crm/lists/2026-03/folders/%1$s/move/%2$s", folder_id, new_parent_folder_id],
            model: HubspotSDK::Crm::ListFolderFetchResponse,
            options: options
          )
        end

        # @overload move_list(list_id:, new_folder_id:, request_options: {})
        #
        # @param list_id [String] The Id of the list to move.
        #
        # @param new_folder_id [String] The Id of folder to move the list to, the root folder is Id 0.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubspotSDK::Models::Crm::ListMoveListParams
        def move_list(params)
          parsed, options = HubspotSDK::Crm::ListMoveListParams.dump_request(params)
          @client.request(
            method: :put,
            path: "crm/lists/2026-03/folders/move-list",
            body: parsed,
            model: NilClass,
            options: options
          )
        end

        # @overload remove_memberships(list_id, body:, request_options: {})
        #
        # @param list_id [String]
        # @param body [Array<String>]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Crm::MembershipsUpdateResponse]
        #
        # @see HubspotSDK::Models::Crm::ListRemoveMembershipsParams
        def remove_memberships(list_id, params)
          parsed, options = HubspotSDK::Crm::ListRemoveMembershipsParams.dump_request(params)
          @client.request(
            method: :put,
            path: ["crm/lists/2026-03/%1$s/memberships/remove", list_id],
            body: parsed[:body],
            model: HubspotSDK::Crm::MembershipsUpdateResponse,
            options: options
          )
        end

        # @overload rename_folder(folder_id, new_folder_name: nil, request_options: {})
        #
        # @param folder_id [String]
        # @param new_folder_name [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Crm::ListFolderFetchResponse]
        #
        # @see HubspotSDK::Models::Crm::ListRenameFolderParams
        def rename_folder(folder_id, params = {})
          parsed, options = HubspotSDK::Crm::ListRenameFolderParams.dump_request(params)
          query = HubspotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :put,
            path: ["crm/lists/2026-03/folders/%1$s/rename", folder_id],
            query: query.transform_keys(new_folder_name: "newFolderName"),
            model: HubspotSDK::Crm::ListFolderFetchResponse,
            options: options
          )
        end

        # @overload restore(list_id, request_options: {})
        #
        # @param list_id [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubspotSDK::Models::Crm::ListRestoreParams
        def restore(list_id, params = {})
          @client.request(
            method: :put,
            path: ["crm/lists/2026-03/%1$s/restore", list_id],
            model: NilClass,
            options: params[:request_options]
          )
        end

        # @overload schedule_conversion(list_id, request_options: {})
        #
        # @param list_id [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubspotSDK::Models::Crm::ListScheduleConversionParams
        def schedule_conversion(list_id, params = {})
          @client.request(
            method: :delete,
            path: ["crm/lists/2026-03/%1$s/schedule-conversion", list_id],
            model: NilClass,
            options: params[:request_options]
          )
        end

        # @overload update_list_filters(list_id, filter_branch:, enroll_objects_in_workflows: nil, request_options: {})
        #
        # @param list_id [String] Path param
        #
        # @param filter_branch [HubspotSDK::Models::Crm::PublicOrFilterBranch, HubspotSDK::Models::Crm::PublicAndFilterBranch, HubspotSDK::Models::Crm::PublicNotAllFilterBranch, HubspotSDK::Models::Crm::PublicNotAnyFilterBranch, HubspotSDK::Models::Crm::PublicRestrictedFilterBranch, HubspotSDK::Models::Crm::PublicUnifiedEventsFilterBranch, HubspotSDK::Models::Crm::PublicPropertyAssociationFilterBranch, HubspotSDK::Models::Crm::PublicAssociationFilterBranch] Body param: Updated filtering criteria for the list
        #
        # @param enroll_objects_in_workflows [Boolean] Query param
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Crm::ListUpdateResponse]
        #
        # @see HubspotSDK::Models::Crm::ListUpdateListFiltersParams
        def update_list_filters(list_id, params)
          query_params = [:enroll_objects_in_workflows]
          parsed, options = HubspotSDK::Crm::ListUpdateListFiltersParams.dump_request(params)
          query = HubspotSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
          @client.request(
            method: :put,
            path: ["crm/lists/2026-03/%1$s/update-list-filters", list_id],
            query: query.transform_keys(enroll_objects_in_workflows: "enrollObjectsInWorkflows"),
            body: parsed.except(*query_params),
            model: HubspotSDK::Crm::ListUpdateResponse,
            options: options
          )
        end

        # @overload update_list_name(list_id, include_filters: nil, list_name: nil, request_options: {})
        #
        # @param list_id [String]
        # @param include_filters [Boolean]
        # @param list_name [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Crm::ListUpdateResponse]
        #
        # @see HubspotSDK::Models::Crm::ListUpdateListNameParams
        def update_list_name(list_id, params = {})
          parsed, options = HubspotSDK::Crm::ListUpdateListNameParams.dump_request(params)
          query = HubspotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :put,
            path: ["crm/lists/2026-03/%1$s/update-list-name", list_id],
            query: query.transform_keys(include_filters: "includeFilters", list_name: "listName"),
            model: HubspotSDK::Crm::ListUpdateResponse,
            options: options
          )
        end

        # @overload update_schedule_conversion(list_id, public_list_conversion_time:, request_options: {})
        #
        # @param list_id [String]
        # @param public_list_conversion_time [HubspotSDK::Models::Crm::PublicListConversionDate, HubspotSDK::Models::Crm::PublicListConversionInactivity]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Crm::PublicListConversionResponse]
        #
        # @see HubspotSDK::Models::Crm::ListUpdateScheduleConversionParams
        def update_schedule_conversion(list_id, params)
          parsed, options = HubspotSDK::Crm::ListUpdateScheduleConversionParams.dump_request(params)
          @client.request(
            method: :put,
            path: ["crm/lists/2026-03/%1$s/schedule-conversion", list_id],
            body: parsed[:public_list_conversion_time],
            model: HubspotSDK::Crm::PublicListConversionResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [HubspotSDK::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
