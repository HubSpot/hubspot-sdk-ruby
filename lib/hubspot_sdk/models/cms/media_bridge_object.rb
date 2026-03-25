# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      # @see HubspotSDK::Resources::Cms::MediaBridge#create
      class MediaBridgeObject < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time, api_name: :createdAt

        # @!attribute media_type
        #
        #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridgeObject::MediaType]
        required :media_type, enum: -> { HubspotSDK::Cms::MediaBridgeObject::MediaType }, api_name: :mediaType

        # @!attribute title
        #
        #   @return [String]
        required :title, String

        # @!attribute updated_at
        #
        #   @return [Time]
        required :updated_at, Time, api_name: :updatedAt

        # @!attribute details_page_link
        #
        #   @return [String, nil]
        optional :details_page_link, String, api_name: :detailsPageLink

        # @!attribute duration
        #
        #   @return [Integer, nil]
        optional :duration, Integer

        # @!attribute external_id
        #
        #   @return [String, nil]
        optional :external_id, String, api_name: :externalId

        # @!attribute file_url
        #
        #   @return [String, nil]
        optional :file_url, String, api_name: :fileUrl

        # @!attribute oembed_url
        #
        #   @return [String, nil]
        optional :oembed_url, String, api_name: :oembedUrl

        # @!attribute poster_url
        #
        #   @return [String, nil]
        optional :poster_url, String, api_name: :posterUrl

        # @!attribute thumbnail_url
        #
        #   @return [String, nil]
        optional :thumbnail_url, String, api_name: :thumbnailUrl

        # @!attribute video
        #
        #   @return [HubspotSDK::Models::Cms::VideoObject, nil]
        optional :video, -> { HubspotSDK::Cms::VideoObject }

        # @!method initialize(id:, created_at:, media_type:, title:, updated_at:, details_page_link: nil, duration: nil, external_id: nil, file_url: nil, oembed_url: nil, poster_url: nil, thumbnail_url: nil, video: nil)
        #   @param id [String]
        #   @param created_at [Time]
        #   @param media_type [Symbol, HubspotSDK::Models::Cms::MediaBridgeObject::MediaType]
        #   @param title [String]
        #   @param updated_at [Time]
        #   @param details_page_link [String]
        #   @param duration [Integer]
        #   @param external_id [String]
        #   @param file_url [String]
        #   @param oembed_url [String]
        #   @param poster_url [String]
        #   @param thumbnail_url [String]
        #   @param video [HubspotSDK::Models::Cms::VideoObject]

        # @see HubspotSDK::Models::Cms::MediaBridgeObject#media_type
        module MediaType
          extend HubspotSDK::Internal::Type::Enum

          AUDIO = :AUDIO
          DOCUMENT = :DOCUMENT
          IMAGE = :IMAGE
          OTHER = :OTHER
          VIDEO = :VIDEO

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
