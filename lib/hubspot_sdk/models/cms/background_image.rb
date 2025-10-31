# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class BackgroundImage < HubspotSDK::Internal::Type::BaseModel
        # @!attribute background_position
        #
        #   @return [String]
        required :background_position, String, api_name: :backgroundPosition

        # @!attribute background_size
        #
        #   @return [String]
        required :background_size, String, api_name: :backgroundSize

        # @!attribute image_url
        #
        #   @return [String]
        required :image_url, String, api_name: :imageUrl

        # @!method initialize(background_position:, background_size:, image_url:)
        #   @param background_position [String]
        #   @param background_size [String]
        #   @param image_url [String]
      end
    end
  end
end
