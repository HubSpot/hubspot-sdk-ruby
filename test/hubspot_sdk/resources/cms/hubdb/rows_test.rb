# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::Cms::Hubdb::RowsTest < HubspotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @hubspot.cms.hubdb.rows.create("tableIdOrName", values: {foo: {}})

    assert_pattern do
      response => HubspotSDK::Cms::HubDBTableRowV3
    end

    assert_pattern do
      response => {
        values: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]),
        id: String | nil,
        child_table_id: String | nil,
        created_at: Time | nil,
        name: String | nil,
        path: String | nil,
        published_at: Time | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @hubspot.cms.hubdb.rows.list("tableIdOrName")

    assert_pattern do
      response => HubspotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubspotSDK::Internal::Type::Unknown
    end
  end

  def test_clone_draft_required_params
    skip("Prism tests are disabled")

    response = @hubspot.cms.hubdb.rows.clone_draft("321669910225", table_id_or_name: "tableIdOrName")

    assert_pattern do
      response => HubspotSDK::Cms::HubDBTableRowV3
    end

    assert_pattern do
      response => {
        values: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]),
        id: String | nil,
        child_table_id: String | nil,
        created_at: Time | nil,
        name: String | nil,
        path: String | nil,
        published_at: Time | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_delete_draft_required_params
    skip("Prism tests are disabled")

    response = @hubspot.cms.hubdb.rows.delete_draft("321669910225", table_id_or_name: "tableIdOrName")

    assert_pattern do
      response => nil
    end
  end

  def test_get_required_params
    skip("Prism tests are disabled")

    response = @hubspot.cms.hubdb.rows.get("321669910225", table_id_or_name: "tableIdOrName")

    assert_pattern do
      response => HubspotSDK::Cms::HubDBTableRowV3
    end

    assert_pattern do
      response => {
        values: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]),
        id: String | nil,
        child_table_id: String | nil,
        created_at: Time | nil,
        name: String | nil,
        path: String | nil,
        published_at: Time | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_get_draft_required_params
    skip("Prism tests are disabled")

    response = @hubspot.cms.hubdb.rows.get_draft("321669910225", table_id_or_name: "tableIdOrName")

    assert_pattern do
      response => HubspotSDK::Cms::HubDBTableRowV3
    end

    assert_pattern do
      response => {
        values: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]),
        id: String | nil,
        child_table_id: String | nil,
        created_at: Time | nil,
        name: String | nil,
        path: String | nil,
        published_at: Time | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_list_draft
    skip("Prism tests are disabled")

    response = @hubspot.cms.hubdb.rows.list_draft("tableIdOrName")

    assert_pattern do
      response => HubspotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubspotSDK::Internal::Type::Unknown
    end
  end

  def test_replace_draft_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.cms.hubdb.rows.replace_draft(
        "321669910225",
        table_id_or_name: "tableIdOrName",
        values: {foo: {}}
      )

    assert_pattern do
      response => HubspotSDK::Cms::HubDBTableRowV3
    end

    assert_pattern do
      response => {
        values: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]),
        id: String | nil,
        child_table_id: String | nil,
        created_at: Time | nil,
        name: String | nil,
        path: String | nil,
        published_at: Time | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_update_draft_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.cms.hubdb.rows.update_draft(
        "321669910225",
        table_id_or_name: "tableIdOrName",
        values: {foo: {}}
      )

    assert_pattern do
      response => HubspotSDK::Cms::HubDBTableRowV3
    end

    assert_pattern do
      response => {
        values: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]),
        id: String | nil,
        child_table_id: String | nil,
        created_at: Time | nil,
        name: String | nil,
        path: String | nil,
        published_at: Time | nil,
        updated_at: Time | nil
      }
    end
  end
end
