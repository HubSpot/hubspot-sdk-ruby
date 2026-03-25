# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::Meta::Origins::IPRangesTest < HubspotSDK::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @hubspot.meta.origins.ip_ranges.list

    assert_pattern do
      response => HubspotSDK::Meta::CollectionResponseIPRangeNoPaging
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Meta::IPRange])
      }
    end
  end

  def test_list_simple
    skip("Mock server tests are disabled")

    response = @hubspot.meta.origins.ip_ranges.list_simple

    assert_pattern do
      response => String
    end
  end
end
