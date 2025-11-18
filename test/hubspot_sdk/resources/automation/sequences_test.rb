# frozen_string_literal: true

require_relative "../../test_helper"

class HubspotSDK::Test::Resources::Automation::SequencesTest < HubspotSDK::Test::ResourceTest
  def test_list_required_params
    skip("Prism tests are disabled")

    response = @hubspot.automation.sequences.list(user_id: "userId")

    assert_pattern do
      response => HubspotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubspotSDK::Automation::PublicSequenceLiteResponse
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Time,
        name: String,
        updated_at: Time,
        user_id: String,
        folder_id: String | nil
      }
    end
  end

  def test_get_required_params
    skip("Prism tests are disabled")

    response = @hubspot.automation.sequences.get("sequenceId", user_id: "userId")

    assert_pattern do
      response => HubspotSDK::Automation::PublicSequenceResponse
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        dependencies: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Automation::PublicSequenceStepDependencyResponse]),
        name: String,
        steps: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Automation::PublicSequenceStepResponse]),
        updated_at: Time,
        user_id: String,
        folder_id: String | nil,
        settings: HubspotSDK::Automation::PublicSequenceSettingsResponse | nil
      }
    end
  end
end
