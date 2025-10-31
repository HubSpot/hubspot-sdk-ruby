# frozen_string_literal: true

require_relative "../../test_helper"

class HubspotSDK::Test::Resources::Cms::SiteSearchTest < HubspotSDK::Test::ResourceTest
  def test_get_indexed_data
    skip("Prism tests are disabled")

    response = @hubspot.cms.site_search.get_indexed_data("contentId")

    assert_pattern do
      response => HubspotSDK::Cms::IndexedData
    end

    assert_pattern do
      response => {
        id: String,
        fields: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Cms::IndexedField]),
        type: HubspotSDK::Cms::IndexedData::Type
      }
    end
  end

  def test_search
    skip("Prism tests are disabled")

    response = @hubspot.cms.site_search.search

    assert_pattern do
      response => HubspotSDK::Cms::PublicSearchResults
    end

    assert_pattern do
      response => {
        limit: Integer,
        offset: Integer,
        page: Integer,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::ContentSearchResult]),
        total: Integer,
        search_term: String | nil
      }
    end
  end
end
