# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::Crm::Properties::BatchTest < HubspotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

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
      response => HubspotSDK::BatchResponseProperty
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Property]),
        started_at: Time,
        status: HubspotSDK::BatchResponseProperty::Status,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_delete_required_params
    skip("Prism tests are disabled")

    response = @hubspot.crm.properties.batch.delete("objectType", inputs: [{name: "name"}])

    assert_pattern do
      response => nil
    end
  end

  def test_get_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.crm.properties.batch.get(
        "objectType",
        archived: true,
        data_sensitivity: :non_sensitive,
        inputs: [{name: "name"}]
      )

    assert_pattern do
      response => HubspotSDK::BatchResponseProperty
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Property]),
        started_at: Time,
        status: HubspotSDK::BatchResponseProperty::Status,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end
end
