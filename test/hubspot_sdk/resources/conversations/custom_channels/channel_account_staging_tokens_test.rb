# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::Conversations::CustomChannels::ChannelAccountStagingTokensTest < HubspotSDK::Test::ResourceTest
  def test_update_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.conversations.custom_channels.channel_account_staging_tokens.update(
        "accountToken",
        channel_id: "channelId",
        account_name: "accountName",
        delivery_identifier: {type: "type", value: "value"}
      )

    assert_pattern do
      response => HubspotSDK::Conversations::PublicChannelAccountStagingToken
    end

    assert_pattern do
      response => {
        account_token: String,
        created_at: Time,
        generic_channel_id: Integer,
        inbox_id: Integer,
        user_id: Integer,
        account_name: String | nil,
        delivery_identifier: HubspotSDK::Conversations::PublicDeliveryIdentifier | nil
      }
    end
  end
end
