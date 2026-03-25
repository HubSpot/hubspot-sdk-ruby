# frozen_string_literal: true

require_relative "../../test_helper"

class HubspotSDK::Test::Resources::Cms::URLMappingsTest < HubspotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.cms.url_mappings.create(
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
      response => StringIO
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @hubspot.cms.url_mappings.list

    assert_pattern do
      response => StringIO
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @hubspot.cms.url_mappings.delete(0)

    assert_pattern do
      response => nil
    end
  end

  def test_get
    skip("Mock server tests are disabled")

    response = @hubspot.cms.url_mappings.get(0)

    assert_pattern do
      response => StringIO
    end
  end
end
