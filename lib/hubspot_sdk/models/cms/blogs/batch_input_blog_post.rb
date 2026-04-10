# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      module Blogs
        class BatchInputBlogPost < HubSpotSDK::Internal::Type::BaseModel
          # @!attribute inputs
          #   Blog posts to input.
          #
          #   @return [Array<HubSpotSDK::Models::Cms::Blogs::BlogPost>]
          required :inputs, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Cms::Blogs::BlogPost] }

          # @!method initialize(inputs:)
          #   @param inputs [Array<HubSpotSDK::Models::Cms::Blogs::BlogPost>] Blog posts to input.
        end
      end
    end
  end
end
