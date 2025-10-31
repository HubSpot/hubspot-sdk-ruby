# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::CRM::Lists::FoldersTest < HubspotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @hubspot.crm.lists.folders.create(name: "name")

    assert_pattern do
      response => HubspotSDK::CRM::ListFolderCreateResponse
    end

    assert_pattern do
      response => {
        folder: HubspotSDK::CRM::PublicListFolder
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @hubspot.crm.lists.folders.delete("folderId")

    assert_pattern do
      response => nil
    end
  end

  def test_get
    skip("Prism tests are disabled")

    response = @hubspot.crm.lists.folders.get

    assert_pattern do
      response => HubspotSDK::CRM::ListFolderFetchResponse
    end

    assert_pattern do
      response => {
        folder: HubspotSDK::CRM::PublicListFolder
      }
    end
  end

  def test_move_required_params
    skip("Prism tests are disabled")

    response = @hubspot.crm.lists.folders.move("newParentFolderId", folder_id: "folderId")

    assert_pattern do
      response => HubspotSDK::CRM::ListFolderFetchResponse
    end

    assert_pattern do
      response => {
        folder: HubspotSDK::CRM::PublicListFolder
      }
    end
  end

  def test_move_list_required_params
    skip("Prism tests are disabled")

    response = @hubspot.crm.lists.folders.move_list(list_id: "listId", new_folder_id: "newFolderId")

    assert_pattern do
      response => nil
    end
  end

  def test_rename
    skip("Prism tests are disabled")

    response = @hubspot.crm.lists.folders.rename("folderId")

    assert_pattern do
      response => HubspotSDK::CRM::ListFolderFetchResponse
    end

    assert_pattern do
      response => {
        folder: HubspotSDK::CRM::PublicListFolder
      }
    end
  end
end
