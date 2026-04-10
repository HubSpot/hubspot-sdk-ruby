# frozen_string_literal: true

require_relative "../../test_helper"

class HubSpotSDK::Test::Resources::BusinessUnits::BusinessUnitEntriesTest < HubSpotSDK::Test::ResourceTest
  def test_get_by_user_id
    skip("Mock server tests are disabled")

    response = @hubspot.business_units.business_unit_entries.get_by_user_id("userId")

    assert_pattern do
      response => HubSpotSDK::BusinessUnits::CollectionResponsePublicBusinessUnitNoPaging
    end

    assert_pattern do
      response => {
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::BusinessUnits::PublicBusinessUnit])
      }
    end
  end
end
