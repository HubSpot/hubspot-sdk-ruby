# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::Marketing::Events::ListAssociationsTest < HubspotSDK::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @hubspot.marketing.events.list_associations.list("marketingEventId")

    assert_pattern do
      response => HubspotSDK::Marketing::CollectionResponseWithTotalPublicList
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::PublicList]),
        total: Integer,
        paging: HubspotSDK::Paging | nil
      }
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.marketing.events.list_associations.delete("listId", marketing_event_id: "marketingEventId")

    assert_pattern do
      response => nil
    end
  end

  def test_associate_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.marketing.events.list_associations.associate("listId", marketing_event_id: "marketingEventId")

    assert_pattern do
      response => nil
    end
  end

  def test_associate_by_external_account_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.marketing.events.list_associations.associate_by_external_account(
        "listId",
        external_account_id: "externalAccountId",
        external_event_id: "externalEventId"
      )

    assert_pattern do
      response => nil
    end
  end

  def test_delete_by_external_account_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.marketing.events.list_associations.delete_by_external_account(
        "listId",
        external_account_id: "externalAccountId",
        external_event_id: "externalEventId"
      )

    assert_pattern do
      response => nil
    end
  end

  def test_list_by_external_account_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.marketing.events.list_associations.list_by_external_account(
        "externalEventId",
        external_account_id: "externalAccountId"
      )

    assert_pattern do
      response => HubspotSDK::Marketing::CollectionResponseWithTotalPublicList
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::PublicList]),
        total: Integer,
        paging: HubspotSDK::Paging | nil
      }
    end
  end
end
