# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::Marketing::MarketingEvents::EventsTest < HubspotSDK::Test::ResourceTest
  def test_cancel_by_external_event_id_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.marketing.marketing_events.events.cancel_by_external_event_id(
        "externalEventId",
        external_account_id: "externalAccountId"
      )

    assert_pattern do
      response => HubspotSDK::Marketing::MarketingEventDefaultResponse
    end

    assert_pattern do
      response => {
        custom_properties: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::PropertyValue]),
        event_name: String,
        event_organizer: String,
        end_date_time: Time | nil,
        event_cancelled: HubspotSDK::Internal::Type::Boolean | nil,
        event_completed: HubspotSDK::Internal::Type::Boolean | nil,
        event_description: String | nil,
        event_type: String | nil,
        event_url: String | nil,
        object_id_: String | nil,
        start_date_time: Time | nil
      }
    end
  end

  def test_complete_by_external_event_id_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.marketing.marketing_events.events.complete_by_external_event_id(
        "externalEventId",
        external_account_id: "externalAccountId",
        end_date_time: "2019-12-27T18:11:19.117Z",
        start_date_time: "2019-12-27T18:11:19.117Z"
      )

    assert_pattern do
      response => HubspotSDK::Marketing::MarketingEventDefaultResponse
    end

    assert_pattern do
      response => {
        custom_properties: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::PropertyValue]),
        event_name: String,
        event_organizer: String,
        end_date_time: Time | nil,
        event_cancelled: HubspotSDK::Internal::Type::Boolean | nil,
        event_completed: HubspotSDK::Internal::Type::Boolean | nil,
        event_description: String | nil,
        event_type: String | nil,
        event_url: String | nil,
        object_id_: String | nil,
        start_date_time: Time | nil
      }
    end
  end
end
