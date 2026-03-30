# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::Cms::MediaBridge::BatchTest < HubspotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.cms.media_bridge.batch.create(
        "objectType",
        app_id: 0,
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
      response => HubspotSDK::Cms::BatchResponseProperty
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::Property1]),
        started_at: Time,
        status: HubspotSDK::Cms::BatchResponseProperty::Status,
        errors: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::StandardError]) | nil,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        num_errors: Integer | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.media_bridge.batch.delete("objectType", app_id: 0, inputs: [{name: "name"}])

    assert_pattern do
      response => nil
    end
  end

  def test_get_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.cms.media_bridge.batch.get(
        "objectType",
        app_id: 0,
        archived: true,
        data_sensitivity: :highly_sensitive,
        inputs: [{name: "name"}]
      )

    assert_pattern do
      response => HubspotSDK::Cms::BatchResponseProperty
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::Property1]),
        started_at: Time,
        status: HubspotSDK::Cms::BatchResponseProperty::Status,
        errors: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::StandardError]) | nil,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        num_errors: Integer | nil,
        requested_at: Time | nil
      }
    end
  end
end
