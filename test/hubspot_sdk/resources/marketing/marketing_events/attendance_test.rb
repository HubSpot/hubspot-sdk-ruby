# frozen_string_literal: true

require_relative "../../../test_helper"

class HubSpotSDK::Test::Resources::Marketing::MarketingEvents::AttendanceTest < HubSpotSDK::Test::ResourceTest
  def test_create_by_event_id_and_contact_id_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.marketing.marketing_events.attendance.create_by_event_id_and_contact_id(
        "subscriberState",
        object_id_: "objectId",
        inputs: [{interactionDateTime: 0, properties: {foo: "string"}, vid: 0}]
      )

    assert_pattern do
      response => HubSpotSDK::Marketing::BatchResponseSubscriberVidResponse
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Marketing::SubscriberVidResponse]),
        started_at: Time,
        status: HubSpotSDK::Marketing::BatchResponseSubscriberVidResponse::Status,
        errors: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::StandardError]) | nil,
        links: ^(HubSpotSDK::Internal::Type::HashOf[String]) | nil,
        num_errors: Integer | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_create_by_event_id_and_email_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.marketing.marketing_events.attendance.create_by_event_id_and_email(
        "subscriberState",
        object_id_: "objectId",
        inputs: [
          {
            contactProperties: {foo: "string"},
            email: "email",
            interactionDateTime: 0,
            properties: {foo: "string"}
          }
        ]
      )

    assert_pattern do
      response => HubSpotSDK::Marketing::BatchResponseSubscriberEmailResponse
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Marketing::SubscriberEmailResponse]),
        started_at: Time,
        status: HubSpotSDK::Marketing::BatchResponseSubscriberEmailResponse::Status,
        errors: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::StandardError]) | nil,
        links: ^(HubSpotSDK::Internal::Type::HashOf[String]) | nil,
        num_errors: Integer | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_create_by_external_event_id_and_contact_id_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.marketing.marketing_events.attendance.create_by_external_event_id_and_contact_id(
        "subscriberState",
        external_event_id: "externalEventId",
        inputs: [{interactionDateTime: 0, properties: {foo: "string"}, vid: 0}]
      )

    assert_pattern do
      response => HubSpotSDK::Marketing::BatchResponseSubscriberVidResponse
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Marketing::SubscriberVidResponse]),
        started_at: Time,
        status: HubSpotSDK::Marketing::BatchResponseSubscriberVidResponse::Status,
        errors: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::StandardError]) | nil,
        links: ^(HubSpotSDK::Internal::Type::HashOf[String]) | nil,
        num_errors: Integer | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_create_by_external_event_id_and_email_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.marketing.marketing_events.attendance.create_by_external_event_id_and_email(
        "subscriberState",
        external_event_id: "externalEventId",
        inputs: [
          {
            contactProperties: {foo: "string"},
            email: "email",
            interactionDateTime: 0,
            properties: {foo: "string"}
          }
        ]
      )

    assert_pattern do
      response => HubSpotSDK::Marketing::BatchResponseSubscriberEmailResponse
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Marketing::SubscriberEmailResponse]),
        started_at: Time,
        status: HubSpotSDK::Marketing::BatchResponseSubscriberEmailResponse::Status,
        errors: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::StandardError]) | nil,
        links: ^(HubSpotSDK::Internal::Type::HashOf[String]) | nil,
        num_errors: Integer | nil,
        requested_at: Time | nil
      }
    end
  end
end
