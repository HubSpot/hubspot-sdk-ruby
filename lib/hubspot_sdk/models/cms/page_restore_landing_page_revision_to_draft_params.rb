# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      # @see HubspotSDK::Resources::Cms::Pages#restore_landing_page_revision_to_draft
      class PageRestoreLandingPageRevisionToDraftParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

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
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
