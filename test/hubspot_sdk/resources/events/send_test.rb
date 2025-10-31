# frozen_string_literal: true

require_relative "../../test_helper"

class HubspotSDK::Test::Resources::Events::SendTest < HubspotSDK::Test::ResourceTest
  def test_send__required_params
    skip("Prism tests are disabled")

    response = @hubspot.events.send_.send_(event_name: "pe123456_account_login")

    assert_pattern do
      response => nil
    end
  end

  def test_send_batch_required_params
    skip("Prism tests are disabled")

    response = @hubspot.events.send_.send_batch(inputs: [{eventName: "pe123456_account_login"}])

    assert_pattern do
      response => nil
    end
  end
end
