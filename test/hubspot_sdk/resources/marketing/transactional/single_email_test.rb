# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::Marketing::Transactional::SingleEmailTest < HubspotSDK::Test::ResourceTest
  def test_send__required_params
    skip("Prism tests are disabled")

    response = @hubspot.marketing.transactional.single_email.send_(email_id: 0, message: {to: "to"})

    assert_pattern do
      response => HubspotSDK::Marketing::EmailSendStatusView
    end

    assert_pattern do
      response => {
        status: HubspotSDK::Marketing::EmailSendStatusView::Status,
        status_id: String,
        completed_at: Time | nil,
        event_id: HubspotSDK::Marketing::EventIDView | nil,
        message: String | nil,
        requested_at: Time | nil,
        send_result: HubspotSDK::Marketing::EmailSendStatusView::SendResult | nil,
        started_at: Time | nil
      }
    end
  end
end
