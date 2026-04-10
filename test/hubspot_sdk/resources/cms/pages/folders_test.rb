# frozen_string_literal: true

require_relative "../../../test_helper"

class HubSpotSDK::Test::Resources::Cms::Pages::FoldersTest < HubSpotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.cms.pages.folders.create(
        id: "id",
        category: 0,
        created: "2019-12-27T18:11:19.117Z",
        deleted_at: "2019-12-27T18:11:19.117Z",
        name: "name",
        parent_folder_id: 0,
        updated: "2019-12-27T18:11:19.117Z"
      )

    assert_pattern do
      response => HubSpotSDK::Cms::ContentFolder
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

  def test_update_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.cms.pages.folders.update(
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
      response => HubSpotSDK::Cms::ContentFolder
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

  def test_list
    skip("Mock server tests are disabled")

    response = @hubspot.cms.pages.folders.list

    assert_pattern do
      response => HubSpotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubSpotSDK::Cms::ContentFolder
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

  def test_delete
    skip("Mock server tests are disabled")

    response = @hubspot.cms.pages.folders.delete("objectId")

    assert_pattern do
      response => nil
    end
  end

  def test_batch_get_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.pages.folders.batch_get(inputs: ["string"])

    assert_pattern do
      response => HubSpotSDK::Cms::BatchResponseContentFolder
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Cms::ContentFolder]),
        started_at: Time,
        status: HubSpotSDK::Cms::BatchResponseContentFolder::Status,
        links: ^(HubSpotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_get
    skip("Mock server tests are disabled")

    response = @hubspot.cms.pages.folders.get("objectId")

    assert_pattern do
      response => HubSpotSDK::Cms::ContentFolder
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

  def test_get_revision_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.pages.folders.get_revision("revisionId", object_id_: "objectId")

    assert_pattern do
      response => HubSpotSDK::Cms::ContentFolderVersion
    end

    assert_pattern do
      response => {
        id: String,
        object: HubSpotSDK::Cms::ContentFolder,
        updated_at: Time,
        user: HubSpotSDK::VersionUser
      }
    end
  end

  def test_list_revisions
    skip("Mock server tests are disabled")

    response = @hubspot.cms.pages.folders.list_revisions("objectId")

    assert_pattern do
      response => HubSpotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubSpotSDK::Cms::ContentFolderVersion
    end

    assert_pattern do
      row => {
        id: String,
        object: HubSpotSDK::Cms::ContentFolder,
        updated_at: Time,
        user: HubSpotSDK::VersionUser
      }
    end
  end

  def test_restore_revision_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.pages.folders.restore_revision("revisionId", object_id_: "objectId")

    assert_pattern do
      response => HubSpotSDK::Cms::ContentFolder
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
