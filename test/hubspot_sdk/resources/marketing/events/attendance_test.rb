# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::Marketing::Events::AttendanceTest < HubspotSDK::Test::ResourceTest
  def test_create_by_event_id_and_contact_id_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.marketing.events.attendance.create_by_event_id_and_contact_id(
        "subscriberState",
        object_id_: "objectId",
        inputs: [{interactionDateTime: 0, properties: {foo: "string"}, vid: 0}]
      )

    assert_pattern do
      response => HubspotSDK::Marketing::BatchResponseSubscriberVidResponse
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::SubscriberVidResponse]),
        started_at: Time,
        status: HubspotSDK::Marketing::BatchResponseSubscriberVidResponse::Status,
        errors: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::StandardError]) | nil,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        num_errors: Integer | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_create_by_event_id_and_email_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.marketing.events.attendance.create_by_event_id_and_email(
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
      response => HubspotSDK::Marketing::BatchResponseSubscriberEmailResponse
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::SubscriberEmailResponse]),
        started_at: Time,
        status: HubspotSDK::Marketing::BatchResponseSubscriberEmailResponse::Status,
        errors: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::StandardError]) | nil,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        num_errors: Integer | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_create_by_external_event_id_and_contact_id_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.marketing.events.attendance.create_by_external_event_id_and_contact_id(
        "subscriberState",
        external_event_id: "externalEventId",
        inputs: [{interactionDateTime: 0, properties: {foo: "string"}, vid: 0}]
      )

    assert_pattern do
      response => HubspotSDK::Marketing::BatchResponseSubscriberVidResponse
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::SubscriberVidResponse]),
        started_at: Time,
        status: HubspotSDK::Marketing::BatchResponseSubscriberVidResponse::Status,
        errors: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::StandardError]) | nil,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        num_errors: Integer | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_create_by_external_event_id_and_email_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.marketing.events.attendance.create_by_external_event_id_and_email(
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
      response => HubspotSDK::Marketing::BatchResponseSubscriberEmailResponse
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::SubscriberEmailResponse]),
        started_at: Time,
        status: HubspotSDK::Marketing::BatchResponseSubscriberEmailResponse::Status,
        errors: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::StandardError]) | nil,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        num_errors: Integer | nil,
        requested_at: Time | nil
      }
    end
  end
end
