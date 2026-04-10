# frozen_string_literal: true

require_relative "../../test_helper"

class HubSpotSDK::Test::Resources::Crm::AppUninstallsTest < HubSpotSDK::Test::ResourceTest
  def test_uninstall
    skip("Mock server tests are disabled")

    response = @hubspot.crm.app_uninstalls.uninstall

    assert_pattern do
      response => nil
    end
  end
end
