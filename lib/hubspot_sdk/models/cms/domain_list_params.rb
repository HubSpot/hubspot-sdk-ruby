# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      # @see HubspotSDK::Resources::Cms::Domains#list
      class DomainListParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

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

        # @!attribute created_after
        #   Only return domains created after this date.
        #
        #   @return [Time, nil]
        optional :created_after, Time

        # @!attribute created_at
        #   Only return domains created at this date.
        #
        #   @return [Time, nil]
        optional :created_at, Time

        # @!attribute created_before
        #   Only return domains created before this date.
        #
        #   @return [Time, nil]
        optional :created_before, Time

        # @!attribute limit
        #   Maximum number of results per page.
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!attribute sort
        #
        #   @return [Array<String>, nil]
        optional :sort, HubspotSDK::Internal::Type::ArrayOf[String]

        # @!attribute updated_after
        #   Only return domains updated after this date.
        #
        #   @return [Time, nil]
        optional :updated_after, Time

        # @!attribute updated_at
        #   Only return domains updated at this date.
        #
        #   @return [Time, nil]
        optional :updated_at, Time

        # @!attribute updated_before
        #   Only return domains updated before this date.
        #
        #   @return [Time, nil]
        optional :updated_before, Time

        # @!method initialize(after: nil, archived: nil, created_after: nil, created_at: nil, created_before: nil, limit: nil, sort: nil, updated_after: nil, updated_at: nil, updated_before: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Cms::DomainListParams} for more details.
        #
        #   @param after [String] The paging cursor token of the last successfully read resource will be returned
        #
        #   @param archived [Boolean] Whether to return only results that have been archived.
        #
        #   @param created_after [Time] Only return domains created after this date.
        #
        #   @param created_at [Time] Only return domains created at this date.
        #
        #   @param created_before [Time] Only return domains created before this date.
        #
        #   @param limit [Integer] Maximum number of results per page.
        #
        #   @param sort [Array<String>]
        #
        #   @param updated_after [Time] Only return domains updated after this date.
        #
        #   @param updated_at [Time] Only return domains updated at this date.
        #
        #   @param updated_before [Time] Only return domains updated before this date.
        #
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
