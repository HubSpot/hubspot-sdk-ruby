# frozen_string_literal: true

require_relative "../../../test_helper"

class HubSpotSDK::Test::Resources::Marketing::Transactional::SingleEmailTest < HubSpotSDK::Test::ResourceTest
  def test_send__required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.marketing.transactional.single_email.send_(
        contact_properties: {foo: "string"},
        custom_properties: {foo: {}},
        email_id: 0,
        message: {bcc: ["string"], cc: ["string"], replyTo: ["string"]}
      )

    assert_pattern do
      response => HubSpotSDK::Marketing::EmailSendStatusView
    end

    assert_pattern do
      response => {
        status: HubSpotSDK::Marketing::EmailSendStatusView::Status,
        status_id: String,
        completed_at: Time | nil,
        event_id: HubSpotSDK::Marketing::EventIDView | nil,
        message: String | nil,
        requested_at: Time | nil,
        send_result: HubSpotSDK::Marketing::EmailSendStatusView::SendResult | nil,
        started_at: Time | nil
      }
    end
  end
end
