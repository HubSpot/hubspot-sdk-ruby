# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::Automation::Actions::CallbacksTest < HubspotSDK::Test::ResourceTest
  def test_complete_required_params
    skip("Prism tests are disabled")

    response = @hubspot.automation.actions.callbacks.complete("callbackId", output_fields: {foo: "string"})

    assert_pattern do
      response => nil
    end
  end

  def test_complete_batch_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.automation.actions.callbacks.complete_batch(
        inputs: [{callbackId: "callbackId", outputFields: {foo: "string"}}]
      )

    assert_pattern do
      response => nil
    end
  end
end
