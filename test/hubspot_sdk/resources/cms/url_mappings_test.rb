# frozen_string_literal: true

require_relative "../../test_helper"

class HubSpotSDK::Test::Resources::Cms::URLMappingsTest < HubSpotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.cms.url_mappings.create(
        id: 0,
        cdn_purge_embargo_time: 0,
        content_group_id: 0,
        cos_object_type: :ACCESS_GROUP_MEMBERSHIP,
        created: 0,
        created_by_id: 0,
        deleted_at: 0,
        destination: "destination",
        internally_created: true,
        is_active: true,
        is_match_full_url: true,
        is_match_query_string: true,
        is_only_after_not_found: true,
        is_pattern: true,
        is_protocol_agnostic: true,
        is_regex: true,
        is_trailing_slash_optional: true,
        label: "label",
        last_used_at: 0,
        name: "name",
        note: "note",
        portal_id: 0,
        precedence: 0,
        redirect_style: 0,
        route_prefix: "routePrefix",
        updated: 0,
        updated_by_id: 0
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
