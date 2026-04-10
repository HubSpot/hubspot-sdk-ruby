# frozen_string_literal: true

require_relative "../../test_helper"

class HubSpotSDK::Test::Resources::Files::FileAssetsTest < HubSpotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.files.file_assets.create(name: "name")

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

  def test_update_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.files.file_assets.update("321669910225", clear_expires: true)

    assert_pattern do
      response => HubSpotSDK::Files::File
    end

    assert_pattern do
      response => {
        id: String,
        archived: HubSpotSDK::Internal::Type::Boolean,
        created_at: Time,
        updated_at: Time,
        access: HubSpotSDK::Files::File::Access | nil,
        archived_at: Time | nil,
        default_hosting_url: String | nil,
        encoding: String | nil,
        expires_at: Integer | nil,
        extension: String | nil,
        file_md5: String | nil,
        height: Integer | nil,
        is_usable_in_content: HubSpotSDK::Internal::Type::Boolean | nil,
        name: String | nil,
        parent_folder_id: String | nil,
        path: String | nil,
        size: Integer | nil,
        source_group: HubSpotSDK::Files::File::SourceGroup | nil,
        type: String | nil,
        url: String | nil,
        width: Integer | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @hubspot.files.file_assets.delete("321669910225")

    assert_pattern do
      response => nil
    end
  end

  def test_gdpr_delete
    skip("Mock server tests are disabled")

    response = @hubspot.files.file_assets.gdpr_delete("321669910225")

    assert_pattern do
      response => nil
    end
  end

  def test_get
    skip("Mock server tests are disabled")

    response = @hubspot.files.file_assets.get("321669910225")

    assert_pattern do
      response => HubSpotSDK::Files::File
    end

    assert_pattern do
      response => {
        id: String,
        archived: HubSpotSDK::Internal::Type::Boolean,
        created_at: Time,
        updated_at: Time,
        access: HubSpotSDK::Files::File::Access | nil,
        archived_at: Time | nil,
        default_hosting_url: String | nil,
        encoding: String | nil,
        expires_at: Integer | nil,
        extension: String | nil,
        file_md5: String | nil,
        height: Integer | nil,
        is_usable_in_content: HubSpotSDK::Internal::Type::Boolean | nil,
        name: String | nil,
        parent_folder_id: String | nil,
        path: String | nil,
        size: Integer | nil,
        source_group: HubSpotSDK::Files::File::SourceGroup | nil,
        type: String | nil,
        url: String | nil,
        width: Integer | nil
      }
    end
  end

  def test_get_by_path
    skip("Mock server tests are disabled")

    response = @hubspot.files.file_assets.get_by_path("path")

    assert_pattern do
      response => HubSpotSDK::Files::FileStat
    end

    assert_pattern do
      response => {
        file: HubSpotSDK::Files::File | nil,
        folder: HubSpotSDK::Files::Folder | nil
      }
    end
  end

  def test_get_import_task_status
    skip("Mock server tests are disabled")

    response = @hubspot.files.file_assets.get_import_task_status("taskId")

    assert_pattern do
      response => HubSpotSDK::Files::FileActionResponse
    end

    assert_pattern do
      response => {
        completed_at: Time,
        started_at: Time,
        status: HubSpotSDK::Files::FileActionResponse::Status,
        task_id: String,
        errors: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::StandardError]) | nil,
        links: ^(HubSpotSDK::Internal::Type::HashOf[String]) | nil,
        num_errors: Integer | nil,
        requested_at: Time | nil,
        result: HubSpotSDK::Files::File | nil
      }
    end
  end

  def test_get_signed_url
    skip("Mock server tests are disabled")

    response = @hubspot.files.file_assets.get_signed_url("321669910225")

    assert_pattern do
      response => HubSpotSDK::Files::SignedURL
    end

    assert_pattern do
      response => {
        expires_at: Time,
        url: String,
        extension: String | nil,
        height: Integer | nil,
        name: String | nil,
        size: Integer | nil,
        type: String | nil,
        width: Integer | nil
      }
    end
  end

  def test_import_from_url_async_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.files.file_assets.import_from_url_async(
        access: :HIDDEN_INDEXABLE,
        duplicate_validation_scope: :ENTIRE_PORTAL,
        duplicate_validation_strategy: :NONE,
        overwrite: true
      )

    assert_pattern do
      response => HubSpotSDK::Files::ImportFromURLTaskLocator
    end

    assert_pattern do
      response => {
        id: String,
        links: ^(HubSpotSDK::Internal::Type::HashOf[String]) | nil
      }
    end
  end

  def test_replace
    skip("Mock server tests are disabled")

    response = @hubspot.files.file_assets.replace("321669910225")

    assert_pattern do
      response => HubSpotSDK::Files::File
    end

    assert_pattern do
      response => {
        id: String,
        archived: HubSpotSDK::Internal::Type::Boolean,
        created_at: Time,
        updated_at: Time,
        access: HubSpotSDK::Files::File::Access | nil,
        archived_at: Time | nil,
        default_hosting_url: String | nil,
        encoding: String | nil,
        expires_at: Integer | nil,
        extension: String | nil,
        file_md5: String | nil,
        height: Integer | nil,
        is_usable_in_content: HubSpotSDK::Internal::Type::Boolean | nil,
        name: String | nil,
        parent_folder_id: String | nil,
        path: String | nil,
        size: Integer | nil,
        source_group: HubSpotSDK::Files::File::SourceGroup | nil,
        type: String | nil,
        url: String | nil,
        width: Integer | nil
      }
    end
  end

  def test_search
    skip("Mock server tests are disabled")

    response = @hubspot.files.file_assets.search

    assert_pattern do
      response => HubSpotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubSpotSDK::Files::File
    end

    assert_pattern do
      row => {
        id: String,
        archived: HubSpotSDK::Internal::Type::Boolean,
        created_at: Time,
        updated_at: Time,
        access: HubSpotSDK::Files::File::Access | nil,
        archived_at: Time | nil,
        default_hosting_url: String | nil,
        encoding: String | nil,
        expires_at: Integer | nil,
        extension: String | nil,
        file_md5: String | nil,
        height: Integer | nil,
        is_usable_in_content: HubSpotSDK::Internal::Type::Boolean | nil,
        name: String | nil,
        parent_folder_id: String | nil,
        path: String | nil,
        size: Integer | nil,
        source_group: HubSpotSDK::Files::File::SourceGroup | nil,
        type: String | nil,
        url: String | nil,
        width: Integer | nil
      }
    end
  end

  def test_upload
    skip("Mock server tests are disabled")

    response = @hubspot.files.file_assets.upload

    assert_pattern do
      response => HubSpotSDK::Files::File
    end

    assert_pattern do
      response => {
        id: String,
        archived: HubSpotSDK::Internal::Type::Boolean,
        created_at: Time,
        updated_at: Time,
        access: HubSpotSDK::Files::File::Access | nil,
        archived_at: Time | nil,
        default_hosting_url: String | nil,
        encoding: String | nil,
        expires_at: Integer | nil,
        extension: String | nil,
        file_md5: String | nil,
        height: Integer | nil,
        is_usable_in_content: HubSpotSDK::Internal::Type::Boolean | nil,
        name: String | nil,
        parent_folder_id: String | nil,
        path: String | nil,
        size: Integer | nil,
        source_group: HubSpotSDK::Files::File::SourceGroup | nil,
        type: String | nil,
        url: String | nil,
        width: Integer | nil
      }
    end
  end
end
