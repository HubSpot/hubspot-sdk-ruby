# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      module MediaBridge
        # @see HubspotSDK::Resources::Cms::MediaBridge::Events#create_media_played_event
        class EventCreateMediaPlayedEventResponse < HubspotSDK::Internal::Type::BaseModel
          # @!attribute contact_id
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
          #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::EventCreateMediaPlayedEventResponse::MediaType]
          required :media_type,
                   enum: -> { HubspotSDK::Models::Cms::MediaBridge::EventCreateMediaPlayedEventResponse::MediaType },
                   api_name: :mediaType

          # @!attribute occurred_timestamp
          #
          #   @return [Integer]
          required :occurred_timestamp, Integer, api_name: :occurredTimestamp

          # @!attribute portal_id
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

          # @!attribute state
          #
          #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::EventCreateMediaPlayedEventResponse::State]
          required :state,
                   enum: -> { HubspotSDK::Models::Cms::MediaBridge::EventCreateMediaPlayedEventResponse::State }

          # @!attribute iframe_url
          #
          #   @return [String, nil]
          optional :iframe_url, String, api_name: :iframeUrl

          # @!attribute media_url
          #
          #   @return [String, nil]
          optional :media_url, String, api_name: :mediaUrl

          # @!attribute page_id
          #
          #   @return [Integer, nil]
          optional :page_id, Integer, api_name: :pageId

          # @!attribute page_name
          #
          #   @return [String, nil]
          optional :page_name, String, api_name: :pageName

          # @!attribute page_object_coordinates
          #
          #   @return [String, nil]
          optional :page_object_coordinates, String, api_name: :pageObjectCoordinates

          # @!attribute page_url
          #
          #   @return [String, nil]
          optional :page_url, String, api_name: :pageUrl

          # @!method initialize(contact_id:, media_bridge_id:, media_bridge_object_coordinates:, media_bridge_object_type_id:, media_name:, media_type:, occurred_timestamp:, portal_id:, provider_id:, session_id:, state:, iframe_url: nil, media_url: nil, page_id: nil, page_name: nil, page_object_coordinates: nil, page_url: nil)
          #   @param contact_id [Integer]
          #   @param media_bridge_id [Integer]
          #   @param media_bridge_object_coordinates [String]
          #   @param media_bridge_object_type_id [String]
          #   @param media_name [String]
          #   @param media_type [Symbol, HubspotSDK::Models::Cms::MediaBridge::EventCreateMediaPlayedEventResponse::MediaType]
          #   @param occurred_timestamp [Integer]
          #   @param portal_id [Integer]
          #   @param provider_id [Integer]
          #   @param session_id [String]
          #   @param state [Symbol, HubspotSDK::Models::Cms::MediaBridge::EventCreateMediaPlayedEventResponse::State]
          #   @param iframe_url [String]
          #   @param media_url [String]
          #   @param page_id [Integer]
          #   @param page_name [String]
          #   @param page_object_coordinates [String]
          #   @param page_url [String]

          # @see HubspotSDK::Models::Cms::MediaBridge::EventCreateMediaPlayedEventResponse#media_type
          module MediaType
            extend HubspotSDK::Internal::Type::Enum

            VIDEO = :VIDEO
            AUDIO = :AUDIO
            DOCUMENT = :DOCUMENT
            OTHER = :OTHER
            IMAGE = :IMAGE

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see HubspotSDK::Models::Cms::MediaBridge::EventCreateMediaPlayedEventResponse#state
          module State
            extend HubspotSDK::Internal::Type::Enum

            STARTED = :STARTED
            VIEWED = :VIEWED

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
