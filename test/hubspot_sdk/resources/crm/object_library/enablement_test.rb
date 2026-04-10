# frozen_string_literal: true

require_relative "../../../test_helper"

class HubSpotSDK::Test::Resources::Crm::ObjectLibrary::EnablementTest < HubSpotSDK::Test::ResourceTest
  def test_get_all
    skip("Mock server tests are disabled")

    response = @hubspot.crm.object_library.enablement.get_all

    assert_pattern do
      response => HubSpotSDK::Crm::ObjectLibrary::PortalObjectTypeEnablementPublicResponse
    end

    assert_pattern do
      response => {
        enablement_by_object_type_id: ^(HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Internal::Type::Boolean])
      }
    end
  end

  def test_get_by_object_type_id
    skip("Mock server tests are disabled")

    response = @hubspot.crm.object_library.enablement.get_by_object_type_id("objectTypeId")

    assert_pattern do
      response => HubSpotSDK::Crm::ObjectLibrary::ObjectTypeEnablementPublicResponse
    end

    assert_pattern do
      response => {
        enablement: HubSpotSDK::Internal::Type::Boolean
      }
    end
  end
end
