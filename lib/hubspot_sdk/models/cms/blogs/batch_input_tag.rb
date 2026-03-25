# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      module Blogs
        class BatchInputTag < HubspotSDK::Internal::Type::BaseModel
          # @!attribute inputs
          #   Blog tags to input.
          #
          #   @return [Array<HubspotSDK::Models::Cms::Blogs::Tag>]
          required :inputs, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::Blogs::Tag] }

          # @!method initialize(inputs:)
          #   @param inputs [Array<HubspotSDK::Models::Cms::Blogs::Tag>] Blog tags to input.
        end
      end
    end
  end
end
