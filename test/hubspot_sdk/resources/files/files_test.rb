# frozen_string_literal: true

require_relative "../../test_helper"

class HubspotSDK::Test::Resources::Files::FilesTest < HubspotSDK::Test::ResourceTest
  def test_update
    skip("Prism tests are disabled")

    response = @hubspot.files.files.update("321669910225")

    assert_pattern do
      response => HubspotSDK::Files::File
    end

    assert_pattern do
      response => {
        id: String,
        access: HubspotSDK::Files::File::Access,
        archived: HubspotSDK::Internal::Type::Boolean,
        created_at: Time,
        updated_at: Time,
        archived_at: Time | nil,
        default_hosting_url: String | nil,
        encoding: String | nil,
        expires_at: Integer | nil,
        extension: String | nil,
        file_md5: String | nil,
        height: Integer | nil,
        is_usable_in_content: HubspotSDK::Internal::Type::Boolean | nil,
        name: String | nil,
        parent_folder_id: String | nil,
        path: String | nil,
        size: Integer | nil,
        source_group: String | nil,
        type: String | nil,
        url: String | nil,
        width: Integer | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @hubspot.files.files.delete("321669910225")

    assert_pattern do
      response => nil
    end
  end

  def test_gdpr_delete
    skip("Prism tests are disabled")

    response = @hubspot.files.files.gdpr_delete("321669910225")

    assert_pattern do
      response => nil
    end
  end

  def test_get
    skip("Prism tests are disabled")

    response = @hubspot.files.files.get("321669910225")

    assert_pattern do
      response => HubspotSDK::Files::File
    end

    assert_pattern do
      response => {
        id: String,
        access: HubspotSDK::Files::File::Access,
        archived: HubspotSDK::Internal::Type::Boolean,
        created_at: Time,
        updated_at: Time,
        archived_at: Time | nil,
        default_hosting_url: String | nil,
        encoding: String | nil,
        expires_at: Integer | nil,
        extension: String | nil,
        file_md5: String | nil,
        height: Integer | nil,
        is_usable_in_content: HubspotSDK::Internal::Type::Boolean | nil,
        name: String | nil,
        parent_folder_id: String | nil,
        path: String | nil,
        size: Integer | nil,
        source_group: String | nil,
        type: String | nil,
        url: String | nil,
        width: Integer | nil
      }
    end
  end

  def test_get_by_path
    skip("Prism tests are disabled")

    response = @hubspot.files.files.get_by_path("path")

    assert_pattern do
      response => HubspotSDK::Files::FileStat
    end

    assert_pattern do
      response => {
        file: HubspotSDK::Files::File | nil,
        folder: HubspotSDK::Files::Folder | nil
      }
    end
  end

  def test_get_import_task_status
    skip("Prism tests are disabled")

    response = @hubspot.files.files.get_import_task_status("taskId")

    assert_pattern do
      response => HubspotSDK::Files::FileActionResponse
    end

    assert_pattern do
      response => {
        completed_at: Time,
        started_at: Time,
        status: HubspotSDK::Files::FileActionResponse::Status,
        task_id: String,
        errors: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::StandardError]) | nil,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        num_errors: Integer | nil,
        requested_at: Time | nil,
        result: HubspotSDK::Files::File | nil
      }
    end
  end

  def test_get_signed_url
    skip("Prism tests are disabled")

    response = @hubspot.files.files.get_signed_url("321669910225")

    assert_pattern do
      response => HubspotSDK::Files::SignedURL
    end

    assert_pattern do
      response => {
        expires_at: Time,
        extension: String,
        name: String,
        size: Integer,
        type: String,
        url: String,
        height: Integer | nil,
        width: Integer | nil
      }
    end
  end

  def test_import_from_url_async_required_params
    skip("Prism tests are disabled")

    response = @hubspot.files.files.import_from_url_async(access: :PUBLIC_INDEXABLE, url: "url")

    assert_pattern do
      response => HubspotSDK::Files::ImportFromURLTaskLocator
    end

    assert_pattern do
      response => {
        id: String,
        links: ^(HubspotSDK::Internal::Type::HashOf[String])
      }
    end
  end

  def test_replace
    skip("Prism tests are disabled")

    response = @hubspot.files.files.replace("321669910225")

    assert_pattern do
      response => HubspotSDK::Files::File
    end

    assert_pattern do
      response => {
        id: String,
        access: HubspotSDK::Files::File::Access,
        archived: HubspotSDK::Internal::Type::Boolean,
        created_at: Time,
        updated_at: Time,
        archived_at: Time | nil,
        default_hosting_url: String | nil,
        encoding: String | nil,
        expires_at: Integer | nil,
        extension: String | nil,
        file_md5: String | nil,
        height: Integer | nil,
        is_usable_in_content: HubspotSDK::Internal::Type::Boolean | nil,
        name: String | nil,
        parent_folder_id: String | nil,
        path: String | nil,
        size: Integer | nil,
        source_group: String | nil,
        type: String | nil,
        url: String | nil,
        width: Integer | nil
      }
    end
  end

  def test_search
    skip("Prism tests are disabled")

    response = @hubspot.files.files.search

    assert_pattern do
      response => HubspotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubspotSDK::Files::File
    end

    assert_pattern do
      row => {
        id: String,
        access: HubspotSDK::Files::File::Access,
        archived: HubspotSDK::Internal::Type::Boolean,
        created_at: Time,
        updated_at: Time,
        archived_at: Time | nil,
        default_hosting_url: String | nil,
        encoding: String | nil,
        expires_at: Integer | nil,
        extension: String | nil,
        file_md5: String | nil,
        height: Integer | nil,
        is_usable_in_content: HubspotSDK::Internal::Type::Boolean | nil,
        name: String | nil,
        parent_folder_id: String | nil,
        path: String | nil,
        size: Integer | nil,
        source_group: String | nil,
        type: String | nil,
        url: String | nil,
        width: Integer | nil
      }
    end
  end

  def test_upload
    skip("Prism tests are disabled")

    response = @hubspot.files.files.upload

    assert_pattern do
      response => HubspotSDK::Files::File
    end

    assert_pattern do
      response => {
        id: String,
        access: HubspotSDK::Files::File::Access,
        archived: HubspotSDK::Internal::Type::Boolean,
        created_at: Time,
        updated_at: Time,
        archived_at: Time | nil,
        default_hosting_url: String | nil,
        encoding: String | nil,
        expires_at: Integer | nil,
        extension: String | nil,
        file_md5: String | nil,
        height: Integer | nil,
        is_usable_in_content: HubspotSDK::Internal::Type::Boolean | nil,
        name: String | nil,
        parent_folder_id: String | nil,
        path: String | nil,
        size: Integer | nil,
        source_group: String | nil,
        type: String | nil,
        url: String | nil,
        width: Integer | nil
      }
    end
  end
end
