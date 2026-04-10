# frozen_string_literal: true

require_relative "../../../test_helper"

class HubSpotSDK::Test::Resources::Marketing::MarketingEvents::SubscriberStateTest < HubSpotSDK::Test::ResourceTest
  def test_record_by_email_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.marketing.marketing_events.subscriber_state.record_by_email(
        "subscriberState",
        external_event_id: "externalEventId",
        external_account_id: "externalAccountId",
        inputs: [
          {
            contactProperties: {foo: "string"},
            email: "email",
            interactionDateTime: 0,
            properties: {foo: "string"}
          }
        ]
      )

    assert_pattern do
      response => StringIO
    end
  end

  def test_record_by_id_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.marketing.marketing_events.subscriber_state.record_by_id(
        "subscriberState",
        external_event_id: "externalEventId",
        external_account_id: "externalAccountId",
        inputs: [{interactionDateTime: 0, properties: {foo: "string"}, vid: 0}]
      )

    assert_pattern do
      response => StringIO
    end
  end
end
