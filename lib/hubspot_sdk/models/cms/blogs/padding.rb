# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      module Blogs
        class Padding < HubspotSDK::Internal::Type::BaseModel
          # @!attribute bottom
          #
          #   @return [HubspotSDK::Models::Cms::Blogs::Size]
          required :bottom, -> { HubspotSDK::Cms::Blogs::Size }

          # @!attribute left
          #
          #   @return [HubspotSDK::Models::Cms::Blogs::Size]
          required :left, -> { HubspotSDK::Cms::Blogs::Size }

          # @!attribute right
          #
          #   @return [HubspotSDK::Models::Cms::Blogs::Size]
          required :right, -> { HubspotSDK::Cms::Blogs::Size }

          # @!attribute top
          #
          #   @return [HubspotSDK::Models::Cms::Blogs::Size]
          required :top, -> { HubspotSDK::Cms::Blogs::Size }

          # @!method initialize(bottom:, left:, right:, top:)
          #   @param bottom [HubspotSDK::Models::Cms::Blogs::Size]
          #   @param left [HubspotSDK::Models::Cms::Blogs::Size]
          #   @param right [HubspotSDK::Models::Cms::Blogs::Size]
          #   @param top [HubspotSDK::Models::Cms::Blogs::Size]
        end
      end
    end
  end
end
