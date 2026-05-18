# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      module Pages
        module SitePages
          # @see HubSpotSDK::Resources::Cms::Pages::SitePages::Revisions#list_site_page_revisions
          class RevisionListSitePageRevisionsParams < HubSpotSDK::Internal::Type::BaseModel
            extend HubSpotSDK::Internal::Type::RequestParameters::Converter
            include HubSpotSDK::Internal::Type::RequestParameters

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
            #   {HubSpotSDK::Models::Cms::Pages::SitePages::RevisionListSitePageRevisionsParams}
            #   for more details.
            #
            #   @param object_id_ [String]
            #
            #   @param after [String] The paging cursor token of the last successfully read resource will be returned
            #
            #   @param before [String]
            #
            #   @param limit [Integer] The maximum number of results to display per page.
            #
            #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
