# frozen_string_literal: true

require_relative "../../test_helper"

class HubspotSDK::Test::Resources::Cms::SourceCodeTest < HubspotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @hubspot.cms.source_code.create("file_path", environment: "environment")

    assert_pattern do
      response => HubspotSDK::Cms::AssetFileMetadata
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Integer,
        folder: HubspotSDK::Internal::Type::Boolean,
        name: String,
        updated_at: Integer,
        archived_at: Integer | nil,
        children: ^(HubspotSDK::Internal::Type::ArrayOf[String]) | nil,
        hash_: String | nil
      }
    end
  end

  def test_delete_required_params
    skip("Prism tests are disabled")

    response = @hubspot.cms.source_code.delete("file_path", environment: "environment")

    assert_pattern do
      response => nil
    end
  end

  def test_extract_async_required_params
    skip("Prism tests are disabled")

    response = @hubspot.cms.source_code.extract_async(path: "path")

    assert_pattern do
      response => HubspotSDK::TaskLocator
    end

    assert_pattern do
      response => {
        id: String,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil
      }
    end
  end

  def test_get_required_params
    skip("Prism doesn't support application/octet-stream responses")

    response = @hubspot.cms.source_code.get("file_path", environment: "environment")

    assert_pattern do
      response => StringIO
    end
  end

  def test_get_extraction_status
    skip("Prism tests are disabled")

    response = @hubspot.cms.source_code.get_extraction_status(0)

    assert_pattern do
      response => HubspotSDK::ActionResponse
    end

    assert_pattern do
      response => {
        completed_at: Time,
        started_at: Time,
        status: HubspotSDK::ActionResponse::Status,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_get_metadata_required_params
    skip("Prism tests are disabled")

    response = @hubspot.cms.source_code.get_metadata("file_path", environment: "environment")

    assert_pattern do
      response => HubspotSDK::Cms::AssetFileMetadata
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Integer,
        folder: HubspotSDK::Internal::Type::Boolean,
        name: String,
        updated_at: Integer,
        archived_at: Integer | nil,
        children: ^(HubspotSDK::Internal::Type::ArrayOf[String]) | nil,
        hash_: String | nil
      }
    end
  end

  def test_upsert_required_params
    skip("Prism tests are disabled")

    response = @hubspot.cms.source_code.upsert("file_path", environment: "environment")

    assert_pattern do
      response => HubspotSDK::Cms::AssetFileMetadata
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Integer,
        folder: HubspotSDK::Internal::Type::Boolean,
        name: String,
        updated_at: Integer,
        archived_at: Integer | nil,
        children: ^(HubspotSDK::Internal::Type::ArrayOf[String]) | nil,
        hash_: String | nil
      }
    end
  end

  def test_validate_required_params
    skip("Prism tests are disabled")

    response = @hubspot.cms.source_code.validate("file_path", environment: "environment")

    assert_pattern do
      response => StringIO
    end
  end
end
