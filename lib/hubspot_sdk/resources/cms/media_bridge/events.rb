# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Cms
      class MediaBridge
        class Events
          # Create an event containing the viewers attention span details for the media.
          #
          # @overload create_attention_span_event(media_type:, occurred_timestamp:, raw_data_map:, session_id:, _hsenc: nil, contact_id: nil, contact_utk: nil, derived_values: nil, external_id: nil, media_bridge_id: nil, media_name: nil, media_url: nil, page_id: nil, page_name: nil, page_url: nil, raw_data_string: nil, request_options: {})
          #
          # @param media_type [Symbol, HubspotSDK::Models::Cms::AttentionSpanEventRequest::MediaType]
          # @param occurred_timestamp [Integer]
          # @param raw_data_map [Hash{Symbol=>Integer}]
          # @param session_id [String]
          # @param _hsenc [String]
          # @param contact_id [Integer]
          # @param contact_utk [String]
          # @param derived_values [HubspotSDK::Models::Cms::AttentionSpanCalculatedValues]
          # @param external_id [String]
          # @param media_bridge_id [Integer]
          # @param media_name [String]
          # @param media_url [String]
          # @param page_id [Integer]
          # @param page_name [String]
          # @param page_url [String]
          # @param raw_data_string [String]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::AttentionSpanEvent]
          #
          # @see HubspotSDK::Models::Cms::MediaBridge::EventCreateAttentionSpanEventParams
          def create_attention_span_event(params)
            parsed, options = HubspotSDK::Cms::MediaBridge::EventCreateAttentionSpanEventParams.dump_request(params)
            @client.request(
              method: :post,
              path: "media-bridge/v1/events/attention-span",
              body: parsed,
              model: HubspotSDK::Cms::AttentionSpanEvent,
              options: options
            )
          end

          # Create an event for when a user begins playing a piece of media.
          #
          # @overload create_media_played_event(media_type:, occurred_timestamp:, session_id:, state:, _hsenc: nil, contact_id: nil, contact_utk: nil, external_id: nil, iframe_url: nil, media_bridge_id: nil, media_name: nil, media_url: nil, page_id: nil, page_name: nil, page_url: nil, request_options: {})
          #
          # @param media_type [Symbol, HubspotSDK::Models::Cms::MediaPlayedEventRequest::MediaType]
          # @param occurred_timestamp [Integer]
          # @param session_id [String]
          # @param state [Symbol, HubspotSDK::Models::Cms::MediaPlayedEventRequest::State]
          # @param _hsenc [String]
          # @param contact_id [Integer]
          # @param contact_utk [String]
          # @param external_id [String]
          # @param iframe_url [String]
          # @param media_bridge_id [Integer]
          # @param media_name [String]
          # @param media_url [String]
          # @param page_id [Integer]
          # @param page_name [String]
          # @param page_url [String]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::MediaPlayedEvent]
          #
          # @see HubspotSDK::Models::Cms::MediaBridge::EventCreateMediaPlayedEventParams
          def create_media_played_event(params)
            parsed, options = HubspotSDK::Cms::MediaBridge::EventCreateMediaPlayedEventParams.dump_request(params)
            @client.request(
              method: :post,
              path: "media-bridge/v1/events/media-played",
              body: parsed,
              model: HubspotSDK::Cms::MediaPlayedEvent,
              options: options
            )
          end

          # Create an event representing a user reaching quarterly milestones in a piece of
          # media they're viewing.
          #
          # @overload create_media_played_percent_event(media_type:, occurred_timestamp:, played_percent:, session_id:, _hsenc: nil, contact_id: nil, contact_utk: nil, external_id: nil, media_bridge_id: nil, media_name: nil, media_url: nil, page_id: nil, page_name: nil, page_url: nil, request_options: {})
          #
          # @param media_type [Symbol, HubspotSDK::Models::Cms::MediaPlayedPercentageEventRequest::MediaType]
          # @param occurred_timestamp [Integer]
          # @param played_percent [Integer]
          # @param session_id [String]
          # @param _hsenc [String]
          # @param contact_id [Integer]
          # @param contact_utk [String]
          # @param external_id [String]
          # @param media_bridge_id [Integer]
          # @param media_name [String]
          # @param media_url [String]
          # @param page_id [Integer]
          # @param page_name [String]
          # @param page_url [String]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::MediaPlayedPercentageEvent]
          #
          # @see HubspotSDK::Models::Cms::MediaBridge::EventCreateMediaPlayedPercentEventParams
          def create_media_played_percent_event(params)
            parsed, options =
              HubspotSDK::Cms::MediaBridge::EventCreateMediaPlayedPercentEventParams.dump_request(params)
            @client.request(
              method: :post,
              path: "media-bridge/v1/events/media-played-percent",
              body: parsed,
              model: HubspotSDK::Cms::MediaPlayedPercentageEvent,
              options: options
            )
          end

          # @api private
          #
          # @param client [HubspotSDK::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
