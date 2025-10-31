# frozen_string_literal: true

require_relative "../../test_helper"

class HubspotSDK::Test::Resources::CRM::AppUninstallsTest < HubspotSDK::Test::ResourceTest
  def test_uninstall
    skip("Prism tests are disabled")

    response = @hubspot.crm.app_uninstalls.uninstall

    assert_pattern do
      response => nil
    end
  end
end
