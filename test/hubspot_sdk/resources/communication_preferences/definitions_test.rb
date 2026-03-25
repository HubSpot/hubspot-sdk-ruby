# frozen_string_literal: true

require_relative "../../test_helper"

class HubspotSDK::Test::Resources::CommunicationPreferences::DefinitionsTest < HubspotSDK::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @hubspot.communication_preferences.definitions.list

    assert_pattern do
      response => HubspotSDK::CommunicationPreferences::ActionResponseWithResultsSubscriptionDefinition
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CommunicationPreferences::SubscriptionDefinition]),
        started_at: Time,
        status: HubspotSDK::CommunicationPreferences::ActionResponseWithResultsSubscriptionDefinition::Status,
        errors: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::StandardError]) | nil,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        num_errors: Integer | nil,
        requested_at: Time | nil
      }
    end
  end
end
