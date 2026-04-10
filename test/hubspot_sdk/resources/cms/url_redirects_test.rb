# frozen_string_literal: true

require_relative "../../test_helper"

class HubSpotSDK::Test::Resources::Cms::URLRedirectsTest < HubSpotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.cms.url_redirects.create(
        destination: "destination",
        redirect_style: 0,
        route_prefix: "routePrefix"
      )

    assert_pattern do
      response => HubSpotSDK::Cms::URLMapping
    end

    assert_pattern do
      response => {
        id: String,
        created: Time,
        destination: String,
        is_match_full_url: HubSpotSDK::Internal::Type::Boolean,
        is_match_query_string: HubSpotSDK::Internal::Type::Boolean,
        is_only_after_not_found: HubSpotSDK::Internal::Type::Boolean,
        is_pattern: HubSpotSDK::Internal::Type::Boolean,
        is_protocol_agnostic: HubSpotSDK::Internal::Type::Boolean,
        is_trailing_slash_optional: HubSpotSDK::Internal::Type::Boolean,
        precedence: Integer,
        redirect_style: Integer,
        route_prefix: String,
        updated: Time
      }
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.cms.url_redirects.update(
        "urlRedirectId",
        id: "id",
        created: "2019-12-27T18:11:19.117Z",
        destination: "destination",
        is_match_full_url: true,
        is_match_query_string: true,
        is_only_after_not_found: true,
        is_pattern: true,
        is_protocol_agnostic: true,
        is_trailing_slash_optional: true,
        precedence: 0,
        redirect_style: 0,
        route_prefix: "routePrefix",
        updated: "2019-12-27T18:11:19.117Z"
      )

    assert_pattern do
      response => HubSpotSDK::Cms::URLMapping
    end

    assert_pattern do
      response => {
        id: String,
        created: Time,
        destination: String,
        is_match_full_url: HubSpotSDK::Internal::Type::Boolean,
        is_match_query_string: HubSpotSDK::Internal::Type::Boolean,
        is_only_after_not_found: HubSpotSDK::Internal::Type::Boolean,
        is_pattern: HubSpotSDK::Internal::Type::Boolean,
        is_protocol_agnostic: HubSpotSDK::Internal::Type::Boolean,
        is_trailing_slash_optional: HubSpotSDK::Internal::Type::Boolean,
        precedence: Integer,
        redirect_style: Integer,
        route_prefix: String,
        updated: Time
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @hubspot.cms.url_redirects.list

    assert_pattern do
      response => HubSpotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubSpotSDK::Cms::URLMapping
    end

    assert_pattern do
      row => {
        id: String,
        created: Time,
        destination: String,
        is_match_full_url: HubSpotSDK::Internal::Type::Boolean,
        is_match_query_string: HubSpotSDK::Internal::Type::Boolean,
        is_only_after_not_found: HubSpotSDK::Internal::Type::Boolean,
        is_pattern: HubSpotSDK::Internal::Type::Boolean,
        is_protocol_agnostic: HubSpotSDK::Internal::Type::Boolean,
        is_trailing_slash_optional: HubSpotSDK::Internal::Type::Boolean,
        precedence: Integer,
        redirect_style: Integer,
        route_prefix: String,
        updated: Time
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @hubspot.cms.url_redirects.delete("urlRedirectId")

    assert_pattern do
      response => nil
    end
  end

  def test_get
    skip("Mock server tests are disabled")

    response = @hubspot.cms.url_redirects.get("urlRedirectId")

    assert_pattern do
      response => HubSpotSDK::Cms::URLMapping
    end

    assert_pattern do
      response => {
        id: String,
        created: Time,
        destination: String,
        is_match_full_url: HubSpotSDK::Internal::Type::Boolean,
        is_match_query_string: HubSpotSDK::Internal::Type::Boolean,
        is_only_after_not_found: HubSpotSDK::Internal::Type::Boolean,
        is_pattern: HubSpotSDK::Internal::Type::Boolean,
        is_protocol_agnostic: HubSpotSDK::Internal::Type::Boolean,
        is_trailing_slash_optional: HubSpotSDK::Internal::Type::Boolean,
        precedence: Integer,
        redirect_style: Integer,
        route_prefix: String,
        updated: Time
      }
    end
  end
end
