# frozen_string_literal: true

require_relative "../../test_helper"

class HubSpotSDK::Test::Resources::Conversations::VisitorIdentificationTest < HubSpotSDK::Test::ResourceTest
  def test_generate_token_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.conversations.visitor_identification.generate_token(email: "email")

    assert_pattern do
      response => HubSpotSDK::Conversations::IdentificationTokenResponse
    end

    assert_pattern do
      response => {
        token: String
      }
    end
  end
end
