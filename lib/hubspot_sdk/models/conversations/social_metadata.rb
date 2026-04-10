# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Conversations
      class SocialMetadata < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute media_type
        #
        #   @return [Symbol, HubSpotSDK::Models::Conversations::SocialMetadata::MediaType]
        required :media_type,
                 enum: -> { HubSpotSDK::Conversations::SocialMetadata::MediaType },
                 api_name: :mediaType

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
        #   @param media_type [Symbol, HubSpotSDK::Models::Conversations::SocialMetadata::MediaType]
        #   @param id [String]
        #   @param description [String]
        #   @param media_title [String]
        #   @param media_url [String]
        #   @param media_url_string [String]
        #   @param thumbnail_url [String]

        # @see HubSpotSDK::Models::Conversations::SocialMetadata#media_type
        module MediaType
          extend HubSpotSDK::Internal::Type::Enum

          ARTICLE = :ARTICLE
          AUDIO = :AUDIO
          CAROUSEL = :CAROUSEL
          DOCUMENT = :DOCUMENT
          GIF = :GIF
          LINK = :LINK
          NONE = :NONE
          PHOTO = :PHOTO
          POLL = :POLL
          STORY = :STORY
          VIDEO = :VIDEO

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
