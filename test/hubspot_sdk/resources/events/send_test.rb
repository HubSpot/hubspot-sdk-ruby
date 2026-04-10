# frozen_string_literal: true

require_relative "../../test_helper"

class HubSpotSDK::Test::Resources::Events::SendTest < HubSpotSDK::Test::ResourceTest
  def test_batch_send_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.events.send_.batch_send(inputs: [{eventName: "eventName", properties: {foo: "string"}}])

    assert_pattern do
      response => nil
    end
  end

  def test_send__required_params
    skip("Mock server tests are disabled")

    response = @hubspot.events.send_.send_(event_name: "eventName", properties: {foo: "string"})

    assert_pattern do
      response => nil
    end
  end
end
