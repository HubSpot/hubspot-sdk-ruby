# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      module Pages
        module SitePages
          # @see HubSpotSDK::Resources::Cms::Pages::SitePages::Revisions#restore_site_page_revision_to_draft
          class RevisionRestoreSitePageRevisionToDraftParams < HubSpotSDK::Internal::Type::BaseModel
            extend HubSpotSDK::Internal::Type::RequestParameters::Converter
            include HubSpotSDK::Internal::Type::RequestParameters

            # @!attribute object_id_
            #
            #   @return [String]
            required :object_id_, String

            # @!attribute revision_id
            #
            #   @return [Integer]
            required :revision_id, Integer

            # @!method initialize(object_id_:, revision_id:, request_options: {})
            #   @param object_id_ [String]
            #   @param revision_id [Integer]
            #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
