# frozen_string_literal: true

require_relative "../../test_helper"

class HubspotSDK::Test::Resources::Automation::SequencesTest < HubspotSDK::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @hubspot.automation.sequences.list

    assert_pattern do
      response => HubspotSDK::Automation::CollectionResponseWithTotalPublicSequenceLiteResponseForwardPaging
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Automation::PublicSequenceLiteResponse]),
        total: Integer,
        paging: HubspotSDK::ForwardPaging | nil
      }
    end
  end

  def test_get
    skip("Prism tests are disabled")

    response = @hubspot.automation.sequences.get("sequenceId")

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
