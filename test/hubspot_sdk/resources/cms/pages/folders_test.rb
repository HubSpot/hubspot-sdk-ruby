# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::Cms::Pages::FoldersTest < HubspotSDK::Test::ResourceTest
  def test_create_folder_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.cms.pages.folders.create_folder(
        id: "id",
        category: 0,
        created: "2019-12-27T18:11:19.117Z",
        deleted_at: "2019-12-27T18:11:19.117Z",
        name: "name",
        parent_folder_id: 0,
        updated: "2019-12-27T18:11:19.117Z"
      )

    assert_pattern do
      response => HubspotSDK::Cms::ContentFolder
    end

    assert_pattern do
      response => {
        id: String,
        category: Integer,
        created: Time,
        deleted_at: Time,
        name: String,
        parent_folder_id: Integer,
        updated: Time
      }
    end
  end

  def test_delete_folder
    skip("Mock server tests are disabled")

    response = @hubspot.cms.pages.folders.delete_folder("objectId")

    assert_pattern do
      response => nil
    end
  end

  def test_get_folder
    skip("Mock server tests are disabled")

    response = @hubspot.cms.pages.folders.get_folder("objectId")

    assert_pattern do
      response => HubspotSDK::Cms::ContentFolder
    end

    assert_pattern do
      response => {
        id: String,
        category: Integer,
        created: Time,
        deleted_at: Time,
        name: String,
        parent_folder_id: Integer,
        updated: Time
      }
    end
  end

  def test_get_folder_revision_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.pages.folders.get_folder_revision("revisionId", object_id_: "objectId")

    assert_pattern do
      response => HubspotSDK::Cms::ContentFolderVersion
    end

    assert_pattern do
      response => {
        id: String,
        object: HubspotSDK::Cms::ContentFolder,
        updated_at: Time,
        user: HubspotSDK::VersionUser
      }
    end
  end

  def test_get_folders_batch_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.pages.folders.get_folders_batch(inputs: ["string"])

    assert_pattern do
      response => HubspotSDK::Cms::BatchResponseContentFolder
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::ContentFolder]),
        started_at: Time,
        status: HubspotSDK::Cms::BatchResponseContentFolder::Status,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_list_folder_revisions
    skip("Mock server tests are disabled")

    response = @hubspot.cms.pages.folders.list_folder_revisions("objectId")

    assert_pattern do
      response => HubspotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubspotSDK::Cms::ContentFolderVersion
    end

    assert_pattern do
      row => {
        id: String,
        object: HubspotSDK::Cms::ContentFolder,
        updated_at: Time,
        user: HubspotSDK::VersionUser
      }
    end
  end

  def test_list_folders
    skip("Mock server tests are disabled")

    response = @hubspot.cms.pages.folders.list_folders

    assert_pattern do
      response => HubspotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubspotSDK::Cms::ContentFolder
    end

    assert_pattern do
      row => {
        id: String,
        category: Integer,
        created: Time,
        deleted_at: Time,
        name: String,
        parent_folder_id: Integer,
        updated: Time
      }
    end
  end

  def test_restore_folder_revision_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.pages.folders.restore_folder_revision("revisionId", object_id_: "objectId")

    assert_pattern do
      response => HubspotSDK::Cms::ContentFolder
    end

    assert_pattern do
      response => {
        id: String,
        category: Integer,
        created: Time,
        deleted_at: Time,
        name: String,
        parent_folder_id: Integer,
        updated: Time
      }
    end
  end

  def test_update_folder_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.cms.pages.folders.update_folder(
        "objectId",
        id: "id",
        category: 0,
        created: "2019-12-27T18:11:19.117Z",
        deleted_at: "2019-12-27T18:11:19.117Z",
        name: "name",
        parent_folder_id: 0,
        updated: "2019-12-27T18:11:19.117Z"
      )

    assert_pattern do
      response => HubspotSDK::Cms::ContentFolder
    end

    assert_pattern do
      response => {
        id: String,
        category: Integer,
        created: Time,
        deleted_at: Time,
        name: String,
        parent_folder_id: Integer,
        updated: Time
      }
    end
  end
end
