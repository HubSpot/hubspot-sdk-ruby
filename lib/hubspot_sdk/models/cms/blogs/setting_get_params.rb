# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      module Blogs
        # @see HubSpotSDK::Resources::Cms::Blogs::Settings#get
        class SettingGetParams < HubSpotSDK::Internal::Type::BaseModel
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          # @!attribute blog_id
          #
          #   @return [String]
          required :blog_id, String

          # @!method initialize(blog_id:, request_options: {})
          #   @param blog_id [String]
          #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
