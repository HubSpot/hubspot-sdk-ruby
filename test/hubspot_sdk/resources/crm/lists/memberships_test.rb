# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::CRM::Lists::MembershipsTest < HubspotSDK::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @hubspot.crm.lists.memberships.list("listId")

    assert_pattern do
      response => HubspotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubspotSDK::CRM::JoinTimeAndRecordID
    end

    assert_pattern do
      row => {
        membership_timestamp: Time,
        record_id: String
      }
    end
  end

  def test_add_required_params
    skip("Prism tests are disabled")

    response = @hubspot.crm.lists.memberships.add("listId", body: ["string"])

    assert_pattern do
      response => HubspotSDK::CRM::MembershipsUpdateResponse
    end

    assert_pattern do
      response => {
        record_ids_missing: ^(HubspotSDK::Internal::Type::ArrayOf[String]),
        record_ids_removed: ^(HubspotSDK::Internal::Type::ArrayOf[String]),
        records_ids_added: ^(HubspotSDK::Internal::Type::ArrayOf[String])
      }
    end
  end

  def test_add_all_from_list_required_params
    skip("Prism tests are disabled")

    response = @hubspot.crm.lists.memberships.add_all_from_list("sourceListId", list_id: "listId")

    assert_pattern do
      response => nil
    end
  end

  def test_add_and_remove_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.crm.lists.memberships.add_and_remove(
        "listId",
        record_ids_to_add: %w[123 456 789],
        record_ids_to_remove: ["654"]
      )

    assert_pattern do
      response => HubspotSDK::CRM::MembershipsUpdateResponse
    end

    assert_pattern do
      response => {
        record_ids_missing: ^(HubspotSDK::Internal::Type::ArrayOf[String]),
        record_ids_removed: ^(HubspotSDK::Internal::Type::ArrayOf[String]),
        records_ids_added: ^(HubspotSDK::Internal::Type::ArrayOf[String])
      }
    end
  end

  def test_get_lists_required_params
    skip("Prism tests are disabled")

    response = @hubspot.crm.lists.memberships.get_lists("recordId", object_type_id: "objectTypeId")

    assert_pattern do
      response => HubspotSDK::CRM::APICollectionResponseRecordListMembershipNoPaging
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::RecordListMembership]),
        total: Integer | nil
      }
    end
  end

  def test_get_page_ordered_by_added_to_list_date
    skip("Prism tests are disabled")

    response = @hubspot.crm.lists.memberships.get_page_ordered_by_added_to_list_date("listId")

    assert_pattern do
      response => HubspotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubspotSDK::CRM::JoinTimeAndRecordID
    end

    assert_pattern do
      row => {
        membership_timestamp: Time,
        record_id: String
      }
    end
  end

  def test_remove_required_params
    skip("Prism tests are disabled")

    response = @hubspot.crm.lists.memberships.remove("listId", body: ["string"])

    assert_pattern do
      response => HubspotSDK::CRM::MembershipsUpdateResponse
    end

    assert_pattern do
      response => {
        record_ids_missing: ^(HubspotSDK::Internal::Type::ArrayOf[String]),
        record_ids_removed: ^(HubspotSDK::Internal::Type::ArrayOf[String]),
        records_ids_added: ^(HubspotSDK::Internal::Type::ArrayOf[String])
      }
    end
  end

  def test_remove_all
    skip("Prism tests are disabled")

    response = @hubspot.crm.lists.memberships.remove_all("listId")

    assert_pattern do
      response => nil
    end
  end
end
