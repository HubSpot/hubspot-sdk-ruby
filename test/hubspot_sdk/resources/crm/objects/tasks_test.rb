# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::Crm::Objects::TasksTest < HubspotSDK::Test::ResourceTest
  def test_delete_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.crm.objects.tasks.delete("objectId", object_type: "objectType")

    assert_pattern do
      response => nil
    end
  end
end
