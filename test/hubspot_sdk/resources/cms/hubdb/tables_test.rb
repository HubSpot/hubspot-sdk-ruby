# frozen_string_literal: true

require_relative "../../../test_helper"

class HubSpotSDK::Test::Resources::Cms::Hubdb::TablesTest < HubSpotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.cms.hubdb.tables.create(
        allow_child_tables: true,
        allow_public_api_access: true,
        columns: [
          {
            id: 0,
            label: "label",
            name: "name",
            options: [
              {
                id: "id",
                createdAt: "2019-12-27T18:11:19.117Z",
                label: "label",
                name: "name",
                order: 0,
                type: "type",
                updatedAt: "2019-12-27T18:11:19.117Z"
              }
            ],
            type: :BOOLEAN
          }
        ],
        dynamic_meta_tags: {foo: 0},
        enable_child_table_pages: true,
        label: "label",
        name: "name",
        use_for_pages: true
      )

    assert_pattern do
      response => HubSpotSDK::Cms::HubDBTableV3
    end

    assert_pattern do
      response => {
        id: String,
        allow_child_tables: HubSpotSDK::Internal::Type::Boolean,
        allow_public_api_access: HubSpotSDK::Internal::Type::Boolean,
        column_count: Integer,
        columns: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Cms::Column]),
        created_at: Time,
        deleted: HubSpotSDK::Internal::Type::Boolean,
        deleted_at: Time,
        dynamic_meta_tags: ^(HubSpotSDK::Internal::Type::HashOf[Integer]),
        enable_child_table_pages: HubSpotSDK::Internal::Type::Boolean,
        label: String,
        name: String,
        published: HubSpotSDK::Internal::Type::Boolean,
        published_at: Time,
        row_count: Integer,
        updated_at: Time,
        use_for_pages: HubSpotSDK::Internal::Type::Boolean,
        created_by: HubSpotSDK::Cms::SimpleUser | nil,
        is_ordered_manually: HubSpotSDK::Internal::Type::Boolean | nil,
        updated_by: HubSpotSDK::Cms::SimpleUser | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @hubspot.cms.hubdb.tables.list

    assert_pattern do
      response => HubSpotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubSpotSDK::Cms::HubDBTableV3
    end

    assert_pattern do
      row => {
        id: String,
        allow_child_tables: HubSpotSDK::Internal::Type::Boolean,
        allow_public_api_access: HubSpotSDK::Internal::Type::Boolean,
        column_count: Integer,
        columns: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Cms::Column]),
        created_at: Time,
        deleted: HubSpotSDK::Internal::Type::Boolean,
        deleted_at: Time,
        dynamic_meta_tags: ^(HubSpotSDK::Internal::Type::HashOf[Integer]),
        enable_child_table_pages: HubSpotSDK::Internal::Type::Boolean,
        label: String,
        name: String,
        published: HubSpotSDK::Internal::Type::Boolean,
        published_at: Time,
        row_count: Integer,
        updated_at: Time,
        use_for_pages: HubSpotSDK::Internal::Type::Boolean,
        created_by: HubSpotSDK::Cms::SimpleUser | nil,
        is_ordered_manually: HubSpotSDK::Internal::Type::Boolean | nil,
        updated_by: HubSpotSDK::Cms::SimpleUser | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @hubspot.cms.hubdb.tables.delete("tableIdOrName")

    assert_pattern do
      response => nil
    end
  end

  def test_clone_draft_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.cms.hubdb.tables.clone_draft("tableIdOrName", copy_rows: true, is_hubspot_defined: true)

    assert_pattern do
      response => HubSpotSDK::Cms::HubDBTableV3
    end

    assert_pattern do
      response => {
        id: String,
        allow_child_tables: HubSpotSDK::Internal::Type::Boolean,
        allow_public_api_access: HubSpotSDK::Internal::Type::Boolean,
        column_count: Integer,
        columns: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Cms::Column]),
        created_at: Time,
        deleted: HubSpotSDK::Internal::Type::Boolean,
        deleted_at: Time,
        dynamic_meta_tags: ^(HubSpotSDK::Internal::Type::HashOf[Integer]),
        enable_child_table_pages: HubSpotSDK::Internal::Type::Boolean,
        label: String,
        name: String,
        published: HubSpotSDK::Internal::Type::Boolean,
        published_at: Time,
        row_count: Integer,
        updated_at: Time,
        use_for_pages: HubSpotSDK::Internal::Type::Boolean,
        created_by: HubSpotSDK::Cms::SimpleUser | nil,
        is_ordered_manually: HubSpotSDK::Internal::Type::Boolean | nil,
        updated_by: HubSpotSDK::Cms::SimpleUser | nil
      }
    end
  end

  def test_delete_version_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.hubdb.tables.delete_version(0, table_id_or_name: "tableIdOrName")

    assert_pattern do
      response => nil
    end
  end

  def test_export
    skip("Mock server tests are disabled")

    response = @hubspot.cms.hubdb.tables.export("tableIdOrName")

    assert_pattern do
      response => StringIO
    end
  end

  def test_export_draft
    skip("Mock server tests are disabled")

    response = @hubspot.cms.hubdb.tables.export_draft("tableIdOrName")

    assert_pattern do
      response => StringIO
    end
  end

  def test_get
    skip("Mock server tests are disabled")

    response = @hubspot.cms.hubdb.tables.get("tableIdOrName")

    assert_pattern do
      response => HubSpotSDK::Cms::HubDBTableV3
    end

    assert_pattern do
      response => {
        id: String,
        allow_child_tables: HubSpotSDK::Internal::Type::Boolean,
        allow_public_api_access: HubSpotSDK::Internal::Type::Boolean,
        column_count: Integer,
        columns: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Cms::Column]),
        created_at: Time,
        deleted: HubSpotSDK::Internal::Type::Boolean,
        deleted_at: Time,
        dynamic_meta_tags: ^(HubSpotSDK::Internal::Type::HashOf[Integer]),
        enable_child_table_pages: HubSpotSDK::Internal::Type::Boolean,
        label: String,
        name: String,
        published: HubSpotSDK::Internal::Type::Boolean,
        published_at: Time,
        row_count: Integer,
        updated_at: Time,
        use_for_pages: HubSpotSDK::Internal::Type::Boolean,
        created_by: HubSpotSDK::Cms::SimpleUser | nil,
        is_ordered_manually: HubSpotSDK::Internal::Type::Boolean | nil,
        updated_by: HubSpotSDK::Cms::SimpleUser | nil
      }
    end
  end

  def test_get_draft
    skip("Mock server tests are disabled")

    response = @hubspot.cms.hubdb.tables.get_draft("tableIdOrName")

    assert_pattern do
      response => HubSpotSDK::Cms::HubDBTableV3
    end

    assert_pattern do
      response => {
        id: String,
        allow_child_tables: HubSpotSDK::Internal::Type::Boolean,
        allow_public_api_access: HubSpotSDK::Internal::Type::Boolean,
        column_count: Integer,
        columns: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Cms::Column]),
        created_at: Time,
        deleted: HubSpotSDK::Internal::Type::Boolean,
        deleted_at: Time,
        dynamic_meta_tags: ^(HubSpotSDK::Internal::Type::HashOf[Integer]),
        enable_child_table_pages: HubSpotSDK::Internal::Type::Boolean,
        label: String,
        name: String,
        published: HubSpotSDK::Internal::Type::Boolean,
        published_at: Time,
        row_count: Integer,
        updated_at: Time,
        use_for_pages: HubSpotSDK::Internal::Type::Boolean,
        created_by: HubSpotSDK::Cms::SimpleUser | nil,
        is_ordered_manually: HubSpotSDK::Internal::Type::Boolean | nil,
        updated_by: HubSpotSDK::Cms::SimpleUser | nil
      }
    end
  end

  def test_import_draft
    skip("Mock server tests are disabled")

    response = @hubspot.cms.hubdb.tables.import_draft("tableIdOrName")

    assert_pattern do
      response => HubSpotSDK::Cms::ImportResult
    end

    assert_pattern do
      response => {
        duplicate_rows: Integer,
        errors: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Error]),
        row_limit_exceeded: HubSpotSDK::Internal::Type::Boolean,
        rows_imported: Integer
      }
    end
  end

  def test_list_draft
    skip("Mock server tests are disabled")

    response = @hubspot.cms.hubdb.tables.list_draft

    assert_pattern do
      response => HubSpotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubSpotSDK::Cms::HubDBTableV3
    end

    assert_pattern do
      row => {
        id: String,
        allow_child_tables: HubSpotSDK::Internal::Type::Boolean,
        allow_public_api_access: HubSpotSDK::Internal::Type::Boolean,
        column_count: Integer,
        columns: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Cms::Column]),
        created_at: Time,
        deleted: HubSpotSDK::Internal::Type::Boolean,
        deleted_at: Time,
        dynamic_meta_tags: ^(HubSpotSDK::Internal::Type::HashOf[Integer]),
        enable_child_table_pages: HubSpotSDK::Internal::Type::Boolean,
        label: String,
        name: String,
        published: HubSpotSDK::Internal::Type::Boolean,
        published_at: Time,
        row_count: Integer,
        updated_at: Time,
        use_for_pages: HubSpotSDK::Internal::Type::Boolean,
        created_by: HubSpotSDK::Cms::SimpleUser | nil,
        is_ordered_manually: HubSpotSDK::Internal::Type::Boolean | nil,
        updated_by: HubSpotSDK::Cms::SimpleUser | nil
      }
    end
  end

  def test_publish_draft
    skip("Mock server tests are disabled")

    response = @hubspot.cms.hubdb.tables.publish_draft("tableIdOrName")

    assert_pattern do
      response => HubSpotSDK::Cms::HubDBTableV3
    end

    assert_pattern do
      response => {
        id: String,
        allow_child_tables: HubSpotSDK::Internal::Type::Boolean,
        allow_public_api_access: HubSpotSDK::Internal::Type::Boolean,
        column_count: Integer,
        columns: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Cms::Column]),
        created_at: Time,
        deleted: HubSpotSDK::Internal::Type::Boolean,
        deleted_at: Time,
        dynamic_meta_tags: ^(HubSpotSDK::Internal::Type::HashOf[Integer]),
        enable_child_table_pages: HubSpotSDK::Internal::Type::Boolean,
        label: String,
        name: String,
        published: HubSpotSDK::Internal::Type::Boolean,
        published_at: Time,
        row_count: Integer,
        updated_at: Time,
        use_for_pages: HubSpotSDK::Internal::Type::Boolean,
        created_by: HubSpotSDK::Cms::SimpleUser | nil,
        is_ordered_manually: HubSpotSDK::Internal::Type::Boolean | nil,
        updated_by: HubSpotSDK::Cms::SimpleUser | nil
      }
    end
  end

  def test_reset_draft
    skip("Mock server tests are disabled")

    response = @hubspot.cms.hubdb.tables.reset_draft("tableIdOrName")

    assert_pattern do
      response => HubSpotSDK::Cms::HubDBTableV3
    end

    assert_pattern do
      response => {
        id: String,
        allow_child_tables: HubSpotSDK::Internal::Type::Boolean,
        allow_public_api_access: HubSpotSDK::Internal::Type::Boolean,
        column_count: Integer,
        columns: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Cms::Column]),
        created_at: Time,
        deleted: HubSpotSDK::Internal::Type::Boolean,
        deleted_at: Time,
        dynamic_meta_tags: ^(HubSpotSDK::Internal::Type::HashOf[Integer]),
        enable_child_table_pages: HubSpotSDK::Internal::Type::Boolean,
        label: String,
        name: String,
        published: HubSpotSDK::Internal::Type::Boolean,
        published_at: Time,
        row_count: Integer,
        updated_at: Time,
        use_for_pages: HubSpotSDK::Internal::Type::Boolean,
        created_by: HubSpotSDK::Cms::SimpleUser | nil,
        is_ordered_manually: HubSpotSDK::Internal::Type::Boolean | nil,
        updated_by: HubSpotSDK::Cms::SimpleUser | nil
      }
    end
  end

  def test_unpublish
    skip("Mock server tests are disabled")

    response = @hubspot.cms.hubdb.tables.unpublish("tableIdOrName")

    assert_pattern do
      response => HubSpotSDK::Cms::HubDBTableV3
    end

    assert_pattern do
      response => {
        id: String,
        allow_child_tables: HubSpotSDK::Internal::Type::Boolean,
        allow_public_api_access: HubSpotSDK::Internal::Type::Boolean,
        column_count: Integer,
        columns: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Cms::Column]),
        created_at: Time,
        deleted: HubSpotSDK::Internal::Type::Boolean,
        deleted_at: Time,
        dynamic_meta_tags: ^(HubSpotSDK::Internal::Type::HashOf[Integer]),
        enable_child_table_pages: HubSpotSDK::Internal::Type::Boolean,
        label: String,
        name: String,
        published: HubSpotSDK::Internal::Type::Boolean,
        published_at: Time,
        row_count: Integer,
        updated_at: Time,
        use_for_pages: HubSpotSDK::Internal::Type::Boolean,
        created_by: HubSpotSDK::Cms::SimpleUser | nil,
        is_ordered_manually: HubSpotSDK::Internal::Type::Boolean | nil,
        updated_by: HubSpotSDK::Cms::SimpleUser | nil
      }
    end
  end

  def test_update_draft_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.cms.hubdb.tables.update_draft(
        "tableIdOrName",
        allow_child_tables: true,
        allow_public_api_access: true,
        columns: [
          {
            id: 0,
            label: "label",
            name: "name",
            options: [
              {
                id: "id",
                createdAt: "2019-12-27T18:11:19.117Z",
                label: "label",
                name: "name",
                order: 0,
                type: "type",
                updatedAt: "2019-12-27T18:11:19.117Z"
              }
            ],
            type: :BOOLEAN
          }
        ],
        dynamic_meta_tags: {foo: 0},
        enable_child_table_pages: true,
        label: "label",
        name: "name",
        use_for_pages: true
      )

    assert_pattern do
      response => HubSpotSDK::Cms::HubDBTableV3
    end

    assert_pattern do
      response => {
        id: String,
        allow_child_tables: HubSpotSDK::Internal::Type::Boolean,
        allow_public_api_access: HubSpotSDK::Internal::Type::Boolean,
        column_count: Integer,
        columns: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Cms::Column]),
        created_at: Time,
        deleted: HubSpotSDK::Internal::Type::Boolean,
        deleted_at: Time,
        dynamic_meta_tags: ^(HubSpotSDK::Internal::Type::HashOf[Integer]),
        enable_child_table_pages: HubSpotSDK::Internal::Type::Boolean,
        label: String,
        name: String,
        published: HubSpotSDK::Internal::Type::Boolean,
        published_at: Time,
        row_count: Integer,
        updated_at: Time,
        use_for_pages: HubSpotSDK::Internal::Type::Boolean,
        created_by: HubSpotSDK::Cms::SimpleUser | nil,
        is_ordered_manually: HubSpotSDK::Internal::Type::Boolean | nil,
        updated_by: HubSpotSDK::Cms::SimpleUser | nil
      }
    end
  end
end
