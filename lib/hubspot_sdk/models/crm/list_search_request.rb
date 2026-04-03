# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class ListSearchRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute list_ids
        #   ILS list ids to be included in search results. If not specified, all lists
        #   matching other criteria will be included
        #
        #   @return [Array<String>]
        required :list_ids, HubspotSDK::Internal::Type::ArrayOf[String], api_name: :listIds

        # @!attribute offset
        #   Value used to paginate through lists. The `offset` provided in the response can
        #   be used in the next request to fetch the next page of results. Defaults to `0`
        #   if no offset is provided.
        #
        #   @return [Integer]
        required :offset, Integer

        # @!attribute processing_types
        #   List processing types to be included in search results. If not specified, all
        #   lists with all processing types will be included.
        #
        #   @return [Array<String>]
        required :processing_types, HubspotSDK::Internal::Type::ArrayOf[String], api_name: :processingTypes

        # @!attribute additional_filter_properties
        #   The property names of any additional list properties to include in the response.
        #   Properties that do not exist or that are empty for a particular list are not
        #   included in the response.
        #
        #   By default, all requests will fetch the following properties for each list:
        #   `hs_list_size`, `hs_last_record_added_at`, `hs_last_record_removed_at`,
        #   `hs_folder_name`, and `hs_list_reference_count`.
        #
        #   @return [Array<String>, nil]
        optional :additional_filter_properties, HubspotSDK::Internal::Type::ArrayOf[String]

        # @!attribute count
        #   The number of lists to include in the response. Defaults to `20` if no value is
        #   provided. The max `count` is `500`.
        #
        #   @return [Integer, nil]
        optional :count, Integer

        # @!attribute object_type_id
        #
        #   @return [String, nil]
        optional :object_type_id, String, api_name: :objectTypeId

        # @!attribute query
        #   The `query` that will be used to search for lists by list name. If no `query` is
        #   provided, then the results will include all lists.
        #
        #   @return [String, nil]
        optional :query, String

        # @!attribute sort
        #   Sort field and order
        #
        #   @return [String, nil]
        optional :sort, String

        # @!method initialize(list_ids:, offset:, processing_types:, additional_filter_properties: nil, count: nil, object_type_id: nil, query: nil, sort: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Crm::ListSearchRequest} for more details.
        #
        #   @param list_ids [Array<String>] ILS list ids to be included in search results. If not specified, all lists match
        #
        #   @param offset [Integer] Value used to paginate through lists. The `offset` provided in the response can
        #
        #   @param processing_types [Array<String>] List processing types to be included in search results. If not specified, all li
        #
        #   @param additional_filter_properties [Array<String>] The property names of any additional list properties to include in the response.
        #
        #   @param count [Integer] The number of lists to include in the response. Defaults to `20` if no value is
        #
        #   @param object_type_id [String]
        #
        #   @param query [String] The `query` that will be used to search for lists by list name. If no `query` is
        #
        #   @param sort [String] Sort field and order
      end
    end
  end
end
