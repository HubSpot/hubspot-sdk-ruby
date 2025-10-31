# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::Marketing::Events::ParticipationsTest < HubspotSDK::Test::ResourceTest
  def test_get_by_external_account_and_event_id_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.marketing.events.participations.get_by_external_account_and_event_id(
        "externalEventId",
        external_account_id: "externalAccountId"
      )

    assert_pattern do
      response => HubspotSDK::Marketing::AttendanceCounters
    end

    assert_pattern do
      response => {
        attended: Integer,
        cancelled: Integer,
        no_shows: Integer,
        registered: Integer
      }
    end
  end

  def test_get_by_id
    skip("Prism tests are disabled")

    response = @hubspot.marketing.events.participations.get_by_id(0)

    assert_pattern do
      response => HubspotSDK::Marketing::AttendanceCounters
    end

    assert_pattern do
      response => {
        attended: Integer,
        cancelled: Integer,
        no_shows: Integer,
        registered: Integer
      }
    end
  end

  def test_list_breakdown_by_contact
    skip("Prism tests are disabled")

    response = @hubspot.marketing.events.participations.list_breakdown_by_contact("contactIdentifier")

    assert_pattern do
      response => HubspotSDK::Marketing::CollectionResponseWithTotalParticipationBreakdownForwardPaging
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::ParticipationBreakdown]),
        total: Integer,
        paging: HubspotSDK::ForwardPaging | nil
      }
    end
  end

  def test_list_breakdown_by_external_account_and_event_id_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.marketing.events.participations.list_breakdown_by_external_account_and_event_id(
        "externalEventId",
        external_account_id: "externalAccountId"
      )

    assert_pattern do
      response => HubspotSDK::Marketing::CollectionResponseWithTotalParticipationBreakdownForwardPaging
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::ParticipationBreakdown]),
        total: Integer,
        paging: HubspotSDK::ForwardPaging | nil
      }
    end
  end

  def test_list_breakdown_by_id
    skip("Prism tests are disabled")

    response = @hubspot.marketing.events.participations.list_breakdown_by_id(0)

    assert_pattern do
      response => HubspotSDK::Marketing::CollectionResponseWithTotalParticipationBreakdownForwardPaging
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::ParticipationBreakdown]),
        total: Integer,
        paging: HubspotSDK::ForwardPaging | nil
      }
    end
  end
end
