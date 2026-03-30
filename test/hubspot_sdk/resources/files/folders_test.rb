# frozen_string_literal: true

require_relative "../../test_helper"

class HubspotSDK::Test::Resources::Files::FoldersTest < HubspotSDK::Test::ResourceTest
  def test_delete_by_id
    skip("Mock server tests are disabled")

    response = @hubspot.files.folders.delete_by_id("321669910225")

    assert_pattern do
      response => nil
    end
  end

  def test_delete_by_path
    skip("Mock server tests are disabled")

    response = @hubspot.files.folders.delete_by_path("folderPath")

    assert_pattern do
      response => nil
    end
  end

  def test_get_by_id
    skip("Mock server tests are disabled")

    response = @hubspot.files.folders.get_by_id("321669910225")

    assert_pattern do
      response => HubspotSDK::Files::Folder
    end

    assert_pattern do
      response => {
        id: String,
        archived: HubspotSDK::Internal::Type::Boolean,
        created_at: Time,
        updated_at: Time,
        archived_at: Time | nil,
        name: String | nil,
        parent_folder_id: String | nil,
        path: String | nil
      }
    end
  end

  def test_get_by_path
    skip("Mock server tests are disabled")

    response = @hubspot.files.folders.get_by_path("folderPath")

    assert_pattern do
      response => HubspotSDK::Files::Folder
    end

    assert_pattern do
      response => {
        id: String,
        archived: HubspotSDK::Internal::Type::Boolean,
        created_at: Time,
        updated_at: Time,
        archived_at: Time | nil,
        name: String | nil,
        parent_folder_id: String | nil,
        path: String | nil
      }
    end
  end

  def test_get_update_async_status
    skip("Mock server tests are disabled")

    response = @hubspot.files.folders.get_update_async_status("taskId")

    assert_pattern do
      response => HubspotSDK::Files::FolderActionResponse
    end

    assert_pattern do
      response => {
        completed_at: Time,
        started_at: Time,
        status: HubspotSDK::Files::FolderActionResponse::Status,
        task_id: String,
        errors: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::StandardError]) | nil,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        num_errors: Integer | nil,
        requested_at: Time | nil,
        result: HubspotSDK::Files::Folder | nil
      }
    end
  end

  def test_search
    skip("Mock server tests are disabled")

    response = @hubspot.files.folders.search

    assert_pattern do
      response => HubspotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubspotSDK::Files::Folder
    end

    assert_pattern do
      row => {
        id: String,
        archived: HubspotSDK::Internal::Type::Boolean,
        created_at: Time,
        updated_at: Time,
        archived_at: Time | nil,
        name: String | nil,
        parent_folder_id: String | nil,
        path: String | nil
      }
    end
  end

  def test_update_async_by_id_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.files.folders.update_async_by_id(id: "id")

    assert_pattern do
      response => HubspotSDK::Files::FolderUpdateTaskLocator
    end

    assert_pattern do
      response => {
        id: String,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil
      }
    end
  end

  def test_update_by_id
    skip("Mock server tests are disabled")

    response = @hubspot.files.folders.update_by_id("321669910225")

    assert_pattern do
      response => HubspotSDK::Files::Folder
    end

    assert_pattern do
      response => {
        id: String,
        archived: HubspotSDK::Internal::Type::Boolean,
        created_at: Time,
        updated_at: Time,
        archived_at: Time | nil,
        name: String | nil,
        parent_folder_id: String | nil,
        path: String | nil
      }
    end
  end
end
