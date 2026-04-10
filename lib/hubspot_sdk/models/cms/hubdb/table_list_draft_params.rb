# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      module Hubdb
        # @see HubSpotSDK::Resources::Cms::Hubdb::Tables#list_draft
        class TableListDraftParams < HubSpotSDK::Internal::Type::BaseModel
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          # @!attribute after
          #   The paging cursor token of the last successfully read resource will be returned
          #   as the `paging.next.after` JSON property of a paged response containing more
          #   results.
          #
          #   @return [String, nil]
          optional :after, String

          # @!attribute archived
          #   Whether to return only results that have been archived.
          #
          #   @return [Boolean, nil]
          optional :archived, HubSpotSDK::Internal::Type::Boolean

          # @!attribute content_type
          #
          #   @return [String, nil]
          optional :content_type, String

          # @!attribute created_after
          #
          #   @return [Time, nil]
          optional :created_after, Time

          # @!attribute created_at
          #
          #   @return [Time, nil]
          optional :created_at, Time

          # @!attribute created_before
          #
          #   @return [Time, nil]
          optional :created_before, Time

          # @!attribute is_get_localized_schema
          #
          #   @return [Boolean, nil]
          optional :is_get_localized_schema, HubSpotSDK::Internal::Type::Boolean

          # @!attribute limit
          #   The maximum number of results to display per page.
          #
          #   @return [Integer, nil]
          optional :limit, Integer

          # @!attribute sort
          #
          #   @return [Array<String>, nil]
          optional :sort, HubSpotSDK::Internal::Type::ArrayOf[String]

          # @!attribute updated_after
          #
          #   @return [Time, nil]
          optional :updated_after, Time

          # @!attribute updated_at
          #
          #   @return [Time, nil]
          optional :updated_at, Time

          # @!attribute updated_before
          #
          #   @return [Time, nil]
          optional :updated_before, Time

          # @!method initialize(after: nil, archived: nil, content_type: nil, created_after: nil, created_at: nil, created_before: nil, is_get_localized_schema: nil, limit: nil, sort: nil, updated_after: nil, updated_at: nil, updated_before: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {HubSpotSDK::Models::Cms::Hubdb::TableListDraftParams} for more details.
          #
          #   @param after [String] The paging cursor token of the last successfully read resource will be returned
          #
          #   @param archived [Boolean] Whether to return only results that have been archived.
          #
          #   @param content_type [String]
          #
          #   @param created_after [Time]
          #
          #   @param created_at [Time]
          #
          #   @param created_before [Time]
          #
          #   @param is_get_localized_schema [Boolean]
          #
          #   @param limit [Integer] The maximum number of results to display per page.
          #
          #   @param sort [Array<String>]
          #
          #   @param updated_after [Time]
          #
          #   @param updated_at [Time]
          #
          #   @param updated_before [Time]
          #
          #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
