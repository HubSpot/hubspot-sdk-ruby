# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::Cms::Hubdb::RowsTest < HubspotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.cms.hubdb.rows.create("tableIdOrName", child_table_id: 0, display_index: 0, values: {foo: {}})

    assert_pattern do
      response => HubspotSDK::Cms::HubDBTableRowV3
    end

    assert_pattern do
      response => {
        id: String,
        child_table_id: String,
        created_at: Time,
        name: String,
        path: String,
        published_at: Time,
        updated_at: Time,
        values: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown])
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

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

  def test_clone_batch_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.hubdb.rows.clone_batch("tableIdOrName", inputs: [{id: "id"}])

    assert_pattern do
      response => HubspotSDK::Cms::BatchResponseHubDBTableRowV3
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::HubDBTableRowV3]),
        started_at: Time,
        status: HubspotSDK::Cms::BatchResponseHubDBTableRowV3::Status,
        errors: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::StandardError]) | nil,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        num_errors: Integer | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_clone_draft_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.hubdb.rows.clone_draft("321669910225", table_id_or_name: "tableIdOrName")

    assert_pattern do
      response => HubspotSDK::Cms::HubDBTableRowV3
    end

    assert_pattern do
      response => {
        id: String,
        child_table_id: String,
        created_at: Time,
        name: String,
        path: String,
        published_at: Time,
        updated_at: Time,
        values: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown])
      }
    end
  end

  def test_create_batch_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.cms.hubdb.rows.create_batch(
        "tableIdOrName",
        inputs: [{childTableId: 0, displayIndex: 0, values: {foo: {}}}]
      )

    assert_pattern do
      response => HubspotSDK::Cms::BatchResponseHubDBTableRowV3
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::HubDBTableRowV3]),
        started_at: Time,
        status: HubspotSDK::Cms::BatchResponseHubDBTableRowV3::Status,
        errors: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::StandardError]) | nil,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        num_errors: Integer | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_delete_draft_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.hubdb.rows.delete_draft("321669910225", table_id_or_name: "tableIdOrName")

    assert_pattern do
      response => nil
    end
  end

  def test_get_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.hubdb.rows.get("321669910225", table_id_or_name: "tableIdOrName")

    assert_pattern do
      response => HubspotSDK::Cms::HubDBTableRowV3
    end

    assert_pattern do
      response => {
        id: String,
        child_table_id: String,
        created_at: Time,
        name: String,
        path: String,
        published_at: Time,
        updated_at: Time,
        values: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown])
      }
    end
  end

  def test_get_batch_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.hubdb.rows.get_batch("tableIdOrName", inputs: ["string"])

    assert_pattern do
      response => HubspotSDK::Cms::BatchResponseHubDBTableRowV3
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::HubDBTableRowV3]),
        started_at: Time,
        status: HubspotSDK::Cms::BatchResponseHubDBTableRowV3::Status,
        errors: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::StandardError]) | nil,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        num_errors: Integer | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_get_draft_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.hubdb.rows.get_draft("321669910225", table_id_or_name: "tableIdOrName")

    assert_pattern do
      response => HubspotSDK::Cms::HubDBTableRowV3
    end

    assert_pattern do
      response => {
        id: String,
        child_table_id: String,
        created_at: Time,
        name: String,
        path: String,
        published_at: Time,
        updated_at: Time,
        values: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown])
      }
    end
  end

  def test_get_draft_batch_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.hubdb.rows.get_draft_batch("tableIdOrName", inputs: ["string"])

    assert_pattern do
      response => HubspotSDK::Cms::BatchResponseHubDBTableRowV3
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::HubDBTableRowV3]),
        started_at: Time,
        status: HubspotSDK::Cms::BatchResponseHubDBTableRowV3::Status,
        errors: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::StandardError]) | nil,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        num_errors: Integer | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_purge_batch_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.hubdb.rows.purge_batch("tableIdOrName", inputs: ["string"])

    assert_pattern do
      response => HubspotSDK::Cms::BatchResponseHubDBTableRowV3
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::HubDBTableRowV3]),
        started_at: Time,
        status: HubspotSDK::Cms::BatchResponseHubDBTableRowV3::Status,
        errors: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::StandardError]) | nil,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        num_errors: Integer | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_replace_batch_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.cms.hubdb.rows.replace_batch(
        "tableIdOrName",
        inputs: [{childTableId: 0, displayIndex: 0, values: {foo: {}}}]
      )

    assert_pattern do
      response => HubspotSDK::Cms::BatchResponseHubDBTableRowV3
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::HubDBTableRowV3]),
        started_at: Time,
        status: HubspotSDK::Cms::BatchResponseHubDBTableRowV3::Status,
        errors: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::StandardError]) | nil,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        num_errors: Integer | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_replace_draft_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.cms.hubdb.rows.replace_draft(
        "321669910225",
        table_id_or_name: "tableIdOrName",
        child_table_id: 0,
        display_index: 0,
        values: {foo: {}}
      )

    assert_pattern do
      response => HubspotSDK::Cms::HubDBTableRowV3
    end

    assert_pattern do
      response => {
        id: String,
        child_table_id: String,
        created_at: Time,
        name: String,
        path: String,
        published_at: Time,
        updated_at: Time,
        values: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown])
      }
    end
  end

  def test_update_batch_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.cms.hubdb.rows.update_batch(
        "tableIdOrName",
        inputs: [{childTableId: 0, displayIndex: 0, values: {foo: {}}}]
      )

    assert_pattern do
      response => HubspotSDK::Cms::BatchResponseHubDBTableRowV3
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::HubDBTableRowV3]),
        started_at: Time,
        status: HubspotSDK::Cms::BatchResponseHubDBTableRowV3::Status,
        errors: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::StandardError]) | nil,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        num_errors: Integer | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_update_draft_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.cms.hubdb.rows.update_draft(
        "321669910225",
        table_id_or_name: "tableIdOrName",
        child_table_id: 0,
        display_index: 0,
        values: {foo: {}}
      )

    assert_pattern do
      response => HubspotSDK::Cms::HubDBTableRowV3
    end

    assert_pattern do
      response => {
        id: String,
        child_table_id: String,
        created_at: Time,
        name: String,
        path: String,
        published_at: Time,
        updated_at: Time,
        values: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown])
      }
    end
  end
end
