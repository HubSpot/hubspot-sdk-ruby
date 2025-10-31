# frozen_string_literal: true

require_relative "../../../../test_helper"

class HubspotSDK::Test::Resources::Marketing::Subscriptions::V4::LinksTest < HubspotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @hub_spot.marketing.subscriptions.v4.links.create(
        channel: :EMAIL,
        subscriber_id_string: "subscriberIdString"
      )

    assert_pattern do
      response => HubspotSDK::Marketing::Subscriptions::LinkGenerationResponse
    end

    assert_pattern do
      response => {
        manage_preferences_url: String,
        subscriber_id_string: String,
        unsubscribe_all_url: String,
        unsubscribe_single_url: String | nil
      }
    end
  end
end
