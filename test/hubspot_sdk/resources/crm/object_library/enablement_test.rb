# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::Crm::ObjectLibrary::EnablementTest < HubspotSDK::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @hubspot.crm.object_library.enablement.list

    assert_pattern do
      response => HubspotSDK::Crm::PortalObjectTypeEnablementPublicResponse
    end

    assert_pattern do
      response => {
        enablement_by_object_type_id: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Boolean])
      }
    end
  end

  def test_get
    skip("Prism tests are disabled")

    response = @hubspot.crm.object_library.enablement.get("objectTypeId")

    assert_pattern do
      response => HubspotSDK::Crm::ObjectTypeEnablementPublicResponse
    end

    assert_pattern do
      response => {
        enablement: HubspotSDK::Internal::Type::Boolean
      }
    end
  end
end
