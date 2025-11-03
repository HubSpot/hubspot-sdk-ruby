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
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :additional_properties

        sig { params(additional_properties: T::Array[String]).void }
        attr_writer :additional_properties

        # The number of lists to include in the response. Defaults to `20` if no value is
        # provided. The max `count` is `500`.
        sig { returns(T.nilable(Integer)) }
        attr_reader :count

        sig { params(count: Integer).void }
        attr_writer :count

        # The `listIds` that will be used to filter results by `listId`. If values are
        # provided, then the response will only include results that have a `listId` in
        # this array.
        #
        # If no value is provided, or if an empty list is provided, then the results will
        # not be filtered by `listId`.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :list_ids

        sig { params(list_ids: T::Array[String]).void }
        attr_writer :list_ids

        # Value used to paginate through lists. The `offset` provided in the response can
        # be used in the next request to fetch the next page of results. Defaults to `0`
        # if no offset is provided.
        sig { returns(T.nilable(Integer)) }
        attr_reader :offset

        sig { params(offset: Integer).void }
        attr_writer :offset

        # The `processingTypes` that will be used to filter results by `processingType`.
        # If values are provided, then the response will only include results that have a
        # `processingType` in this array.
        #
        # If no value is provided, or if an empty list is provided, then results will not
        # be filtered by `processingType`.
        #
        # Valid `processingTypes` are: `MANUAL`, `SNAPSHOT`, or `DYNAMIC`.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :processing_types

        sig { params(processing_types: T::Array[String]).void }
        attr_writer :processing_types

        # The `query` that will be used to search for lists by list name. If no `query` is
        # provided, then the results will include all lists.
        sig { returns(T.nilable(String)) }
        attr_reader :query

        sig { params(query: String).void }
        attr_writer :query

        sig { returns(T.nilable(String)) }
        attr_reader :sort

        sig { params(sort: String).void }
        attr_writer :sort

        # The request object used for searching through lists.
        sig do
          params(
            additional_properties: T::Array[String],
            count: Integer,
            list_ids: T::Array[String],
            offset: Integer,
            processing_types: T::Array[String],
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
          additional_properties: nil,
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
          # Value used to paginate through lists. The `offset` provided in the response can
          # be used in the next request to fetch the next page of results. Defaults to `0`
          # if no offset is provided.
          offset: nil,
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
          sort: nil
        )
        end

        sig do
          override.returns(
            {
              additional_properties: T::Array[String],
              count: Integer,
              list_ids: T::Array[String],
              offset: Integer,
              processing_types: T::Array[String],
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
