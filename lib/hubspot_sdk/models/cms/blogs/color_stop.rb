# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      module Blogs
        class ColorStop < HubspotSDK::Internal::Type::BaseModel
          # @!attribute color
          #
          #   @return [HubspotSDK::Models::Cms::Blogs::RgbaColor]
          required :color, -> { HubspotSDK::Cms::Blogs::RgbaColor }

          # @!method initialize(color:)
          #   @param color [HubspotSDK::Models::Cms::Blogs::RgbaColor]
        end
      end
    end
  end
end
