# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::CRM::ObjectLibrary::EnablementTest < HubspotSDK::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @hub_spot.crm.object_library.enablement.list

    assert_pattern do
      response => HubspotSDK::CRM::PortalObjectTypeEnablementPublicResponse
    end

    assert_pattern do
      response => {
        enablement_by_object_type_id: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Boolean])
      }
    end
  end

  def test_get
    skip("Prism tests are disabled")

    response = @hub_spot.crm.object_library.enablement.get("objectTypeId")

    assert_pattern do
      response => HubspotSDK::CRM::ObjectTypeEnablementPublicResponse
    end

    assert_pattern do
      response => {
        enablement: HubspotSDK::Internal::Type::Boolean
      }
    end
  end
end
