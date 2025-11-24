# frozen_string_literal: true

require_relative "../../test_helper"

class HubspotSDK::Test::Resources::Auth::OAuthTest < HubspotSDK::Test::ResourceTest
  def test_create_access_token
    skip("Prism tests are disabled")

    response = @hubspot.auth.oauth.create_access_token

    assert_pattern do
      response => HubspotSDK::Auth::TokenResponseIf
    end

    assert_pattern do
      response => {
        access_token: String | nil,
        expires_in: Integer | nil,
        hub_id: Integer | nil,
        id_token: String | nil,
        scopes: ^(HubspotSDK::Internal::Type::ArrayOf[String]) | nil,
        token_type: String | nil,
        user_id: Integer | nil
      }
    end
  end

  def test_delete_refresh_token
    skip("Prism tests are disabled")

    response = @hubspot.auth.oauth.delete_refresh_token("token")

    assert_pattern do
      response => nil
    end
  end

  def test_get_access_token
    skip("Prism tests are disabled")

    response = @hubspot.auth.oauth.get_access_token("token")

    assert_pattern do
      response => HubspotSDK::Auth::AccessTokenInfoResponse
    end

    assert_pattern do
      response => {
        token: String,
        app_id: Integer,
        expires_in: Integer,
        hub_id: Integer,
        scopes: ^(HubspotSDK::Internal::Type::ArrayOf[String]),
        token_type: String,
        user_id: Integer,
        hub_domain: String | nil,
        is_private_distribution: HubspotSDK::Internal::Type::Boolean | nil,
        signed_access_token: HubspotSDK::Auth::SignedAccessToken | nil,
        user: String | nil
      }
    end
  end

  def test_get_refresh_token
    skip("Prism tests are disabled")

    response = @hubspot.auth.oauth.get_refresh_token("token")

    assert_pattern do
      response => HubspotSDK::Auth::RefreshTokenInfoResponse
    end

    assert_pattern do
      response => {
        token: String,
        client_id: String,
        hub_id: Integer,
        scopes: ^(HubspotSDK::Internal::Type::ArrayOf[String]),
        token_type: String,
        user_id: Integer,
        hub_domain: String | nil,
        user: String | nil
      }
    end
  end
end
