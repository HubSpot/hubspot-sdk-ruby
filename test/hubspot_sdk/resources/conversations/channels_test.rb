# frozen_string_literal: true

require_relative "../../test_helper"

class HubspotSDK::Test::Resources::Conversations::ChannelsTest < HubspotSDK::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @hubspot.conversations.channels.list

    assert_pattern do
      response => HubspotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubspotSDK::Conversations::PublicChannel
    end

    assert_pattern do
      row => {
        id: String,
        name: String
      }
    end
  end

  def test_get
    skip("Prism tests are disabled")

    response = @hubspot.conversations.channels.get(0)

    assert_pattern do
      response => HubspotSDK::Conversations::PublicChannel
    end

    assert_pattern do
      response => {
        id: String,
        name: String
      }
    end
  end
end
