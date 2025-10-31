# frozen_string_literal: true

require_relative "../../test_helper"

class HubspotSDK::Test::Resources::Conversations::ChannelsTest < HubspotSDK::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @hubspot.conversations.channels.list

    assert_pattern do
      response => HubspotSDK::Conversations::CollectionResponseWithTotalPublicChannelForwardPaging
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Conversations::PublicChannel]),
        total: Integer,
        paging: HubspotSDK::ForwardPaging | nil
      }
    end
  end

  def test_get
    skip("Prism tests are disabled")

    response = @hubspot.conversations.channels.get("channelId")

    assert_pattern do
      response => HubspotSDK::Conversations::PublicChannel
    end

    assert_pattern do
      response => {
        id: String | nil,
        name: String | nil
      }
    end
  end
end
