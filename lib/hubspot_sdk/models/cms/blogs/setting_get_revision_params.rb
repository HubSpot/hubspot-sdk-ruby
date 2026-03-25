# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      module Blogs
        # @see HubspotSDK::Resources::Cms::Blogs::Settings#get_revision
        class SettingGetRevisionParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute blog_id
          #
          #   @return [String]
          required :blog_id, String

          # @!attribute revision_id
          #
          #   @return [String]
          required :revision_id, String

          # @!method initialize(blog_id:, revision_id:, request_options: {})
          #   @param blog_id [String]
          #   @param revision_id [String]
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
