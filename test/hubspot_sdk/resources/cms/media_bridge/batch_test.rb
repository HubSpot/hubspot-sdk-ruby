# frozen_string_literal: true

require_relative "../../../test_helper"

class HubSpotSDK::Test::Resources::Cms::MediaBridge::BatchTest < HubSpotSDK::Test::ResourceTest
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
      response => HubSpotSDK::Cms::BatchResponseProperty
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Cms::Property]),
        started_at: Time,
        status: HubSpotSDK::Cms::BatchResponseProperty::Status,
        links: ^(HubSpotSDK::Internal::Type::HashOf[String]) | nil,
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
      response => HubSpotSDK::Cms::BatchResponseProperty
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Cms::Property]),
        started_at: Time,
        status: HubSpotSDK::Cms::BatchResponseProperty::Status,
        links: ^(HubSpotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end
end
