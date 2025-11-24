# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      module Hubdb
        # @see HubspotSDK::Resources::Cms::Hubdb::Rows#list_draft
        class RowListDraftParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute after
          #   The cursor token value to get the next set of results. You can get this from the
          #   `paging.next.after` JSON property of a paged response containing more results.
          #
          #   @return [String, nil]
          optional :after, String

          # @!attribute archived
          #   Specifies whether to return archived rows. Defaults to `false`.
          #
          #   @return [Boolean, nil]
          optional :archived, HubspotSDK::Internal::Type::Boolean

          # @!attribute limit
          #   The maximum number of results to return. Default is `1000`.
          #
          #   @return [Integer, nil]
          optional :limit, Integer

          # @!attribute offset
          #   The number of rows to skip before starting to return results.
          #
          #   @return [Integer, nil]
          optional :offset, Integer

          # @!attribute properties
          #   Specify the column names to get results containing only the required columns
          #   instead of all column details. If you want to include multiple columns in the
          #   result, use this query param as many times.
          #
          #   @return [Array<String>, nil]
          optional :properties, HubspotSDK::Internal::Type::ArrayOf[String]

          # @!attribute sort
          #   Specifies the column names to sort the results by.
          #
          #   @return [Array<String>, nil]
          optional :sort, HubspotSDK::Internal::Type::ArrayOf[String]

          # @!method initialize(after: nil, archived: nil, limit: nil, offset: nil, properties: nil, sort: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {HubspotSDK::Models::Cms::Hubdb::RowListDraftParams} for more details.
          #
          #   @param after [String] The cursor token value to get the next set of results. You can get this from the
          #
          #   @param archived [Boolean] Specifies whether to return archived rows. Defaults to `false`.
          #
          #   @param limit [Integer] The maximum number of results to return. Default is `1000`.
          #
          #   @param offset [Integer] The number of rows to skip before starting to return results.
          #
          #   @param properties [Array<String>] Specify the column names to get results containing only the required columns ins
          #
          #   @param sort [Array<String>] Specifies the column names to sort the results by.
          #
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
