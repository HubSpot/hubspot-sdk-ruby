# frozen_string_literal: true

require_relative "../../test_helper"

class HubspotSDK::Test::Resources::Conversations::VisitorIdentificationTest < HubspotSDK::Test::ResourceTest
  def test_generate_token_required_params
    skip("Prism tests are disabled")

    response =
      @hub_spot.conversations.visitor_identification.generate_token(email: "visitor-email@example.com")

    assert_pattern do
      response => HubspotSDK::Conversations::IdentificationTokenResponse
    end

    assert_pattern do
      response => {
        token: String
      }
    end
  end
end
