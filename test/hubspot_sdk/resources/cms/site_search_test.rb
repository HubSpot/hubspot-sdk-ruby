# frozen_string_literal: true

require_relative "../../test_helper"

class HubSpotSDK::Test::Resources::Cms::SiteSearchTest < HubSpotSDK::Test::ResourceTest
  def test_get_indexed_data
    skip("Mock server tests are disabled")

    response = @hubspot.cms.site_search.get_indexed_data("contentId")

    assert_pattern do
      response => HubSpotSDK::Cms::IndexedData
    end

    assert_pattern do
      response => {
        id: String,
        fields: ^(HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Cms::IndexedField]),
        type: HubSpotSDK::Cms::IndexedData::Type
      }
    end
  end
end
