# frozen_string_literal: true

require_relative "../../test_helper"

class HubSpotSDK::Test::Resources::CommunicationPreferences::DefinitionsTest < HubSpotSDK::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @hubspot.communication_preferences.definitions.list

    assert_pattern do
      response => HubSpotSDK::CommunicationPreferences::ActionResponseWithResultsSubscriptionDefinition
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::CommunicationPreferences::SubscriptionDefinition]),
        started_at: Time,
        status: HubSpotSDK::CommunicationPreferences::ActionResponseWithResultsSubscriptionDefinition::Status,
        errors: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::StandardError]) | nil,
        links: ^(HubSpotSDK::Internal::Type::HashOf[String]) | nil,
        num_errors: Integer | nil,
        requested_at: Time | nil
      }
    end
  end
end
