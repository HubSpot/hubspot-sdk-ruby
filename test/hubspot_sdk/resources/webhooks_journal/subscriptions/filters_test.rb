# frozen_string_literal: true

require_relative "../../../test_helper"

class HubSpotSDK::Test::Resources::WebhooksJournal::Subscriptions::FiltersTest < HubSpotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.webhooks_journal.subscriptions.filters.create(
        filter: {conditions: [{filterType: :CRM_OBJECT_PROPERTY, operator: :CONTAINS, property: "property"}]},
        subscription_id: 0
      )

    assert_pattern do
      response => HubSpotSDK::FilterCreateResponse
    end

    assert_pattern do
      response => {
        filter_id: Integer
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @hubspot.webhooks_journal.subscriptions.filters.list(0)

    assert_pattern do
      response => ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::FilterResponse])
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @hubspot.webhooks_journal.subscriptions.filters.delete(0)

    assert_pattern do
      response => nil
    end
  end

  def test_get
    skip("Mock server tests are disabled")

    response = @hubspot.webhooks_journal.subscriptions.filters.get(0)

    assert_pattern do
      response => HubSpotSDK::FilterResponse
    end

    assert_pattern do
      response => {
        id: Integer,
        created_at: Integer,
        filter: HubSpotSDK::Filter
      }
    end
  end
end
