# frozen_string_literal: true

require_relative "../../../test_helper"

class HubSpotSDK::Test::Resources::Meta::Origins::IPRangesTest < HubSpotSDK::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @hubspot.meta.origins.ip_ranges.list

    assert_pattern do
      response => HubSpotSDK::Meta::CollectionResponseIPRangeNoPaging
    end

    assert_pattern do
      response => {
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Meta::IPRange])
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
