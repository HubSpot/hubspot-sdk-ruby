# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class VideoObject < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [Integer]
        required :id, Integer

        # @!attribute deeplink_url
        #
        #   @return [String]
        required :deeplink_url, String, api_name: :deeplinkUrl

        # @!attribute file_id
        #
        #   @return [Integer]
        required :file_id, Integer, api_name: :fileId

        # @!method initialize(id:, deeplink_url:, file_id:)
        #   @param id [Integer]
        #   @param deeplink_url [String]
        #   @param file_id [Integer]
      end
    end
  end
end
