# frozen_string_literal: true

require_relative "../../test_helper"

class HubSpotSDK::Test::Resources::Events::OccurrencesTest < HubSpotSDK::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @hubspot.events.occurrences.list

    assert_pattern do
      response => HubSpotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubSpotSDK::Events::ExternalUnifiedEvent
    end

    assert_pattern do
      row => {
        id: String,
        event_type: String,
        object_id_: String,
        object_type: String,
        occurred_at: Time,
        properties: ^(HubSpotSDK::Internal::Type::HashOf[String])
      }
    end
  end

  def test_list_event_types
    skip("Mock server tests are disabled")

    response = @hubspot.events.occurrences.list_event_types

    assert_pattern do
      response => HubSpotSDK::Events::VisibleExternalEventTypeNames
    end

    assert_pattern do
      response => {
        event_types: ^(HubSpotSDK::Internal::Type::ArrayOf[String])
      }
    end
  end
end
