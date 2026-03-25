# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      module Blogs
        class Margin < HubspotSDK::Internal::Type::BaseModel
          # @!attribute bottom
          #
          #   @return [HubspotSDK::Models::Cms::Blogs::Size]
          required :bottom, -> { HubspotSDK::Cms::Blogs::Size }

          # @!attribute top
          #
          #   @return [HubspotSDK::Models::Cms::Blogs::Size]
          required :top, -> { HubspotSDK::Cms::Blogs::Size }

          # @!method initialize(bottom:, top:)
          #   @param bottom [HubspotSDK::Models::Cms::Blogs::Size]
          #   @param top [HubspotSDK::Models::Cms::Blogs::Size]
        end
      end
    end
  end
end
