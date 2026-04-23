# frozen_string_literal: true

require_relative "../../test_helper"

class HubSpotSDK::Test::Resources::Cms::SourceCodeTest < HubSpotSDK::Test::ResourceTest
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
end
