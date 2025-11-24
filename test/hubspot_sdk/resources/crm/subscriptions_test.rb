# frozen_string_literal: true

require_relative "../../test_helper"

class HubspotSDK::Test::Resources::Crm::SubscriptionsTest < HubspotSDK::Test::ResourceTest
  def test_cancel
    skip("Prism tests are disabled")

    response = @hubspot.crm.subscriptions.cancel(0)

    assert_pattern do
      response => StringIO
    end
  end

  def test_pause
    skip("Prism tests are disabled")

    response = @hubspot.crm.subscriptions.pause(0)

    assert_pattern do
      response => StringIO
    end
  end

  def test_unpause_required_params
    skip("Prism tests are disabled")

    response = @hubspot.crm.subscriptions.unpause(0, proposed_next_billing_date: 0)

    assert_pattern do
      response => StringIO
    end
  end
end
