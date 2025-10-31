# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::CRM::Timeline::EventsTest < HubspotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.crm.timeline.events.create(
        event_template_id: "1001298",
        tokens: {petAge: "string", petColor: "black", petName: "Art3mis"}
      )

    assert_pattern do
      response => HubspotSDK::CRM::TimelineEventResponse
    end

    assert_pattern do
      response => {
        id: String,
        event_template_id: String,
        object_type: String,
        tokens: ^(HubspotSDK::Internal::Type::HashOf[String]),
        created_at: Time | nil,
        domain: String | nil,
        email: String | nil,
        extra_data: HubspotSDK::Internal::Type::Unknown | nil,
        object_id_: String | nil,
        timeline_i_frame: HubspotSDK::CRM::TimelineEventIFrame | nil,
        timestamp: Time | nil,
        utk: String | nil
      }
    end
  end

  def test_batch_create_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.crm.timeline.events.batch_create(
        inputs: [
          {eventTemplateId: "1001298", tokens: {petAge: "string", petColor: "black", petName: "Art3mis"}},
          {eventTemplateId: "1001298", tokens: {petAge: "string", petColor: "yellow", petName: "Pocket"}}
        ]
      )

    assert_pattern do
      response => nil
    end
  end

  def test_get_required_params
    skip("Prism tests are disabled")

    response = @hubspot.crm.timeline.events.get("eventId", event_template_id: "eventTemplateId")

    assert_pattern do
      response => HubspotSDK::CRM::TimelineEventResponse
    end

    assert_pattern do
      response => {
        id: String,
        event_template_id: String,
        object_type: String,
        tokens: ^(HubspotSDK::Internal::Type::HashOf[String]),
        created_at: Time | nil,
        domain: String | nil,
        email: String | nil,
        extra_data: HubspotSDK::Internal::Type::Unknown | nil,
        object_id_: String | nil,
        timeline_i_frame: HubspotSDK::CRM::TimelineEventIFrame | nil,
        timestamp: Time | nil,
        utk: String | nil
      }
    end
  end

  def test_get_detail_required_params
    skip("Prism tests are disabled")

    response = @hubspot.crm.timeline.events.get_detail("eventId", event_template_id: "eventTemplateId")

    assert_pattern do
      response => HubspotSDK::CRM::EventDetail
    end

    assert_pattern do
      response => {
        details: String
      }
    end
  end
end
