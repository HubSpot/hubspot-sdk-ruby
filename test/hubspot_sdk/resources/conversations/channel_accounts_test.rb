# frozen_string_literal: true

require_relative "../../test_helper"

class HubspotSDK::Test::Resources::Conversations::ChannelAccountsTest < HubspotSDK::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @hubspot.conversations.channel_accounts.list

    assert_pattern do
      response => HubspotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubspotSDK::Conversations::PublicChannelAccount
    end

    assert_pattern do
      row => {
        id: String,
        active: HubspotSDK::Internal::Type::Boolean,
        archived: HubspotSDK::Internal::Type::Boolean,
        authorized: HubspotSDK::Internal::Type::Boolean,
        channel_id: String,
        created_at: Time,
        inbox_id: String,
        name: String,
        archived_at: Time | nil,
        delivery_identifier: HubspotSDK::Conversations::PublicDeliveryIdentifier | nil
      }
    end
  end

  def test_get
    skip("Prism tests are disabled")

    response = @hubspot.conversations.channel_accounts.get(0)

    assert_pattern do
      response => HubspotSDK::Conversations::PublicChannelAccount
    end

    assert_pattern do
      response => {
        id: String,
        active: HubspotSDK::Internal::Type::Boolean,
        archived: HubspotSDK::Internal::Type::Boolean,
        authorized: HubspotSDK::Internal::Type::Boolean,
        channel_id: String,
        created_at: Time,
        inbox_id: String,
        name: String,
        archived_at: Time | nil,
        delivery_identifier: HubspotSDK::Conversations::PublicDeliveryIdentifier | nil
      }
    end
  end
end
