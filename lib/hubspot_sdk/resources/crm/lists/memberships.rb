# frozen_string_literal: true

module HubspotSDK
  module Resources
    class CRM
      class Lists
        class Memberships
          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::CRM::Lists::MembershipListParams} for more details.
          #
          # Fetch the memberships of a list in order sorted by the `recordId` of the records
          # in the list.
          #
          # The `recordId`s are sorted in _ascending_ order if an `after` offset or no
          # offset is provided. If only a `before` offset is provided, then the records are
          # sorted in _descending_ order.
          #
          # The `after` offset parameter will take precedence over the `before` offset in a
          # case where both are provided.
          #
          # @overload list(list_id, after: nil, before: nil, limit: nil, request_options: {})
          #
          # @param list_id [String] The **ILS ID** of the list.
          #
          # @param after [String] The paging offset token for the page that comes `after` the previously requested
          #
          # @param before [String] The paging offset token for the page that comes `before` the previously requeste
          #
          # @param limit [Integer] The number of records to return in the response. The maximum `limit` is 250.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Internal::Page<HubspotSDK::Models::CRM::JoinTimeAndRecordID>]
          #
          # @see HubspotSDK::Models::CRM::Lists::MembershipListParams
          def list(list_id, params = {})
            parsed, options = HubspotSDK::CRM::Lists::MembershipListParams.dump_request(params)
            @client.request(
              method: :get,
              path: ["crm/v3/lists/%1$s/memberships", list_id],
              query: parsed,
              page: HubspotSDK::Internal::Page,
              model: HubspotSDK::CRM::JoinTimeAndRecordID,
              options: options
            )
          end

          # Add the records provided to the list. Records that do not exist or that are
          # already members of the list are ignored.
          #
          # This endpoint only works for lists that have a `processingType` of `MANUAL` or
          # `SNAPSHOT`.
          #
          # @overload add(list_id, body:, request_options: {})
          #
          # @param list_id [String] The **ILS ID** of the `MANUAL` or `SNAPSHOT` list.
          #
          # @param body [Array<String>]
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::CRM::MembershipsUpdateResponse]
          #
          # @see HubspotSDK::Models::CRM::Lists::MembershipAddParams
          def add(list_id, params)
            parsed, options = HubspotSDK::CRM::Lists::MembershipAddParams.dump_request(params)
            @client.request(
              method: :put,
              path: ["crm/v3/lists/%1$s/memberships/add", list_id],
              body: parsed[:body],
              model: HubspotSDK::CRM::MembershipsUpdateResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::CRM::Lists::MembershipAddAllFromListParams} for more
          # details.
          #
          # Add all of the records from a _source list_ (specified by the `sourceListId`) to
          # a _destination list_ (specified by the `listId`). Records that are already
          # members of the _destination list_ will be ignored. The _destination_ and _source
          # list_ IDs must be different. The _destination_ and _source lists_ must contain
          # records of the same type (e.g. contacts, companies, etc.).
          #
          # This endpoint only works for _destination lists_ that have a `processingType` of
          # `MANUAL` or `SNAPSHOT`. The _source list_ can have any `processingType`.
          #
          # This endpoint only supports a `sourceListId` for lists with less than 100,000
          # memberships.
          #
          # @overload add_all_from_list(source_list_id, list_id:, request_options: {})
          #
          # @param source_list_id [String] The **ILS ID** of the _source list_ to grab the records from, which are then add
          #
          # @param list_id [String] The **ILS ID** of the `MANUAL` or `SNAPSHOT` _destination list_, which the
          # \*sour
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::CRM::Lists::MembershipAddAllFromListParams
          def add_all_from_list(source_list_id, params)
            parsed, options = HubspotSDK::CRM::Lists::MembershipAddAllFromListParams.dump_request(params)
            list_id =
              parsed.delete(:list_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :put,
              path: ["crm/v3/lists/%1$s/memberships/add-from/%2$s", list_id, source_list_id],
              model: NilClass,
              options: options
            )
          end

          # Add and/or remove records that have already been created in the system to and/or
          # from a list.
          #
          # This endpoint only works for lists that have a `processingType` of `MANUAL` or
          # `SNAPSHOT`.
          #
          # @overload add_and_remove(list_id, record_ids_to_add:, record_ids_to_remove:, request_options: {})
          #
          # @param list_id [String] The **ILS ID** of the `MANUAL` or `SNAPSHOT` list.
          #
          # @param record_ids_to_add [Array<String>]
          #
          # @param record_ids_to_remove [Array<String>]
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::CRM::MembershipsUpdateResponse]
          #
          # @see HubspotSDK::Models::CRM::Lists::MembershipAddAndRemoveParams
          def add_and_remove(list_id, params)
            parsed, options = HubspotSDK::CRM::Lists::MembershipAddAndRemoveParams.dump_request(params)
            @client.request(
              method: :put,
              path: ["crm/v3/lists/%1$s/memberships/add-and-remove", list_id],
              body: parsed,
              model: HubspotSDK::CRM::MembershipsUpdateResponse,
              options: options
            )
          end

          # For given record provide lists this record is member of.
          #
          # @overload get_lists(record_id, object_type_id:, request_options: {})
          #
          # @param record_id [String] Id of the record
          #
          # @param object_type_id [String] Object type id of the record
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::CRM::APICollectionResponseRecordListMembershipNoPaging]
          #
          # @see HubspotSDK::Models::CRM::Lists::MembershipGetListsParams
          def get_lists(record_id, params)
            parsed, options = HubspotSDK::CRM::Lists::MembershipGetListsParams.dump_request(params)
            object_type_id =
              parsed.delete(:object_type_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["crm/v3/lists/records/%1$s/%2$s/memberships", object_type_id, record_id],
              model: HubspotSDK::CRM::APICollectionResponseRecordListMembershipNoPaging,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::CRM::Lists::MembershipGetPageOrderedByAddedToListDateParams}
          # for more details.
          #
          # Fetch the memberships of a list in order sorted by the time the records were
          # added to the list.
          #
          # The `recordId`s are sorted in _ascending_ order if an `after` offset or no
          # offset is provided. If only a `before` offset is provided, then the records are
          # sorted in _descending_ order.
          #
          # The `after` offset parameter will take precedence over the `before` offset in a
          # case where both are provided.
          #
          # @overload get_page_ordered_by_added_to_list_date(list_id, after: nil, before: nil, limit: nil, request_options: {})
          #
          # @param list_id [String] The **ILS ID** of the list.
          #
          # @param after [String] The paging offset token for the page that comes `after` the previously requested
          #
          # @param before [String] The paging offset token for the page that comes `before` the previously requeste
          #
          # @param limit [Integer] The number of records to return in the response. The maximum `limit` is 250.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Internal::Page<HubspotSDK::Models::CRM::JoinTimeAndRecordID>]
          #
          # @see HubspotSDK::Models::CRM::Lists::MembershipGetPageOrderedByAddedToListDateParams
          def get_page_ordered_by_added_to_list_date(list_id, params = {})
            parsed, options =
              HubspotSDK::CRM::Lists::MembershipGetPageOrderedByAddedToListDateParams.dump_request(params)
            @client.request(
              method: :get,
              path: ["crm/v3/lists/%1$s/memberships/join-order", list_id],
              query: parsed,
              page: HubspotSDK::Internal::Page,
              model: HubspotSDK::CRM::JoinTimeAndRecordID,
              options: options
            )
          end

          # Remove the records provided from the list. Records that do not exist or that are
          # not members of the list are ignored.
          #
          # This endpoint only works for lists that have a `processingType` of `MANUAL` or
          # `SNAPSHOT`.
          #
          # @overload remove(list_id, body:, request_options: {})
          #
          # @param list_id [String] The **ILS ID** of the `MANUAL` or `SNAPSHOT` list.
          #
          # @param body [Array<String>]
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::CRM::MembershipsUpdateResponse]
          #
          # @see HubspotSDK::Models::CRM::Lists::MembershipRemoveParams
          def remove(list_id, params)
            parsed, options = HubspotSDK::CRM::Lists::MembershipRemoveParams.dump_request(params)
            @client.request(
              method: :put,
              path: ["crm/v3/lists/%1$s/memberships/remove", list_id],
              body: parsed[:body],
              model: HubspotSDK::CRM::MembershipsUpdateResponse,
              options: options
            )
          end

          # Remove **all** of the records from a list. **_Note:_** _The list is not
          # deleted._
          #
          # This endpoint only works for lists that have a `processingType` of `MANUAL` or
          # `SNAPSHOT`.
          #
          # This endpoint only supports lists that have less than 100,000 memberships.
          #
          # @overload remove_all(list_id, request_options: {})
          #
          # @param list_id [String] The **ILS ID** of the `MANUAL` or `SNAPSHOT` list.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::CRM::Lists::MembershipRemoveAllParams
          def remove_all(list_id, params = {})
            @client.request(
              method: :delete,
              path: ["crm/v3/lists/%1$s/memberships", list_id],
              model: NilClass,
              options: params[:request_options]
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
end
