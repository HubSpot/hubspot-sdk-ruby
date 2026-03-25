# frozen_string_literal: true

require_relative "../../test_helper"

class HubspotSDK::Test::Resources::Auth::OAuthTest < HubspotSDK::Test::ResourceTest
  def test_create_token
    skip("Mock server tests are disabled")

    response = @hubspot.auth.oauth.create_token

    assert_pattern do
      response => StringIO
    end
  end

  def test_introspect_token
    skip("Mock server tests are disabled")

    response = @hubspot.auth.oauth.introspect_token

    assert_pattern do
      response => HubspotSDK::Auth::TokenInfoResponseBaseIf
    end

    assert_pattern do
      response => {
        active: HubspotSDK::Internal::Type::Boolean
      }
    end
  end

  def test_revoke_token
    skip("Mock server tests are disabled")

    response = @hubspot.auth.oauth.revoke_token

    assert_pattern do
      response => StringIO
    end
  end
end
