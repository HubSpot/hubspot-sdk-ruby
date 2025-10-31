# frozen_string_literal: true

require_relative "../../test_helper"

class HubspotSDK::Test::Resources::Cms::URLRedirectsTest < HubspotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.cms.url_redirects.create(
        destination: "destination",
        redirect_style: 0,
        route_prefix: "routePrefix"
      )

    assert_pattern do
      response => HubspotSDK::Cms::URLMapping
    end

    assert_pattern do
      response => {
        id: String,
        destination: String,
        is_match_full_url: HubspotSDK::Internal::Type::Boolean,
        is_match_query_string: HubspotSDK::Internal::Type::Boolean,
        is_only_after_not_found: HubspotSDK::Internal::Type::Boolean,
        is_pattern: HubspotSDK::Internal::Type::Boolean,
        is_protocol_agnostic: HubspotSDK::Internal::Type::Boolean,
        is_trailing_slash_optional: HubspotSDK::Internal::Type::Boolean,
        precedence: Integer,
        redirect_style: Integer,
        route_prefix: String,
        created: Time | nil,
        updated: Time | nil
      }
    end
  end

  def test_update_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.cms.url_redirects.update(
        "urlRedirectId",
        id: "id",
        destination: "destination",
        is_match_full_url: true,
        is_match_query_string: true,
        is_only_after_not_found: true,
        is_pattern: true,
        is_protocol_agnostic: true,
        is_trailing_slash_optional: true,
        precedence: 0,
        redirect_style: 0,
        route_prefix: "routePrefix"
      )

    assert_pattern do
      response => HubspotSDK::Cms::URLMapping
    end

    assert_pattern do
      response => {
        id: String,
        destination: String,
        is_match_full_url: HubspotSDK::Internal::Type::Boolean,
        is_match_query_string: HubspotSDK::Internal::Type::Boolean,
        is_only_after_not_found: HubspotSDK::Internal::Type::Boolean,
        is_pattern: HubspotSDK::Internal::Type::Boolean,
        is_protocol_agnostic: HubspotSDK::Internal::Type::Boolean,
        is_trailing_slash_optional: HubspotSDK::Internal::Type::Boolean,
        precedence: Integer,
        redirect_style: Integer,
        route_prefix: String,
        created: Time | nil,
        updated: Time | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @hubspot.cms.url_redirects.list

    assert_pattern do
      response => HubspotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubspotSDK::Cms::URLMapping
    end

    assert_pattern do
      row => {
        id: String,
        destination: String,
        is_match_full_url: HubspotSDK::Internal::Type::Boolean,
        is_match_query_string: HubspotSDK::Internal::Type::Boolean,
        is_only_after_not_found: HubspotSDK::Internal::Type::Boolean,
        is_pattern: HubspotSDK::Internal::Type::Boolean,
        is_protocol_agnostic: HubspotSDK::Internal::Type::Boolean,
        is_trailing_slash_optional: HubspotSDK::Internal::Type::Boolean,
        precedence: Integer,
        redirect_style: Integer,
        route_prefix: String,
        created: Time | nil,
        updated: Time | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @hubspot.cms.url_redirects.delete("urlRedirectId")

    assert_pattern do
      response => nil
    end
  end

  def test_get
    skip("Prism tests are disabled")

    response = @hubspot.cms.url_redirects.get("urlRedirectId")

    assert_pattern do
      response => HubspotSDK::Cms::URLMapping
    end

    assert_pattern do
      response => {
        id: String,
        destination: String,
        is_match_full_url: HubspotSDK::Internal::Type::Boolean,
        is_match_query_string: HubspotSDK::Internal::Type::Boolean,
        is_only_after_not_found: HubspotSDK::Internal::Type::Boolean,
        is_pattern: HubspotSDK::Internal::Type::Boolean,
        is_protocol_agnostic: HubspotSDK::Internal::Type::Boolean,
        is_trailing_slash_optional: HubspotSDK::Internal::Type::Boolean,
        precedence: Integer,
        redirect_style: Integer,
        route_prefix: String,
        created: Time | nil,
        updated: Time | nil
      }
    end
  end
end
