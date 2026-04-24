# frozen_string_literal: true

require_relative "../../../test_helper"

class HubSpotSDK::Test::Resources::Crm::Properties::BatchTest < HubSpotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.properties.batch.create(
        "objectType",
        inputs: [
          {
            fieldType: :booleancheckbox,
            groupName: "groupName",
            label: "label",
            name: "name",
            type: :bool
          }
        ]
      )

    assert_pattern do
      response => HubSpotSDK::Crm::BatchResponseProperty
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::BaseProperty]),
        started_at: Time,
        status: HubSpotSDK::Crm::BatchResponseProperty::Status,
        links: ^(HubSpotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.crm.properties.batch.delete("objectType", inputs: [{name: "name"}])

    assert_pattern do
      response => nil
    end
  end

  def test_get_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.properties.batch.get(
        "objectType",
        archived: true,
        data_sensitivity: :highly_sensitive,
        inputs: [{name: "name"}]
      )

    assert_pattern do
      response => HubSpotSDK::Crm::BatchResponseProperty
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::BaseProperty]),
        started_at: Time,
        status: HubSpotSDK::Crm::BatchResponseProperty::Status,
        links: ^(HubSpotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end
end
