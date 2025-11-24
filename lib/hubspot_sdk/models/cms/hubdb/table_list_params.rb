# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      module Hubdb
        # @see HubspotSDK::Resources::Cms::Hubdb::Tables#list
        class TableListParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute after
          #   The cursor token value to get the next set of results. You can get this from the
          #   `paging.next.after` JSON property of a paged response containing more results.
          #
          #   @return [String, nil]
          optional :after, String

          # @!attribute archived
          #   Specifies whether to return archived tables. Defaults to `false`.
          #
          #   @return [Boolean, nil]
          optional :archived, HubspotSDK::Internal::Type::Boolean

          # @!attribute content_type
          #   Specifies the content type for the response.
          #
          #   @return [String, nil]
          optional :content_type, String

          # @!attribute created_after
          #   Only return tables created after the specified time.
          #
          #   @return [Time, nil]
          optional :created_after, Time

          # @!attribute created_at
          #   Only return tables created at exactly the specified time.
          #
          #   @return [Time, nil]
          optional :created_at, Time

          # @!attribute created_before
          #   Only return tables created before the specified time.
          #
          #   @return [Time, nil]
          optional :created_before, Time

          # @!attribute is_get_localized_schema
          #   Indicates whether to retrieve the localized schema for the tables.
          #
          #   @return [Boolean, nil]
          optional :is_get_localized_schema, HubspotSDK::Internal::Type::Boolean

          # @!attribute limit
          #   The maximum number of results to return. Default is 1000.
          #
          #   @return [Integer, nil]
          optional :limit, Integer

          # @!attribute sort
          #   Specifies which fields to use for sorting results. Valid fields are `name`,
          #   `createdAt`, `updatedAt`, `createdBy`, `updatedBy`. `createdAt` will be used by
          #   default.
          #
          #   @return [Array<String>, nil]
          optional :sort, HubspotSDK::Internal::Type::ArrayOf[String]

          # @!attribute updated_after
          #   Only return tables last updated after the specified time.
          #
          #   @return [Time, nil]
          optional :updated_after, Time

          # @!attribute updated_at
          #   Only return tables last updated at exactly the specified time.
          #
          #   @return [Time, nil]
          optional :updated_at, Time

          # @!attribute updated_before
          #   Only return tables last updated before the specified time.
          #
          #   @return [Time, nil]
          optional :updated_before, Time

          # @!method initialize(after: nil, archived: nil, content_type: nil, created_after: nil, created_at: nil, created_before: nil, is_get_localized_schema: nil, limit: nil, sort: nil, updated_after: nil, updated_at: nil, updated_before: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {HubspotSDK::Models::Cms::Hubdb::TableListParams} for more details.
          #
          #   @param after [String] The cursor token value to get the next set of results. You can get this from the
          #
          #   @param archived [Boolean] Specifies whether to return archived tables. Defaults to `false`.
          #
          #   @param content_type [String] Specifies the content type for the response.
          #
          #   @param created_after [Time] Only return tables created after the specified time.
          #
          #   @param created_at [Time] Only return tables created at exactly the specified time.
          #
          #   @param created_before [Time] Only return tables created before the specified time.
          #
          #   @param is_get_localized_schema [Boolean] Indicates whether to retrieve the localized schema for the tables.
          #
          #   @param limit [Integer] The maximum number of results to return. Default is 1000.
          #
          #   @param sort [Array<String>] Specifies which fields to use for sorting results. Valid fields are `name`, `cre
          #
          #   @param updated_after [Time] Only return tables last updated after the specified time.
          #
          #   @param updated_at [Time] Only return tables last updated at exactly the specified time.
          #
          #   @param updated_before [Time] Only return tables last updated before the specified time.
          #
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
