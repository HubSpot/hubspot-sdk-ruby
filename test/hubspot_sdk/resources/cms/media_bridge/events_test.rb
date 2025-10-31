# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::Cms::MediaBridge::EventsTest < HubspotSDK::Test::ResourceTest
  def test_create_attention_span_event_required_params
    skip("Prism tests are disabled")

    response =
      @hub_spot.cms.media_bridge.events.create_attention_span_event(
        media_type: :VIDEO,
        occurred_timestamp: 0,
        raw_data_map: {foo: 0},
        session_id: "sessionId"
      )

    assert_pattern do
      response => HubspotSDK::Cms::AttentionSpanEvent
    end

    assert_pattern do
      response => {
        contact_id: Integer,
        media_bridge_id: Integer,
        media_bridge_object_coordinates: String,
        media_bridge_object_type_id: String,
        media_name: String,
        media_type: HubspotSDK::Cms::AttentionSpanEvent::MediaType,
        occurred_timestamp: Integer,
        percent_range: String,
        portal_id: Integer,
        provider_id: Integer,
        session_id: String,
        total_percent_played: Float,
        media_url: String | nil,
        page_id: Integer | nil,
        page_name: String | nil,
        page_object_coordinates: String | nil,
        page_url: String | nil,
        raw_data: String | nil,
        total_seconds_played: Integer | nil
      }
    end
  end

  def test_create_media_played_event_required_params
    skip("Prism tests are disabled")

    response =
      @hub_spot.cms.media_bridge.events.create_media_played_event(
        media_type: :VIDEO,
        occurred_timestamp: 0,
        session_id: "sessionId",
        state: :STARTED
      )

    assert_pattern do
      response => HubspotSDK::Cms::MediaPlayedEvent
    end

    assert_pattern do
      response => {
        contact_id: Integer,
        media_bridge_id: Integer,
        media_bridge_object_coordinates: String,
        media_bridge_object_type_id: String,
        media_name: String,
        media_type: HubspotSDK::Cms::MediaPlayedEvent::MediaType,
        occurred_timestamp: Integer,
        portal_id: Integer,
        provider_id: Integer,
        session_id: String,
        state: HubspotSDK::Cms::MediaPlayedEvent::State,
        iframe_url: String | nil,
        media_url: String | nil,
        page_id: Integer | nil,
        page_name: String | nil,
        page_object_coordinates: String | nil,
        page_url: String | nil
      }
    end
  end

  def test_create_media_played_percent_event_required_params
    skip("Prism tests are disabled")

    response =
      @hub_spot.cms.media_bridge.events.create_media_played_percent_event(
        media_type: :VIDEO,
        occurred_timestamp: 0,
        played_percent: 0,
        session_id: "sessionId"
      )

    assert_pattern do
      response => HubspotSDK::Cms::MediaPlayedPercentageEvent
    end

    assert_pattern do
      response => {
        contact_id: Integer,
        media_bridge_id: Integer,
        media_bridge_object_coordinates: String,
        media_bridge_object_type_id: String,
        media_name: String,
        media_type: HubspotSDK::Cms::MediaPlayedPercentageEvent::MediaType,
        occurred_timestamp: Integer,
        played_percent: Integer,
        portal_id: Integer,
        provider_id: Integer,
        session_id: String,
        media_url: String | nil,
        page_id: Integer | nil,
        page_name: String | nil,
        page_object_coordinates: String | nil,
        page_url: String | nil
      }
    end
  end
end
