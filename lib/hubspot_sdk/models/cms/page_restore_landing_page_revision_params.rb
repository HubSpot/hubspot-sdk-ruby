# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      # @see HubspotSDK::Resources::Cms::Pages#restore_landing_page_revision
      class PageRestoreLandingPageRevisionParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute object_id_
        #
        #   @return [String]
        required :object_id_, String

        # @!attribute revision_id
        #
        #   @return [String]
        required :revision_id, String

        # @!method initialize(object_id_:, revision_id:, request_options: {})
        #   @param object_id_ [String]
        #   @param revision_id [String]
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
