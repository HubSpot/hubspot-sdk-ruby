# frozen_string_literal: true

require_relative "../../test_helper"

class HubspotSDK::Test::Resources::BusinessUnits::BusinessUnitEntriesTest < HubspotSDK::Test::ResourceTest
  def test_get_by_user_id
    skip("Mock server tests are disabled")

    response = @hubspot.business_units.business_unit_entries.get_by_user_id("userId")

    assert_pattern do
      response => HubspotSDK::BusinessUnits::CollectionResponsePublicBusinessUnitNoPaging
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::BusinessUnits::PublicBusinessUnit])
      }
    end
  end
end
