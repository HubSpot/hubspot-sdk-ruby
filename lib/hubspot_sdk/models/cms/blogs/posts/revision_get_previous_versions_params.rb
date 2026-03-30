# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      module Blogs
        module Posts
          # @see HubspotSDK::Resources::Cms::Blogs::Posts::Revisions#get_previous_versions
          class RevisionGetPreviousVersionsParams < HubspotSDK::Internal::Type::BaseModel
            extend HubspotSDK::Internal::Type::RequestParameters::Converter
            include HubspotSDK::Internal::Type::RequestParameters

            # @!attribute object_id_
            #
            #   @return [String]
            required :object_id_, String

            # @!attribute after
            #   The paging cursor token of the last successfully read resource will be returned
            #   as the `paging.next.after` JSON property of a paged response containing more
            #   results.
            #
            #   @return [String, nil]
            optional :after, String

            # @!attribute before
            #
            #   @return [String, nil]
            optional :before, String

            # @!attribute limit
            #   The maximum number of results to display per page.
            #
            #   @return [Integer, nil]
            optional :limit, Integer

            # @!method initialize(object_id_:, after: nil, before: nil, limit: nil, request_options: {})
            #   Some parameter documentations has been truncated, see
            #   {HubspotSDK::Models::Cms::Blogs::Posts::RevisionGetPreviousVersionsParams} for
            #   more details.
            #
            #   @param object_id_ [String]
            #
            #   @param after [String] The paging cursor token of the last successfully read resource will be returned
            #
            #   @param before [String]
            #
            #   @param limit [Integer] The maximum number of results to display per page.
            #
            #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
