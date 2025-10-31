# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      module Blogs
        class BatchInputBlogAuthor < HubspotSDK::Internal::Type::BaseModel
          # @!attribute inputs
          #   Blog authors to input.
          #
          #   @return [Array<HubspotSDK::Models::Cms::Blogs::BlogAuthor>]
          required :inputs, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::Blogs::BlogAuthor] }

          # @!method initialize(inputs:)
          #   Wrapper for providing an array of blog authors as inputs.
          #
          #   @param inputs [Array<HubspotSDK::Models::Cms::Blogs::BlogAuthor>] Blog authors to input.
        end
      end
    end
  end
end
