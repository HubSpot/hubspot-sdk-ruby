# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      # @see HubSpotSDK::Resources::Cms::MediaBridge#create_media_played_percent_event
      class MediaPlayedPercentageEvent < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute contact_id
        #   The ID of the contact in HubSpot’s system that consumed the media. This can be
        #   fetched using HubSpot's Get contact by usertoken (utk) API. The API also
        #   supports supplying a usertoken, and will handle converting this into a contact
        #   ID automatically.
        #
        #   @return [Integer]
        required :contact_id, Integer, api_name: :contactId

        # @!attribute media_bridge_id
        #
        #   @return [Integer]
        required :media_bridge_id, Integer, api_name: :mediaBridgeId

        # @!attribute media_bridge_object_coordinates
        #
        #   @return [String]
        required :media_bridge_object_coordinates, String, api_name: :mediaBridgeObjectCoordinates

        # @!attribute media_bridge_object_type_id
        #
        #   @return [String]
        required :media_bridge_object_type_id, String, api_name: :mediaBridgeObjectTypeId

        # @!attribute media_name
        #
        #   @return [String]
        required :media_name, String, api_name: :mediaName

        # @!attribute media_type
        #
        #   @return [Symbol, HubSpotSDK::Models::Cms::MediaPlayedPercentageEvent::MediaType]
        required :media_type,
                 enum: -> { HubSpotSDK::Cms::MediaPlayedPercentageEvent::MediaType },
                 api_name: :mediaType

        # @!attribute occurred_timestamp
        #
        #   @return [Integer]
        required :occurred_timestamp, Integer, api_name: :occurredTimestamp

        # @!attribute played_percent
        #
        #   @return [Integer]
        required :played_percent, Integer, api_name: :playedPercent

        # @!attribute portal_id
        #   The ID of the HubSpot account.
        #
        #   @return [Integer]
        required :portal_id, Integer, api_name: :portalId

        # @!attribute provider_id
        #
        #   @return [Integer]
        required :provider_id, Integer, api_name: :providerId

        # @!attribute session_id
        #
        #   @return [String]
        required :session_id, String, api_name: :sessionId

        # @!attribute external_play_context
        #
        #   @return [Symbol, HubSpotSDK::Models::Cms::MediaPlayedPercentageEvent::ExternalPlayContext, nil]
        optional :external_play_context,
                 enum: -> { HubSpotSDK::Cms::MediaPlayedPercentageEvent::ExternalPlayContext },
                 api_name: :externalPlayContext

        # @!attribute media_url
        #
        #   @return [String, nil]
        optional :media_url, String, api_name: :mediaUrl

        # @!attribute page_id
        #   The content ID of the page that an event happened on, for HubSpot pages.
        #   Required if the page is a HubSpot page.
        #
        #   @return [Integer, nil]
        optional :page_id, Integer, api_name: :pageId

        # @!attribute page_name
        #   The name or title of the page that an event happened on. Required for
        #   non-HubSpot pages.
        #
        #   @return [String, nil]
        optional :page_name, String, api_name: :pageName

        # @!attribute page_object_coordinates
        #
        #   @return [String, nil]
        optional :page_object_coordinates, String, api_name: :pageObjectCoordinates

        # @!attribute page_url
        #   The URL of the page that an event happened on. Required for non-HubSpot pages.
        #
        #   @return [String, nil]
        optional :page_url, String, api_name: :pageUrl

        # @!method initialize(contact_id:, media_bridge_id:, media_bridge_object_coordinates:, media_bridge_object_type_id:, media_name:, media_type:, occurred_timestamp:, played_percent:, portal_id:, provider_id:, session_id:, external_play_context: nil, media_url: nil, page_id: nil, page_name: nil, page_object_coordinates: nil, page_url: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Cms::MediaPlayedPercentageEvent} for more details.
        #
        #   @param contact_id [Integer] The ID of the contact in HubSpot’s system that consumed the media. This can be f
        #
        #   @param media_bridge_id [Integer]
        #
        #   @param media_bridge_object_coordinates [String]
        #
        #   @param media_bridge_object_type_id [String]
        #
        #   @param media_name [String]
        #
        #   @param media_type [Symbol, HubSpotSDK::Models::Cms::MediaPlayedPercentageEvent::MediaType]
        #
        #   @param occurred_timestamp [Integer]
        #
        #   @param played_percent [Integer]
        #
        #   @param portal_id [Integer] The ID of the HubSpot account.
        #
        #   @param provider_id [Integer]
        #
        #   @param session_id [String]
        #
        #   @param external_play_context [Symbol, HubSpotSDK::Models::Cms::MediaPlayedPercentageEvent::ExternalPlayContext]
        #
        #   @param media_url [String]
        #
        #   @param page_id [Integer] The content ID of the page that an event happened on, for HubSpot pages. Require
        #
        #   @param page_name [String] The name or title of the page that an event happened on. Required for non-HubSpo
        #
        #   @param page_object_coordinates [String]
        #
        #   @param page_url [String] The URL of the page that an event happened on. Required for non-HubSpot pages.

        # @see HubSpotSDK::Models::Cms::MediaPlayedPercentageEvent#media_type
        module MediaType
          extend HubSpotSDK::Internal::Type::Enum

          AUDIO = :AUDIO
          DOCUMENT = :DOCUMENT
          IMAGE = :IMAGE
          OTHER = :OTHER
          VIDEO = :VIDEO

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubSpotSDK::Models::Cms::MediaPlayedPercentageEvent#external_play_context
        module ExternalPlayContext
          extend HubSpotSDK::Internal::Type::Enum

          EMAIL = :EMAIL
          EXTERNAL_PAGE = :EXTERNAL_PAGE

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
