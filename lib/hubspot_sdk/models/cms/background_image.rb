# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class BackgroundImage < HubspotSDK::Internal::Type::BaseModel
        # @!attribute background_position
        #   Defines the position of the background image.
        #
        #   @return [String]
        required :background_position, String, api_name: :backgroundPosition

        # @!attribute background_size
        #   Specifies the size of the background image.
        #
        #   @return [String]
        required :background_size, String, api_name: :backgroundSize

        # @!attribute image_url
        #   The URL of the background image.
        #
        #   @return [String]
        required :image_url, String, api_name: :imageUrl

        # @!method initialize(background_position:, background_size:, image_url:)
        #   @param background_position [String] Defines the position of the background image.
        #
        #   @param background_size [String] Specifies the size of the background image.
        #
        #   @param image_url [String] The URL of the background image.
      end
    end
  end
end
