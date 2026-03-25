# frozen_string_literal: true

require_relative "../../test_helper"

class HubspotSDK::Test::Resources::Files::FilesTest < HubspotSDK::Test::ResourceTest
  def test_get_import_task_status
    skip("Mock server tests are disabled")

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

  def test_import_from_url_async_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.files.files.import_from_url_async(
        access: :HIDDEN_INDEXABLE,
        duplicate_validation_scope: :ENTIRE_PORTAL,
        duplicate_validation_strategy: :NONE,
        overwrite: true
      )

    assert_pattern do
      response => HubspotSDK::Files::ImportFromURLTaskLocator
    end

    assert_pattern do
      response => {
        id: String,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil
      }
    end
  end

  def test_search
    skip("Mock server tests are disabled")

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
        archived: HubspotSDK::Internal::Type::Boolean,
        created_at: Time,
        updated_at: Time,
        access: HubspotSDK::Files::File::Access | nil,
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
        source_group: HubspotSDK::Files::File::SourceGroup | nil,
        type: String | nil,
        url: String | nil,
        width: Integer | nil
      }
    end
  end
end
