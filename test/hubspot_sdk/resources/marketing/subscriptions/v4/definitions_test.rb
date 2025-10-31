# frozen_string_literal: true

require_relative "../../../../test_helper"

class HubspotSDK::Test::Resources::Marketing::Subscriptions::V4::DefinitionsTest < HubspotSDK::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @hub_spot.marketing.subscriptions.v4.definitions.list

    assert_pattern do
      response => HubspotSDK::Marketing::Subscriptions::ActionResponseWithResultsSubscriptionDefinition
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::SubscriptionDefinition]),
        started_at: Time,
        status: HubspotSDK::Marketing::Subscriptions::ActionResponseWithResultsSubscriptionDefinition::Status,
        errors: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::StandardError]) | nil,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        num_errors: Integer | nil,
        requested_at: Time | nil
      }
    end
  end
end
