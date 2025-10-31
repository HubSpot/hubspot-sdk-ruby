# typed: strong

module HubspotSDK
  module Resources
    class Cms
      class MediaBridge
        class Events
          # Create an event containing the viewers attention span details for the media.
          sig do
            params(
              media_type:
                HubspotSDK::Cms::AttentionSpanEventRequest::MediaType::OrSymbol,
              occurred_timestamp: Integer,
              raw_data_map: T::Hash[Symbol, Integer],
              session_id: String,
              _hsenc: String,
              contact_id: Integer,
              contact_utk: String,
              derived_values:
                HubspotSDK::Cms::AttentionSpanCalculatedValues::OrHash,
              external_id: String,
              media_bridge_id: Integer,
              media_name: String,
              media_url: String,
              page_id: Integer,
              page_name: String,
              page_url: String,
              raw_data_string: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Cms::AttentionSpanEvent)
          end
          def create_attention_span_event(
            media_type:,
            occurred_timestamp:,
            raw_data_map:,
            session_id:,
            _hsenc: nil,
            contact_id: nil,
            contact_utk: nil,
            derived_values: nil,
            external_id: nil,
            media_bridge_id: nil,
            media_name: nil,
            media_url: nil,
            page_id: nil,
            page_name: nil,
            page_url: nil,
            raw_data_string: nil,
            request_options: {}
          )
          end

          # Create an event for when a user begins playing a piece of media.
          sig do
            params(
              media_type:
                HubspotSDK::Cms::MediaPlayedEventRequest::MediaType::OrSymbol,
              occurred_timestamp: Integer,
              session_id: String,
              state: HubspotSDK::Cms::MediaPlayedEventRequest::State::OrSymbol,
              _hsenc: String,
              contact_id: Integer,
              contact_utk: String,
              external_id: String,
              iframe_url: String,
              media_bridge_id: Integer,
              media_name: String,
              media_url: String,
              page_id: Integer,
              page_name: String,
              page_url: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Cms::MediaPlayedEvent)
          end
          def create_media_played_event(
            media_type:,
            occurred_timestamp:,
            session_id:,
            state:,
            _hsenc: nil,
            contact_id: nil,
            contact_utk: nil,
            external_id: nil,
            iframe_url: nil,
            media_bridge_id: nil,
            media_name: nil,
            media_url: nil,
            page_id: nil,
            page_name: nil,
            page_url: nil,
            request_options: {}
          )
          end

          # Create an event representing a user reaching quarterly milestones in a piece of
          # media they're viewing.
          sig do
            params(
              media_type:
                HubspotSDK::Cms::MediaPlayedPercentageEventRequest::MediaType::OrSymbol,
              occurred_timestamp: Integer,
              played_percent: Integer,
              session_id: String,
              _hsenc: String,
              contact_id: Integer,
              contact_utk: String,
              external_id: String,
              media_bridge_id: Integer,
              media_name: String,
              media_url: String,
              page_id: Integer,
              page_name: String,
              page_url: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Cms::MediaPlayedPercentageEvent)
          end
          def create_media_played_percent_event(
            media_type:,
            occurred_timestamp:,
            played_percent:,
            session_id:,
            _hsenc: nil,
            contact_id: nil,
            contact_utk: nil,
            external_id: nil,
            media_bridge_id: nil,
            media_name: nil,
            media_url: nil,
            page_id: nil,
            page_name: nil,
            page_url: nil,
            request_options: {}
          )
          end

          # @api private
          sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
