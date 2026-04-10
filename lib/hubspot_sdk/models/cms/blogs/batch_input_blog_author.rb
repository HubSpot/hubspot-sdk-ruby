# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      module Blogs
        class BatchInputBlogAuthor < HubSpotSDK::Internal::Type::BaseModel
          # @!attribute inputs
          #   Blog authors to input.
          #
          #   @return [Array<HubSpotSDK::Models::Cms::Blogs::BlogAuthor>]
          required :inputs, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Cms::Blogs::BlogAuthor] }

          # @!method initialize(inputs:)
          #   @param inputs [Array<HubSpotSDK::Models::Cms::Blogs::BlogAuthor>] Blog authors to input.
        end
      end
    end
  end
end
