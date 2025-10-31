# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      module Pages
        # @see HubspotSDK::Resources::Cms::Pages::LandingPages#list_folder_revisions
        class LandingPageListFolderRevisionsParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute after
          #   The cursor token value to get the next set of results. You can get this from the
          #   `paging.next.after` JSON property of a paged response containing more results.
          #
          #   @return [String, nil]
          optional :after, String

          # @!attribute before
          #
          #   @return [String, nil]
          optional :before, String

          # @!attribute limit
          #   The maximum number of results to return. Default is 100.
          #
          #   @return [Integer, nil]
          optional :limit, Integer

          # @!method initialize(after: nil, before: nil, limit: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {HubspotSDK::Models::Cms::Pages::LandingPageListFolderRevisionsParams} for more
          #   details.
          #
          #   @param after [String] The cursor token value to get the next set of results. You can get this from the
          #
          #   @param before [String]
          #
          #   @param limit [Integer] The maximum number of results to return. Default is 100.
          #
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
