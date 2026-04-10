# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      module Blogs
        # @see HubSpotSDK::Resources::Cms::Blogs::Tags#create
        class TagCreateParams < HubSpotSDK::Models::Cms::Blogs::Tag
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          # @!method initialize(request_options: {})
          #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
