# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      module Blogs
        # @see HubSpotSDK::Resources::Cms::Blogs::Posts#clone_
        class PostCloneParams < HubSpotSDK::Models::Cms::ContentCloneRequestVNext
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          # @!method initialize(request_options: {})
          #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
