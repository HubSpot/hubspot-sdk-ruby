# frozen_string_literal: true

require_relative "../../test_helper"

class HubSpotSDK::Test::Resources::Cms::SourceCodeTest < HubSpotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.source_code.create("path", environment: "environment")

    assert_pattern do
      response => HubSpotSDK::Cms::AssetFileMetadata
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Integer,
        folder: HubSpotSDK::Internal::Type::Boolean,
        name: String,
        updated_at: Integer,
        archived_at: Integer | nil,
        children: ^(HubSpotSDK::Internal::Type::ArrayOf[String]) | nil,
        hash_: String | nil
      }
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.source_code.delete("path", environment: "environment")

    assert_pattern do
      response => nil
    end
  end

  def test_extract_async_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.source_code.extract_async(path: "path")

    assert_pattern do
      response => HubSpotSDK::TaskLocator
    end

    assert_pattern do
      response => {
        id: String,
        links: ^(HubSpotSDK::Internal::Type::HashOf[String]) | nil
      }
    end
  end

  def test_get_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.source_code.get("path", environment: "environment")

    assert_pattern do
      response => StringIO
    end
  end

  def test_get_extraction_status
    skip("Mock server tests are disabled")

    response = @hubspot.cms.source_code.get_extraction_status(0)

    assert_pattern do
      response => HubSpotSDK::ActionResponse
    end

    assert_pattern do
      response => {
        completed_at: Time,
        started_at: Time,
        status: HubSpotSDK::ActionResponse::Status,
        links: ^(HubSpotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_get_metadata_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.source_code.get_metadata("path", environment: "environment")

    assert_pattern do
      response => HubSpotSDK::Cms::AssetFileMetadata
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Integer,
        folder: HubSpotSDK::Internal::Type::Boolean,
        name: String,
        updated_at: Integer,
        archived_at: Integer | nil,
        children: ^(HubSpotSDK::Internal::Type::ArrayOf[String]) | nil,
        hash_: String | nil
      }
    end
  end

  def test_upsert_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.source_code.upsert("path", environment: "environment")

    assert_pattern do
      response => HubSpotSDK::Cms::AssetFileMetadata
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Integer,
        folder: HubSpotSDK::Internal::Type::Boolean,
        name: String,
        updated_at: Integer,
        archived_at: Integer | nil,
        children: ^(HubSpotSDK::Internal::Type::ArrayOf[String]) | nil,
        hash_: String | nil
      }
    end
  end

  def test_validate_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.source_code.validate("path", environment: "environment")

    assert_pattern do
      response => StringIO
    end
  end
end
