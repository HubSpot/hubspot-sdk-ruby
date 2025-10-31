# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class AttentionSpanEvent < HubspotSDK::Internal::Type::BaseModel
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
        #   @return [Symbol, HubspotSDK::Models::Cms::AttentionSpanEvent::MediaType]
        required :media_type,
                 enum: -> {
                   HubspotSDK::Cms::AttentionSpanEvent::MediaType
                 },
                 api_name: :mediaType

        # @!attribute occurred_timestamp
        #   The timestamp at which this event occurred, in milliseconds since the epoch.
        #
        #   @return [Integer]
        required :occurred_timestamp, Integer, api_name: :occurredTimestamp

        # @!attribute percent_range
        #
        #   @return [String]
        required :percent_range, String, api_name: :percentRange

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

        # @!attribute total_percent_played
        #   The percent of the media that the user consumed. Providers may calculate this
        #   differently depending on how they consider repeated views of the same portion of
        #   media. For this reason, the API will not attempt to validate totalPercentWatched
        #   against the attention span information for the event. If it is missing, HubSpot
        #   will calculate this from the attention span map as follows: (number of spans
        #   with a value of 1 or more)/(Total number of spans).
        #
        #   @return [Float]
        required :total_percent_played, Float, api_name: :totalPercentPlayed

        # @!attribute media_url
        #
        #   @return [String, nil]
        optional :media_url, String, api_name: :mediaUrl

        # @!attribute page_id
        #   The ID of the page, if hosted on HubSpot. Required for HubSpot pages.
        #
        #   @return [Integer, nil]
        optional :page_id, Integer, api_name: :pageId

        # @!attribute page_name
        #   The name of the page. Required if the page is not hosted on HubSpot.
        #
        #   @return [String, nil]
        optional :page_name, String, api_name: :pageName

        # @!attribute page_object_coordinates
        #
        #   @return [String, nil]
        optional :page_object_coordinates, String, api_name: :pageObjectCoordinates

        # @!attribute page_url
        #   The URL of the page that an event happened on. Required if the page is not
        #   hosted on HubSpot.
        #
        #   @return [String, nil]
        optional :page_url, String, api_name: :pageUrl

        # @!attribute raw_data
        #   This is the raw data which provides the most granular data about spans of the
        #   media, and how many times each span was consumed by the user. For example, for a
        #   10 second video where each second is a span, if a visitor watches the first 5
        #   seconds of the video, then restarts the video and watches the first 2 seconds
        #   again, the resulting `rawDataString` would be
        #   `“0=2;1=2;2=1;3=1;4=1;5=0;6=0;7=0;8=0;9=0;”`.
        #
        #   @return [String, nil]
        optional :raw_data, String, api_name: :rawData

        # @!attribute total_seconds_played
        #   The seconds that a user spent consuming the media. The media bridge calculates
        #   this as `totalPercentPlayed`\*`mediaDuration`. If a provider would like this to
        #   be calculated differently, they can provide the pre-calculated value when they
        #   create the event.
        #
        #   @return [Integer, nil]
        optional :total_seconds_played, Integer, api_name: :totalSecondsPlayed

        # @!method initialize(contact_id:, media_bridge_id:, media_bridge_object_coordinates:, media_bridge_object_type_id:, media_name:, media_type:, occurred_timestamp:, percent_range:, portal_id:, provider_id:, session_id:, total_percent_played:, media_url: nil, page_id: nil, page_name: nil, page_object_coordinates: nil, page_url: nil, raw_data: nil, total_seconds_played: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Cms::AttentionSpanEvent} for more details.
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
        #   @param media_type [Symbol, HubspotSDK::Models::Cms::AttentionSpanEvent::MediaType]
        #
        #   @param occurred_timestamp [Integer] The timestamp at which this event occurred, in milliseconds since the epoch.
        #
        #   @param percent_range [String]
        #
        #   @param portal_id [Integer] The ID of the HubSpot account.
        #
        #   @param provider_id [Integer]
        #
        #   @param session_id [String]
        #
        #   @param total_percent_played [Float] The percent of the media that the user consumed. Providers may calculate this di
        #
        #   @param media_url [String]
        #
        #   @param page_id [Integer] The ID of the page, if hosted on HubSpot. Required for HubSpot pages.
        #
        #   @param page_name [String] The name of the page. Required if the page is not hosted on HubSpot.
        #
        #   @param page_object_coordinates [String]
        #
        #   @param page_url [String] The URL of the page that an event happened on. Required if the page is not hoste
        #
        #   @param raw_data [String] This is the raw data which provides the most granular data about spans of the me
        #
        #   @param total_seconds_played [Integer] The seconds that a user spent consuming the media. The media bridge calculates t

        # @see HubspotSDK::Models::Cms::AttentionSpanEvent#media_type
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
