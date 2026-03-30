# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      module Hubdb
        # @see HubspotSDK::Resources::Cms::Hubdb::Rows#list
        class RowListParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute table_id_or_name
          #
          #   @return [String]
          required :table_id_or_name, String

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
          optional :archived, HubspotSDK::Internal::Type::Boolean

          # @!attribute limit
          #   The maximum number of results to display per page.
          #
          #   @return [Integer, nil]
          optional :limit, Integer

          # @!attribute offset
          #
          #   @return [Integer, nil]
          optional :offset, Integer

          # @!attribute properties
          #
          #   @return [Array<String>, nil]
          optional :properties, HubspotSDK::Internal::Type::ArrayOf[String]

          # @!attribute sort
          #
          #   @return [Array<String>, nil]
          optional :sort, HubspotSDK::Internal::Type::ArrayOf[String]

          # @!method initialize(table_id_or_name:, after: nil, archived: nil, limit: nil, offset: nil, properties: nil, sort: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {HubspotSDK::Models::Cms::Hubdb::RowListParams} for more details.
          #
          #   @param table_id_or_name [String]
          #
          #   @param after [String] The paging cursor token of the last successfully read resource will be returned
          #
          #   @param archived [Boolean] Whether to return only results that have been archived.
          #
          #   @param limit [Integer] The maximum number of results to display per page.
          #
          #   @param offset [Integer]
          #
          #   @param properties [Array<String>]
          #
          #   @param sort [Array<String>]
          #
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
