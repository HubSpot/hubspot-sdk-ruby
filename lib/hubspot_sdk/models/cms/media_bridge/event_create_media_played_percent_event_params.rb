# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      module MediaBridge
        # @see HubspotSDK::Resources::Cms::MediaBridge::Events#create_media_played_percent_event
        class EventCreateMediaPlayedPercentEventParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute media_type
          #
          #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::EventCreateMediaPlayedPercentEventParams::MediaType]
          required :media_type,
                   enum: -> {
                     HubspotSDK::Cms::MediaBridge::EventCreateMediaPlayedPercentEventParams::MediaType
                   },
                   api_name: :mediaType

          # @!attribute occurred_timestamp
          #
          #   @return [Integer]
          required :occurred_timestamp, Integer, api_name: :occurredTimestamp

          # @!attribute played_percent
          #
          #   @return [Integer]
          required :played_percent, Integer, api_name: :playedPercent

          # @!attribute session_id
          #
          #   @return [String]
          required :session_id, String, api_name: :sessionId

          # @!attribute _hsenc
          #
          #   @return [String, nil]
          optional :_hsenc, String

          # @!attribute contact_id
          #
          #   @return [Integer, nil]
          optional :contact_id, Integer, api_name: :contactId

          # @!attribute contact_utk
          #
          #   @return [String, nil]
          optional :contact_utk, String, api_name: :contactUtk

          # @!attribute external_id
          #
          #   @return [String, nil]
          optional :external_id, String, api_name: :externalId

          # @!attribute media_bridge_id
          #
          #   @return [Integer, nil]
          optional :media_bridge_id, Integer, api_name: :mediaBridgeId

          # @!attribute media_name
          #
          #   @return [String, nil]
          optional :media_name, String, api_name: :mediaName

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

          # @!attribute page_url
          #
          #   @return [String, nil]
          optional :page_url, String, api_name: :pageUrl

          # @!method initialize(media_type:, occurred_timestamp:, played_percent:, session_id:, _hsenc: nil, contact_id: nil, contact_utk: nil, external_id: nil, media_bridge_id: nil, media_name: nil, media_url: nil, page_id: nil, page_name: nil, page_url: nil, request_options: {})
          #   @param media_type [Symbol, HubspotSDK::Models::Cms::MediaBridge::EventCreateMediaPlayedPercentEventParams::MediaType]
          #   @param occurred_timestamp [Integer]
          #   @param played_percent [Integer]
          #   @param session_id [String]
          #   @param _hsenc [String]
          #   @param contact_id [Integer]
          #   @param contact_utk [String]
          #   @param external_id [String]
          #   @param media_bridge_id [Integer]
          #   @param media_name [String]
          #   @param media_url [String]
          #   @param page_id [Integer]
          #   @param page_name [String]
          #   @param page_url [String]
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]

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
        end
      end
    end
  end
end
