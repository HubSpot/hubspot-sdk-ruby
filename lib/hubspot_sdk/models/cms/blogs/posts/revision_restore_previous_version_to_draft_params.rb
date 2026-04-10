# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      module Blogs
        module Posts
          # @see HubSpotSDK::Resources::Cms::Blogs::Posts::Revisions#restore_previous_version_to_draft
          class RevisionRestorePreviousVersionToDraftParams < HubSpotSDK::Internal::Type::BaseModel
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
