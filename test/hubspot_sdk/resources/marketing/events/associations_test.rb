# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::Marketing::Events::AssociationsTest < HubspotSDK::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @hub_spot.marketing.events.associations.list("marketingEventId")

    assert_pattern do
      response => HubspotSDK::Marketing::CollectionResponseWithTotalPublicListNoPaging
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::PublicList]),
        total: Integer
      }
    end
  end

  def test_delete_required_params
    skip("Prism tests are disabled")

    response =
      @hub_spot.marketing.events.associations.delete("listId", marketing_event_id: "marketingEventId")

    assert_pattern do
      response => nil
    end
  end

  def test_associate_required_params
    skip("Prism tests are disabled")

    response =
      @hub_spot.marketing.events.associations.associate("listId", marketing_event_id: "marketingEventId")

    assert_pattern do
      response => nil
    end
  end

  def test_associate_by_external_account_required_params
    skip("Prism tests are disabled")

    response =
      @hub_spot.marketing.events.associations.associate_by_external_account(
        "listId",
        external_account_id: "externalAccountId",
        external_event_id: "externalEventId"
      )

    assert_pattern do
      response => nil
    end
  end

  def test_delete_by_external_account_required_params
    skip("Prism tests are disabled")

    response =
      @hub_spot.marketing.events.associations.delete_by_external_account(
        "listId",
        external_account_id: "externalAccountId",
        external_event_id: "externalEventId"
      )

    assert_pattern do
      response => nil
    end
  end

  def test_list_by_external_account_required_params
    skip("Prism tests are disabled")

    response =
      @hub_spot.marketing.events.associations.list_by_external_account(
        "externalEventId",
        external_account_id: "externalAccountId"
      )

    assert_pattern do
      response => HubspotSDK::Marketing::CollectionResponseWithTotalPublicListNoPaging
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::PublicList]),
        total: Integer
      }
    end
  end
end
