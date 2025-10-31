# frozen_string_literal: true

require_relative "../test_helper"

class HubspotSDK::Test::Resources::EventsTest < HubspotSDK::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @hubspot.events.list

    assert_pattern do
      response => HubspotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubspotSDK::Events::ExternalUnifiedEvent
    end

    assert_pattern do
      row => {
        id: String,
        event_type: String,
        object_id_: String,
        object_type: String,
        occurred_at: Time,
        properties: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil
      }
    end
  end

  def test_list_event_types
    skip("Prism tests are disabled")

    response = @hubspot.events.list_event_types

    assert_pattern do
      response => HubspotSDK::Events::VisibleExternalEventTypeNames
    end

    assert_pattern do
      response => {
        event_types: ^(HubspotSDK::Internal::Type::ArrayOf[String])
      }
    end
  end
end
