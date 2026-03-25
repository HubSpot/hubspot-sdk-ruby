# frozen_string_literal: true

require_relative "../../test_helper"

class HubspotSDK::Test::Resources::Conversations::VisitorIdentificationTest < HubspotSDK::Test::ResourceTest
  def test_generate_token_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.conversations.visitor_identification.generate_token(email: "email")

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
