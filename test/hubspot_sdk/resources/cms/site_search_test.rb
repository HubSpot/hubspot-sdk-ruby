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

  def test_search
    skip("Mock server tests are disabled")

    response = @hubspot.cms.site_search.search

    assert_pattern do
      response => HubSpotSDK::Cms::PublicSearchResults
    end

    assert_pattern do
      response => {
        limit: Integer,
        offset: Integer,
        page: Integer,
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Cms::ContentSearchResult]),
        total: Integer,
        search_term: String | nil
      }
    end
  end
end
