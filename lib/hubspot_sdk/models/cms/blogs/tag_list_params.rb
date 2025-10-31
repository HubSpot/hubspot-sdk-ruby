# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      module Blogs
        # @see HubspotSDK::Resources::Cms::Blogs::Tags#list
        class TagListParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute after
          #   The cursor token value to get the next set of results. You can get this from the
          #   `paging.next.after` JSON property of a paged response containing more results.
          #
          #   @return [String, nil]
          optional :after, String

          # @!attribute archived
          #   Specifies whether to return deleted Blog Tags. Defaults to `false`.
          #
          #   @return [Boolean, nil]
          optional :archived, HubspotSDK::Internal::Type::Boolean

          # @!attribute created_after
          #   Only return Blog Tags created after the specified time.
          #
          #   @return [Time, nil]
          optional :created_after, Time

          # @!attribute created_at
          #   Only return Blog Tags created at exactly the specified time.
          #
          #   @return [Time, nil]
          optional :created_at, Time

          # @!attribute created_before
          #   Only return Blog Tags created before the specified time.
          #
          #   @return [Time, nil]
          optional :created_before, Time

          # @!attribute limit
          #   The maximum number of results to return. Default is 100.
          #
          #   @return [Integer, nil]
          optional :limit, Integer

          # @!attribute property
          #
          #   @return [String, nil]
          optional :property, String

          # @!attribute sort
          #   Specifies which fields to use for sorting results. Valid fields are `name`,
          #   `createdAt`, `updatedAt`, `createdBy`, `updatedBy`. `createdAt` will be used by
          #   default.
          #
          #   @return [Array<String>, nil]
          optional :sort, HubspotSDK::Internal::Type::ArrayOf[String]

          # @!attribute updated_after
          #   Only return Blog Tags last updated after the specified time.
          #
          #   @return [Time, nil]
          optional :updated_after, Time

          # @!attribute updated_at
          #   Only return Blog Tags last updated at exactly the specified time.
          #
          #   @return [Time, nil]
          optional :updated_at, Time

          # @!attribute updated_before
          #   Only return Blog Tags last updated before the specified time.
          #
          #   @return [Time, nil]
          optional :updated_before, Time

          # @!method initialize(after: nil, archived: nil, created_after: nil, created_at: nil, created_before: nil, limit: nil, property: nil, sort: nil, updated_after: nil, updated_at: nil, updated_before: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {HubspotSDK::Models::Cms::Blogs::TagListParams} for more details.
          #
          #   @param after [String] The cursor token value to get the next set of results. You can get this from the
          #
          #   @param archived [Boolean] Specifies whether to return deleted Blog Tags. Defaults to `false`.
          #
          #   @param created_after [Time] Only return Blog Tags created after the specified time.
          #
          #   @param created_at [Time] Only return Blog Tags created at exactly the specified time.
          #
          #   @param created_before [Time] Only return Blog Tags created before the specified time.
          #
          #   @param limit [Integer] The maximum number of results to return. Default is 100.
          #
          #   @param property [String]
          #
          #   @param sort [Array<String>] Specifies which fields to use for sorting results. Valid fields are `name`, `cre
          #
          #   @param updated_after [Time] Only return Blog Tags last updated after the specified time.
          #
          #   @param updated_at [Time] Only return Blog Tags last updated at exactly the specified time.
          #
          #   @param updated_before [Time] Only return Blog Tags last updated before the specified time.
          #
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
