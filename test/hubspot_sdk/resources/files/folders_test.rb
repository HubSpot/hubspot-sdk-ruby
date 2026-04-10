# frozen_string_literal: true

require_relative "../../test_helper"

class HubSpotSDK::Test::Resources::Files::FoldersTest < HubSpotSDK::Test::ResourceTest
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
      response => HubSpotSDK::Files::Folder
    end

    assert_pattern do
      response => {
        id: String,
        archived: HubSpotSDK::Internal::Type::Boolean,
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
      response => HubSpotSDK::Files::Folder
    end

    assert_pattern do
      response => {
        id: String,
        archived: HubSpotSDK::Internal::Type::Boolean,
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
      response => HubSpotSDK::Files::FolderActionResponse
    end

    assert_pattern do
      response => {
        completed_at: Time,
        started_at: Time,
        status: HubSpotSDK::Files::FolderActionResponse::Status,
        task_id: String,
        errors: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::StandardError]) | nil,
        links: ^(HubSpotSDK::Internal::Type::HashOf[String]) | nil,
        num_errors: Integer | nil,
        requested_at: Time | nil,
        result: HubSpotSDK::Files::Folder | nil
      }
    end
  end

  def test_search
    skip("Mock server tests are disabled")

    response = @hubspot.files.folders.search

    assert_pattern do
      response => HubSpotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubSpotSDK::Files::Folder
    end

    assert_pattern do
      row => {
        id: String,
        archived: HubSpotSDK::Internal::Type::Boolean,
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
      response => HubSpotSDK::Files::FolderUpdateTaskLocator
    end

    assert_pattern do
      response => {
        id: String,
        links: ^(HubSpotSDK::Internal::Type::HashOf[String]) | nil
      }
    end
  end

  def test_update_by_id
    skip("Mock server tests are disabled")

    response = @hubspot.files.folders.update_by_id("321669910225")

    assert_pattern do
      response => HubSpotSDK::Files::Folder
    end

    assert_pattern do
      response => {
        id: String,
        archived: HubSpotSDK::Internal::Type::Boolean,
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
