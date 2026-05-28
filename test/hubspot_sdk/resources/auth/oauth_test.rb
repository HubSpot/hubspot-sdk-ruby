# frozen_string_literal: true

require_relative "../../test_helper"

class HubSpotSDK::Test::Resources::Auth::OAuthTest < HubSpotSDK::Test::ResourceTest
  def test_create_token
    skip("Mock server tests are disabled")

    response = @hubspot.auth.oauth.create_token

    assert_pattern do
      response => HubSpotSDK::Auth::TokenResponseIf
    end

    assert_pattern do
      case response
      in HubSpotSDK::Auth::AccessTokenResponse
      in HubSpotSDK::Auth::ClientCredentialsTokenResponse
      end
    end

    assert_pattern do
      case response
      in {
        token_use: :access_token,
        access_token: String,
        expires_in: Integer,
        refresh_token: String,
        token_type: String,
        hub_id: Integer | nil,
        id_token: String | nil,
        scopes: ^(HubSpotSDK::Internal::Type::ArrayOf[String]) | nil,
        user_id: Integer | nil
      }
      in {
        token_use: :client_credentials,
        access_token: String,
        expires_in: Integer,
        token_type: String,
        hub_id: Integer | nil,
        id_token: String | nil,
        scopes: ^(HubSpotSDK::Internal::Type::ArrayOf[String]) | nil,
        user_id: Integer | nil
      }
      end
    end
  end

  def test_introspect_token
    skip("Mock server tests are disabled")

    response = @hubspot.auth.oauth.introspect_token

    assert_pattern do
      response => HubSpotSDK::Auth::TokenInfoResponseBaseIf
    end

    assert_pattern do
      case response
      in HubSpotSDK::Auth::PublicAccessTokenInfoResponse
      in HubSpotSDK::Auth::PublicRefreshTokenInfoResponse
      end
    end

    assert_pattern do
      case response
      in {
        token_use: :access_token,
        token: String,
        active: HubSpotSDK::Internal::Type::Boolean,
        app_id: Integer,
        client_id: String,
        expires_in: Integer,
        hub_id: Integer,
        is_private_distribution: HubSpotSDK::Internal::Type::Boolean,
        scopes: ^(HubSpotSDK::Internal::Type::ArrayOf[String]),
        signed_access_token: HubSpotSDK::Auth::SignedAccessToken,
        token_type: String,
        user_id: Integer,
        hub_domain: String | nil,
        user: String | nil
      }
      in {
        token_use: :refresh_token,
        token: String,
        active: HubSpotSDK::Internal::Type::Boolean,
        app_id: Integer,
        client_id: String,
        hub_id: Integer,
        scopes: ^(HubSpotSDK::Internal::Type::ArrayOf[String]),
        token_type: String,
        user_id: Integer,
        hub_domain: String | nil,
        user: String | nil
      }
      end
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
