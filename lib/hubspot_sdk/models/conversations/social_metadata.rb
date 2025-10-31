# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      class SocialMetadata < HubspotSDK::Internal::Type::BaseModel
        # @!attribute media_type
        #
        #   @return [String]
        required :media_type, String, api_name: :mediaType

        # @!attribute id
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute description
        #
        #   @return [String, nil]
        optional :description, String

        # @!attribute media_title
        #
        #   @return [String, nil]
        optional :media_title, String, api_name: :mediaTitle

        # @!attribute media_url
        #
        #   @return [String, nil]
        optional :media_url, String, api_name: :mediaUrl

        # @!attribute media_url_string
        #
        #   @return [String, nil]
        optional :media_url_string, String, api_name: :mediaUrlString

        # @!attribute thumbnail_url
        #
        #   @return [String, nil]
        optional :thumbnail_url, String, api_name: :thumbnailUrl

        # @!method initialize(media_type:, id: nil, description: nil, media_title: nil, media_url: nil, media_url_string: nil, thumbnail_url: nil)
        #   @param media_type [String]
        #   @param id [String]
        #   @param description [String]
        #   @param media_title [String]
        #   @param media_url [String]
        #   @param media_url_string [String]
        #   @param thumbnail_url [String]
      end
    end
  end
end
