# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::Cms::Hubdb::TablesTest < HubspotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @hubspot.cms.hubdb.tables.create(label: "label", name: "name")

    assert_pattern do
      response => HubspotSDK::Cms::HubDBTableV3
    end

    assert_pattern do
      response => {
        deleted_at: Time,
        label: String,
        name: String,
        id: String | nil,
        allow_child_tables: HubspotSDK::Internal::Type::Boolean | nil,
        allow_public_api_access: HubspotSDK::Internal::Type::Boolean | nil,
        column_count: Integer | nil,
        columns: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::Column]) | nil,
        created_at: Time | nil,
        created_by: HubspotSDK::Cms::SimpleUser | nil,
        deleted: HubspotSDK::Internal::Type::Boolean | nil,
        dynamic_meta_tags: ^(HubspotSDK::Internal::Type::HashOf[Integer]) | nil,
        enable_child_table_pages: HubspotSDK::Internal::Type::Boolean | nil,
        is_ordered_manually: HubspotSDK::Internal::Type::Boolean | nil,
        published: HubspotSDK::Internal::Type::Boolean | nil,
        published_at: Time | nil,
        row_count: Integer | nil,
        updated_at: Time | nil,
        updated_by: HubspotSDK::Cms::SimpleUser | nil,
        use_for_pages: HubspotSDK::Internal::Type::Boolean | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @hubspot.cms.hubdb.tables.list

    assert_pattern do
      response => HubspotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubspotSDK::Cms::HubDBTableV3
    end

    assert_pattern do
      row => {
        deleted_at: Time,
        label: String,
        name: String,
        id: String | nil,
        allow_child_tables: HubspotSDK::Internal::Type::Boolean | nil,
        allow_public_api_access: HubspotSDK::Internal::Type::Boolean | nil,
        column_count: Integer | nil,
        columns: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::Column]) | nil,
        created_at: Time | nil,
        created_by: HubspotSDK::Cms::SimpleUser | nil,
        deleted: HubspotSDK::Internal::Type::Boolean | nil,
        dynamic_meta_tags: ^(HubspotSDK::Internal::Type::HashOf[Integer]) | nil,
        enable_child_table_pages: HubspotSDK::Internal::Type::Boolean | nil,
        is_ordered_manually: HubspotSDK::Internal::Type::Boolean | nil,
        published: HubspotSDK::Internal::Type::Boolean | nil,
        published_at: Time | nil,
        row_count: Integer | nil,
        updated_at: Time | nil,
        updated_by: HubspotSDK::Cms::SimpleUser | nil,
        use_for_pages: HubspotSDK::Internal::Type::Boolean | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @hubspot.cms.hubdb.tables.delete("tableIdOrName")

    assert_pattern do
      response => nil
    end
  end

  def test_clone_draft_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.cms.hubdb.tables.clone_draft("tableIdOrName", copy_rows: true, is_hubspot_defined: true)

    assert_pattern do
      response => HubspotSDK::Cms::HubDBTableV3
    end

    assert_pattern do
      response => {
        deleted_at: Time,
        label: String,
        name: String,
        id: String | nil,
        allow_child_tables: HubspotSDK::Internal::Type::Boolean | nil,
        allow_public_api_access: HubspotSDK::Internal::Type::Boolean | nil,
        column_count: Integer | nil,
        columns: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::Column]) | nil,
        created_at: Time | nil,
        created_by: HubspotSDK::Cms::SimpleUser | nil,
        deleted: HubspotSDK::Internal::Type::Boolean | nil,
        dynamic_meta_tags: ^(HubspotSDK::Internal::Type::HashOf[Integer]) | nil,
        enable_child_table_pages: HubspotSDK::Internal::Type::Boolean | nil,
        is_ordered_manually: HubspotSDK::Internal::Type::Boolean | nil,
        published: HubspotSDK::Internal::Type::Boolean | nil,
        published_at: Time | nil,
        row_count: Integer | nil,
        updated_at: Time | nil,
        updated_by: HubspotSDK::Cms::SimpleUser | nil,
        use_for_pages: HubspotSDK::Internal::Type::Boolean | nil
      }
    end
  end

  def test_delete_version_required_params
    skip("Prism tests are disabled")

    response = @hubspot.cms.hubdb.tables.delete_version(0, table_id_or_name: "tableIdOrName")

    assert_pattern do
      response => nil
    end
  end

  def test_export
    skip("Prism tests are disabled")

    response = @hubspot.cms.hubdb.tables.export("tableIdOrName")

    assert_pattern do
      response => StringIO
    end
  end

  def test_export_draft
    skip("Prism tests are disabled")

    response = @hubspot.cms.hubdb.tables.export_draft("tableIdOrName")

    assert_pattern do
      response => StringIO
    end
  end

  def test_get
    skip("Prism tests are disabled")

    response = @hubspot.cms.hubdb.tables.get("tableIdOrName")

    assert_pattern do
      response => HubspotSDK::Cms::HubDBTableV3
    end

    assert_pattern do
      response => {
        deleted_at: Time,
        label: String,
        name: String,
        id: String | nil,
        allow_child_tables: HubspotSDK::Internal::Type::Boolean | nil,
        allow_public_api_access: HubspotSDK::Internal::Type::Boolean | nil,
        column_count: Integer | nil,
        columns: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::Column]) | nil,
        created_at: Time | nil,
        created_by: HubspotSDK::Cms::SimpleUser | nil,
        deleted: HubspotSDK::Internal::Type::Boolean | nil,
        dynamic_meta_tags: ^(HubspotSDK::Internal::Type::HashOf[Integer]) | nil,
        enable_child_table_pages: HubspotSDK::Internal::Type::Boolean | nil,
        is_ordered_manually: HubspotSDK::Internal::Type::Boolean | nil,
        published: HubspotSDK::Internal::Type::Boolean | nil,
        published_at: Time | nil,
        row_count: Integer | nil,
        updated_at: Time | nil,
        updated_by: HubspotSDK::Cms::SimpleUser | nil,
        use_for_pages: HubspotSDK::Internal::Type::Boolean | nil
      }
    end
  end

  def test_get_draft
    skip("Prism tests are disabled")

    response = @hubspot.cms.hubdb.tables.get_draft("tableIdOrName")

    assert_pattern do
      response => HubspotSDK::Cms::HubDBTableV3
    end

    assert_pattern do
      response => {
        deleted_at: Time,
        label: String,
        name: String,
        id: String | nil,
        allow_child_tables: HubspotSDK::Internal::Type::Boolean | nil,
        allow_public_api_access: HubspotSDK::Internal::Type::Boolean | nil,
        column_count: Integer | nil,
        columns: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::Column]) | nil,
        created_at: Time | nil,
        created_by: HubspotSDK::Cms::SimpleUser | nil,
        deleted: HubspotSDK::Internal::Type::Boolean | nil,
        dynamic_meta_tags: ^(HubspotSDK::Internal::Type::HashOf[Integer]) | nil,
        enable_child_table_pages: HubspotSDK::Internal::Type::Boolean | nil,
        is_ordered_manually: HubspotSDK::Internal::Type::Boolean | nil,
        published: HubspotSDK::Internal::Type::Boolean | nil,
        published_at: Time | nil,
        row_count: Integer | nil,
        updated_at: Time | nil,
        updated_by: HubspotSDK::Cms::SimpleUser | nil,
        use_for_pages: HubspotSDK::Internal::Type::Boolean | nil
      }
    end
  end

  def test_import_draft
    skip("Prism tests are disabled")

    response = @hubspot.cms.hubdb.tables.import_draft("tableIdOrName")

    assert_pattern do
      response => HubspotSDK::Cms::ImportResult
    end

    assert_pattern do
      response => {
        duplicate_rows: Integer,
        errors: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Error]),
        row_limit_exceeded: HubspotSDK::Internal::Type::Boolean,
        rows_imported: Integer
      }
    end
  end

  def test_list_draft
    skip("Prism tests are disabled")

    response = @hubspot.cms.hubdb.tables.list_draft

    assert_pattern do
      response => HubspotSDK::Cms::CollectionResponseWithTotalHubDBTableV3ForwardPaging
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::HubDBTableV3]),
        total: Integer,
        paging: HubspotSDK::ForwardPaging | nil
      }
    end
  end

  def test_publish_draft
    skip("Prism tests are disabled")

    response = @hubspot.cms.hubdb.tables.publish_draft("tableIdOrName")

    assert_pattern do
      response => HubspotSDK::Cms::HubDBTableV3
    end

    assert_pattern do
      response => {
        deleted_at: Time,
        label: String,
        name: String,
        id: String | nil,
        allow_child_tables: HubspotSDK::Internal::Type::Boolean | nil,
        allow_public_api_access: HubspotSDK::Internal::Type::Boolean | nil,
        column_count: Integer | nil,
        columns: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::Column]) | nil,
        created_at: Time | nil,
        created_by: HubspotSDK::Cms::SimpleUser | nil,
        deleted: HubspotSDK::Internal::Type::Boolean | nil,
        dynamic_meta_tags: ^(HubspotSDK::Internal::Type::HashOf[Integer]) | nil,
        enable_child_table_pages: HubspotSDK::Internal::Type::Boolean | nil,
        is_ordered_manually: HubspotSDK::Internal::Type::Boolean | nil,
        published: HubspotSDK::Internal::Type::Boolean | nil,
        published_at: Time | nil,
        row_count: Integer | nil,
        updated_at: Time | nil,
        updated_by: HubspotSDK::Cms::SimpleUser | nil,
        use_for_pages: HubspotSDK::Internal::Type::Boolean | nil
      }
    end
  end

  def test_reset_draft
    skip("Prism tests are disabled")

    response = @hubspot.cms.hubdb.tables.reset_draft("tableIdOrName")

    assert_pattern do
      response => HubspotSDK::Cms::HubDBTableV3
    end

    assert_pattern do
      response => {
        deleted_at: Time,
        label: String,
        name: String,
        id: String | nil,
        allow_child_tables: HubspotSDK::Internal::Type::Boolean | nil,
        allow_public_api_access: HubspotSDK::Internal::Type::Boolean | nil,
        column_count: Integer | nil,
        columns: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::Column]) | nil,
        created_at: Time | nil,
        created_by: HubspotSDK::Cms::SimpleUser | nil,
        deleted: HubspotSDK::Internal::Type::Boolean | nil,
        dynamic_meta_tags: ^(HubspotSDK::Internal::Type::HashOf[Integer]) | nil,
        enable_child_table_pages: HubspotSDK::Internal::Type::Boolean | nil,
        is_ordered_manually: HubspotSDK::Internal::Type::Boolean | nil,
        published: HubspotSDK::Internal::Type::Boolean | nil,
        published_at: Time | nil,
        row_count: Integer | nil,
        updated_at: Time | nil,
        updated_by: HubspotSDK::Cms::SimpleUser | nil,
        use_for_pages: HubspotSDK::Internal::Type::Boolean | nil
      }
    end
  end

  def test_unpublish
    skip("Prism tests are disabled")

    response = @hubspot.cms.hubdb.tables.unpublish("tableIdOrName")

    assert_pattern do
      response => HubspotSDK::Cms::HubDBTableV3
    end

    assert_pattern do
      response => {
        deleted_at: Time,
        label: String,
        name: String,
        id: String | nil,
        allow_child_tables: HubspotSDK::Internal::Type::Boolean | nil,
        allow_public_api_access: HubspotSDK::Internal::Type::Boolean | nil,
        column_count: Integer | nil,
        columns: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::Column]) | nil,
        created_at: Time | nil,
        created_by: HubspotSDK::Cms::SimpleUser | nil,
        deleted: HubspotSDK::Internal::Type::Boolean | nil,
        dynamic_meta_tags: ^(HubspotSDK::Internal::Type::HashOf[Integer]) | nil,
        enable_child_table_pages: HubspotSDK::Internal::Type::Boolean | nil,
        is_ordered_manually: HubspotSDK::Internal::Type::Boolean | nil,
        published: HubspotSDK::Internal::Type::Boolean | nil,
        published_at: Time | nil,
        row_count: Integer | nil,
        updated_at: Time | nil,
        updated_by: HubspotSDK::Cms::SimpleUser | nil,
        use_for_pages: HubspotSDK::Internal::Type::Boolean | nil
      }
    end
  end

  def test_update_draft_required_params
    skip("Prism tests are disabled")

    response = @hubspot.cms.hubdb.tables.update_draft("tableIdOrName", label: "label", name: "name")

    assert_pattern do
      response => HubspotSDK::Cms::HubDBTableV3
    end

    assert_pattern do
      response => {
        deleted_at: Time,
        label: String,
        name: String,
        id: String | nil,
        allow_child_tables: HubspotSDK::Internal::Type::Boolean | nil,
        allow_public_api_access: HubspotSDK::Internal::Type::Boolean | nil,
        column_count: Integer | nil,
        columns: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::Column]) | nil,
        created_at: Time | nil,
        created_by: HubspotSDK::Cms::SimpleUser | nil,
        deleted: HubspotSDK::Internal::Type::Boolean | nil,
        dynamic_meta_tags: ^(HubspotSDK::Internal::Type::HashOf[Integer]) | nil,
        enable_child_table_pages: HubspotSDK::Internal::Type::Boolean | nil,
        is_ordered_manually: HubspotSDK::Internal::Type::Boolean | nil,
        published: HubspotSDK::Internal::Type::Boolean | nil,
        published_at: Time | nil,
        row_count: Integer | nil,
        updated_at: Time | nil,
        updated_by: HubspotSDK::Cms::SimpleUser | nil,
        use_for_pages: HubspotSDK::Internal::Type::Boolean | nil
      }
    end
  end
end
