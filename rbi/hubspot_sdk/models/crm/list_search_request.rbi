# typed: strong

module HubspotSDK
  module Models
    module Crm
      class ListSearchRequest < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::ListSearchRequest,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The property names of any additional list properties to include in the response.
        # Properties that do not exist or that are empty for a particular list are not
        # included in the response.
        #
        # By default, all requests will fetch the following properties for each list:
        # `hs_list_size`, `hs_last_record_added_at`, `hs_last_record_removed_at`,
        # `hs_folder_name`, and `hs_list_reference_count`.
        sig { returns(T::Array[String]) }
        attr_accessor :additional_properties

        # The `listIds` that will be used to filter results by `listId`. If values are
        # provided, then the response will only include results that have a `listId` in
        # this array.
        #
        # If no value is provided, or if an empty list is provided, then the results will
        # not be filtered by `listId`.
        sig { returns(T::Array[String]) }
        attr_accessor :list_ids

        # Value used to paginate through lists. The `offset` provided in the response can
        # be used in the next request to fetch the next page of results. Defaults to `0`
        # if no offset is provided.
        sig { returns(Integer) }
        attr_accessor :offset

        # The `processingTypes` that will be used to filter results by `processingType`.
        # If values are provided, then the response will only include results that have a
        # `processingType` in this array.
        #
        # If no value is provided, or if an empty list is provided, then results will not
        # be filtered by `processingType`.
        #
        # Valid `processingTypes` are: `MANUAL`, `SNAPSHOT`, or `DYNAMIC`.
        sig { returns(T::Array[String]) }
        attr_accessor :processing_types

        # The number of lists to include in the response. Defaults to `20` if no value is
        # provided. The max `count` is `500`.
        sig { returns(T.nilable(Integer)) }
        attr_reader :count

        sig { params(count: Integer).void }
        attr_writer :count

        sig { returns(T.nilable(String)) }
        attr_reader :object_type_id

        sig { params(object_type_id: String).void }
        attr_writer :object_type_id

        # The `query` that will be used to search for lists by list name. If no `query` is
        # provided, then the results will include all lists.
        sig { returns(T.nilable(String)) }
        attr_reader :query

        sig { params(query: String).void }
        attr_writer :query

        # Sort field and order
        sig { returns(T.nilable(String)) }
        attr_reader :sort

        sig { params(sort: String).void }
        attr_writer :sort

        sig do
          params(
            additional_properties: T::Array[String],
            list_ids: T::Array[String],
            offset: Integer,
            processing_types: T::Array[String],
            count: Integer,
            object_type_id: String,
            query: String,
            sort: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The property names of any additional list properties to include in the response.
          # Properties that do not exist or that are empty for a particular list are not
          # included in the response.
          #
          # By default, all requests will fetch the following properties for each list:
          # `hs_list_size`, `hs_last_record_added_at`, `hs_last_record_removed_at`,
          # `hs_folder_name`, and `hs_list_reference_count`.
          additional_properties:,
          # The `listIds` that will be used to filter results by `listId`. If values are
          # provided, then the response will only include results that have a `listId` in
          # this array.
          #
          # If no value is provided, or if an empty list is provided, then the results will
          # not be filtered by `listId`.
          list_ids:,
          # Value used to paginate through lists. The `offset` provided in the response can
          # be used in the next request to fetch the next page of results. Defaults to `0`
          # if no offset is provided.
          offset:,
          # The `processingTypes` that will be used to filter results by `processingType`.
          # If values are provided, then the response will only include results that have a
          # `processingType` in this array.
          #
          # If no value is provided, or if an empty list is provided, then results will not
          # be filtered by `processingType`.
          #
          # Valid `processingTypes` are: `MANUAL`, `SNAPSHOT`, or `DYNAMIC`.
          processing_types:,
          # The number of lists to include in the response. Defaults to `20` if no value is
          # provided. The max `count` is `500`.
          count: nil,
          object_type_id: nil,
          # The `query` that will be used to search for lists by list name. If no `query` is
          # provided, then the results will include all lists.
          query: nil,
          # Sort field and order
          sort: nil
        )
        end

        sig do
          override.returns(
            {
              additional_properties: T::Array[String],
              list_ids: T::Array[String],
              offset: Integer,
              processing_types: T::Array[String],
              count: Integer,
              object_type_id: String,
              query: String,
              sort: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
