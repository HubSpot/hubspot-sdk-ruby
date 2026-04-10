# frozen_string_literal: true

require_relative "../../../test_helper"

class HubSpotSDK::Test::Resources::Marketing::MarketingEvents::ParticipationsTest < HubSpotSDK::Test::ResourceTest
  def test_get_by_external_account_and_event_id_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.marketing.marketing_events.participations.get_by_external_account_and_event_id(
        "externalEventId",
        external_account_id: "externalAccountId"
      )

    assert_pattern do
      response => HubSpotSDK::Marketing::AttendanceCounters
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
    skip("Mock server tests are disabled")

    response = @hubspot.marketing.marketing_events.participations.get_by_id(0)

    assert_pattern do
      response => HubSpotSDK::Marketing::AttendanceCounters
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
    skip("Mock server tests are disabled")

    response =
      @hubspot.marketing.marketing_events.participations.list_breakdown_by_contact("contactIdentifier")

    assert_pattern do
      response => HubSpotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubSpotSDK::Marketing::ParticipationBreakdown
    end

    assert_pattern do
      row => {
        id: String,
        associations: HubSpotSDK::Marketing::ParticipationAssociations,
        created_at: Time,
        properties: HubSpotSDK::Marketing::ParticipationProperties
      }
    end
  end

  def test_list_breakdown_by_external_account_and_event_id_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.marketing.marketing_events.participations.list_breakdown_by_external_account_and_event_id(
        "externalEventId",
        external_account_id: "externalAccountId"
      )

    assert_pattern do
      response => HubSpotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubSpotSDK::Marketing::ParticipationBreakdown
    end

    assert_pattern do
      row => {
        id: String,
        associations: HubSpotSDK::Marketing::ParticipationAssociations,
        created_at: Time,
        properties: HubSpotSDK::Marketing::ParticipationProperties
      }
    end
  end

  def test_list_breakdown_by_id
    skip("Mock server tests are disabled")

    response = @hubspot.marketing.marketing_events.participations.list_breakdown_by_id(0)

    assert_pattern do
      response => HubSpotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubSpotSDK::Marketing::ParticipationBreakdown
    end

    assert_pattern do
      row => {
        id: String,
        associations: HubSpotSDK::Marketing::ParticipationAssociations,
        created_at: Time,
        properties: HubSpotSDK::Marketing::ParticipationProperties
      }
    end
  end
end
