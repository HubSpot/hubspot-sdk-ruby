# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      module Blogs
        class BatchInputBlogPost < HubspotSDK::Internal::Type::BaseModel
          # @!attribute inputs
          #   Blog posts to input.
          #
          #   @return [Array<HubspotSDK::Models::Cms::Blogs::BlogPost>]
          required :inputs, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::Blogs::BlogPost] }

          # @!method initialize(inputs:)
          #   @param inputs [Array<HubspotSDK::Models::Cms::Blogs::BlogPost>] Blog posts to input.
        end
      end
    end
  end
end
