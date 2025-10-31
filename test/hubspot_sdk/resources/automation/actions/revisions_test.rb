# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::Automation::Actions::RevisionsTest < HubspotSDK::Test::ResourceTest
  def test_list_required_params
    skip("Prism tests are disabled")

    response = @hubspot.automation.actions.revisions.list("definitionId", app_id: 0)

    assert_pattern do
      response => HubspotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubspotSDK::Automation::PublicActionRevision
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Time,
        definition: HubspotSDK::Automation::PublicActionDefinition,
        revision_id: String
      }
    end
  end

  def test_get_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.automation.actions.revisions.get("revisionId", app_id: 0, definition_id: "definitionId")

    assert_pattern do
      response => HubspotSDK::Automation::PublicActionRevision
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        definition: HubspotSDK::Automation::PublicActionDefinition,
        revision_id: String
      }
    end
  end
end
