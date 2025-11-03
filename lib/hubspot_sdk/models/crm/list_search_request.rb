# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class ListSearchRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute additional_properties
        #   The property names of any additional list properties to include in the response.
        #   Properties that do not exist or that are empty for a particular list are not
        #   included in the response.
        #
        #   By default, all requests will fetch the following properties for each list:
        #   `hs_list_size`, `hs_last_record_added_at`, `hs_last_record_removed_at`,
        #   `hs_folder_name`, and `hs_list_reference_count`.
        #
        #   @return [Array<String>, nil]
        optional :additional_properties,
                 HubspotSDK::Internal::Type::ArrayOf[String],
                 api_name: :additionalProperties

        # @!attribute count
        #   The number of lists to include in the response. Defaults to `20` if no value is
        #   provided. The max `count` is `500`.
        #
        #   @return [Integer, nil]
        optional :count, Integer

        # @!attribute list_ids
        #   The `listIds` that will be used to filter results by `listId`. If values are
        #   provided, then the response will only include results that have a `listId` in
        #   this array.
        #
        #   If no value is provided, or if an empty list is provided, then the results will
        #   not be filtered by `listId`.
        #
        #   @return [Array<String>, nil]
        optional :list_ids, HubspotSDK::Internal::Type::ArrayOf[String], api_name: :listIds

        # @!attribute offset
        #   Value used to paginate through lists. The `offset` provided in the response can
        #   be used in the next request to fetch the next page of results. Defaults to `0`
        #   if no offset is provided.
        #
        #   @return [Integer, nil]
        optional :offset, Integer

        # @!attribute processing_types
        #   The `processingTypes` that will be used to filter results by `processingType`.
        #   If values are provided, then the response will only include results that have a
        #   `processingType` in this array.
        #
        #   If no value is provided, or if an empty list is provided, then results will not
        #   be filtered by `processingType`.
        #
        #   Valid `processingTypes` are: `MANUAL`, `SNAPSHOT`, or `DYNAMIC`.
        #
        #   @return [Array<String>, nil]
        optional :processing_types, HubspotSDK::Internal::Type::ArrayOf[String], api_name: :processingTypes

        # @!attribute query
        #   The `query` that will be used to search for lists by list name. If no `query` is
        #   provided, then the results will include all lists.
        #
        #   @return [String, nil]
        optional :query, String

        # @!attribute sort
        #
        #   @return [String, nil]
        optional :sort, String

        # @!method initialize(additional_properties: nil, count: nil, list_ids: nil, offset: nil, processing_types: nil, query: nil, sort: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Crm::ListSearchRequest} for more details.
        #
        #   The request object used for searching through lists.
        #
        #   @param additional_properties [Array<String>] The property names of any additional list properties to include in the response.
        #
        #   @param count [Integer] The number of lists to include in the response. Defaults to `20` if no value is
        #
        #   @param list_ids [Array<String>] The `listIds` that will be used to filter results by `listId`. If values are pro
        #
        #   @param offset [Integer] Value used to paginate through lists. The `offset` provided in the response can
        #
        #   @param processing_types [Array<String>] The `processingTypes` that will be used to filter results by `processingType`. I
        #
        #   @param query [String] The `query` that will be used to search for lists by list name. If no `query` is
        #
        #   @param sort [String]
      end
    end
  end
end
