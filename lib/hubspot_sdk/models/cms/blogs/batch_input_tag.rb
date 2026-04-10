# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      module Blogs
        class BatchInputTag < HubSpotSDK::Internal::Type::BaseModel
          # @!attribute inputs
          #   Blog tags to input.
          #
          #   @return [Array<HubSpotSDK::Models::Cms::Blogs::Tag>]
          required :inputs, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Cms::Blogs::Tag] }

          # @!method initialize(inputs:)
          #   @param inputs [Array<HubSpotSDK::Models::Cms::Blogs::Tag>] Blog tags to input.
        end
      end
    end
  end
end
