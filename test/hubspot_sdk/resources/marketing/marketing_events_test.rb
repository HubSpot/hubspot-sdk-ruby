# frozen_string_literal: true

require_relative "../../test_helper"

class HubSpotSDK::Test::Resources::Marketing::MarketingEventsTest < HubSpotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.marketing.marketing_events.create(
        custom_properties: [
          {
            dataSensitivity: :high,
            isEncrypted: true,
            isLargeValue: true,
            name: "name",
            persistenceTimestamp: 0,
            requestId: "requestId",
            selectedByUser: true,
            selectedByUserTimestamp: 0,
            source: :ACADEMY,
            sourceId: "sourceId",
            sourceLabel: "sourceLabel",
            sourceMetadata: "sourceMetadata",
            sourceUpstreamDeployable: "sourceUpstreamDeployable",
            sourceVid: [0],
            timestamp: 0,
            unit: "unit",
            updatedByUserId: 0,
            useTimestampAsPersistenceTimestamp: true,
            value: "value"
          }
        ],
        event_name: "eventName",
        event_organizer: "eventOrganizer",
        external_account_id: "externalAccountId",
        external_event_id: "externalEventId"
      )

    assert_pattern do
      response => HubSpotSDK::Marketing::MarketingEventDefaultResponse
    end

    assert_pattern do
      response => {
        custom_properties: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::PropertyValue]),
        event_name: String,
        event_organizer: String,
        end_date_time: Time | nil,
        event_cancelled: HubSpotSDK::Internal::Type::Boolean | nil,
        event_completed: HubSpotSDK::Internal::Type::Boolean | nil,
        event_description: String | nil,
        event_type: String | nil,
        event_url: String | nil,
        object_id_: String | nil,
        start_date_time: Time | nil
      }
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.marketing.marketing_events.update(
        "objectId",
        custom_properties: [
          {
            dataSensitivity: :high,
            isEncrypted: true,
            isLargeValue: true,
            name: "name",
            persistenceTimestamp: 0,
            requestId: "requestId",
            selectedByUser: true,
            selectedByUserTimestamp: 0,
            source: :ACADEMY,
            sourceId: "sourceId",
            sourceLabel: "sourceLabel",
            sourceMetadata: "sourceMetadata",
            sourceUpstreamDeployable: "sourceUpstreamDeployable",
            sourceVid: [0],
            timestamp: 0,
            unit: "unit",
            updatedByUserId: 0,
            useTimestampAsPersistenceTimestamp: true,
            value: "value"
          }
        ]
      )

    assert_pattern do
      response => HubSpotSDK::Marketing::MarketingEventPublicDefaultResponseV2
    end

    assert_pattern do
      response => {
        created_at: Time,
        custom_properties: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Marketing::CrmPropertyWrapper]),
        event_name: String,
        object_id_: String,
        updated_at: Time,
        app_info: HubSpotSDK::Marketing::AppInfo | nil,
        end_date_time: Time | nil,
        event_cancelled: HubSpotSDK::Internal::Type::Boolean | nil,
        event_completed: HubSpotSDK::Internal::Type::Boolean | nil,
        event_description: String | nil,
        event_organizer: String | nil,
        event_type: String | nil,
        event_url: String | nil,
        start_date_time: Time | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @hubspot.marketing.marketing_events.list

    assert_pattern do
      response => HubSpotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubSpotSDK::Marketing::MarketingEventPublicReadResponseV2
    end

    assert_pattern do
      row => {
        created_at: Time,
        custom_properties: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Marketing::CrmPropertyWrapper]),
        event_name: String,
        object_id_: String,
        updated_at: Time,
        app_info: HubSpotSDK::Marketing::AppInfo | nil,
        attendees: Integer | nil,
        cancellations: Integer | nil,
        end_date_time: Time | nil,
        event_cancelled: HubSpotSDK::Internal::Type::Boolean | nil,
        event_completed: HubSpotSDK::Internal::Type::Boolean | nil,
        event_description: String | nil,
        event_organizer: String | nil,
        event_status: String | nil,
        event_status_v2: String | nil,
        event_type: String | nil,
        event_url: String | nil,
        external_event_id: String | nil,
        no_shows: Integer | nil,
        registrants: Integer | nil,
        start_date_time: Time | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @hubspot.marketing.marketing_events.delete("objectId")

    assert_pattern do
      response => nil
    end
  end

  def test_delete_batch_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.marketing.marketing_events.delete_batch(inputs: [{objectId: "objectId"}])

    assert_pattern do
      response => StringIO
    end
  end

  def test_delete_batch_by_external_event_id_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.marketing.marketing_events.delete_batch_by_external_event_id(
        inputs: [{appId: 0, externalAccountId: "externalAccountId", externalEventId: "externalEventId"}]
      )

    assert_pattern do
      response => StringIO
    end
  end

  def test_delete_by_external_event_id_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.marketing.marketing_events.delete_by_external_event_id(
        "externalEventId",
        external_account_id: "externalAccountId"
      )

    assert_pattern do
      response => nil
    end
  end

  def test_get
    skip("Mock server tests are disabled")

    response = @hubspot.marketing.marketing_events.get("objectId")

    assert_pattern do
      response => HubSpotSDK::Marketing::MarketingEventPublicReadResponseV2
    end

    assert_pattern do
      response => {
        created_at: Time,
        custom_properties: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Marketing::CrmPropertyWrapper]),
        event_name: String,
        object_id_: String,
        updated_at: Time,
        app_info: HubSpotSDK::Marketing::AppInfo | nil,
        attendees: Integer | nil,
        cancellations: Integer | nil,
        end_date_time: Time | nil,
        event_cancelled: HubSpotSDK::Internal::Type::Boolean | nil,
        event_completed: HubSpotSDK::Internal::Type::Boolean | nil,
        event_description: String | nil,
        event_organizer: String | nil,
        event_status: String | nil,
        event_status_v2: String | nil,
        event_type: String | nil,
        event_url: String | nil,
        external_event_id: String | nil,
        no_shows: Integer | nil,
        registrants: Integer | nil,
        start_date_time: Time | nil
      }
    end
  end

  def test_get_by_external_event_id_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.marketing.marketing_events.get_by_external_event_id(
        "externalEventId",
        external_account_id: "externalAccountId"
      )

    assert_pattern do
      response => HubSpotSDK::Marketing::MarketingEventPublicReadResponse
    end

    assert_pattern do
      response => {
        id: String,
        attendees: Integer,
        cancellations: Integer,
        created_at: Time,
        custom_properties: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::PropertyValue]),
        event_name: String,
        event_organizer: String,
        external_event_id: String,
        no_shows: Integer,
        registrants: Integer,
        updated_at: Time,
        end_date_time: Time | nil,
        event_cancelled: HubSpotSDK::Internal::Type::Boolean | nil,
        event_completed: HubSpotSDK::Internal::Type::Boolean | nil,
        event_description: String | nil,
        event_type: String | nil,
        event_url: String | nil,
        object_id_: String | nil,
        start_date_time: Time | nil
      }
    end
  end

  def test_search_by_external_event_id_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.marketing.marketing_events.search_by_external_event_id(q: "q")

    assert_pattern do
      response => HubSpotSDK::Marketing::CollectionResponseSearchPublicResponseWrapperNoPaging
    end

    assert_pattern do
      response => {
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Marketing::SearchPublicResponseWrapper])
      }
    end
  end

  def test_search_identifiers_by_external_event_id
    skip("Mock server tests are disabled")

    response = @hubspot.marketing.marketing_events.search_identifiers_by_external_event_id("externalEventId")

    assert_pattern do
      response => HubSpotSDK::Marketing::CollectionResponseWithTotalMarketingEventIdentifiersResponse
    end

    assert_pattern do
      response => {
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Marketing::MarketingEventIdentifiersResponse]),
        total: Integer,
        paging: HubSpotSDK::Paging | nil
      }
    end
  end

  def test_update_batch_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.marketing.marketing_events.update_batch(
        inputs: [
          {
            customProperties: [
              {
                dataSensitivity: :high,
                isEncrypted: true,
                isLargeValue: true,
                name: "name",
                persistenceTimestamp: 0,
                requestId: "requestId",
                selectedByUser: true,
                selectedByUserTimestamp: 0,
                source: :ACADEMY,
                sourceId: "sourceId",
                sourceLabel: "sourceLabel",
                sourceMetadata: "sourceMetadata",
                sourceUpstreamDeployable: "sourceUpstreamDeployable",
                sourceVid: [0],
                timestamp: 0,
                unit: "unit",
                updatedByUserId: 0,
                useTimestampAsPersistenceTimestamp: true,
                value: "value"
              }
            ],
            objectId: "objectId"
          }
        ]
      )

    assert_pattern do
      response => HubSpotSDK::Marketing::BatchResponseMarketingEventPublicDefaultResponseV2
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Marketing::MarketingEventPublicDefaultResponseV2]),
        started_at: Time,
        status: HubSpotSDK::Marketing::BatchResponseMarketingEventPublicDefaultResponseV2::Status,
        links: ^(HubSpotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_update_by_external_event_id_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.marketing.marketing_events.update_by_external_event_id(
        "externalEventId",
        external_account_id: "externalAccountId",
        custom_properties: [
          {
            dataSensitivity: :high,
            isEncrypted: true,
            isLargeValue: true,
            name: "name",
            persistenceTimestamp: 0,
            requestId: "requestId",
            selectedByUser: true,
            selectedByUserTimestamp: 0,
            source: :ACADEMY,
            sourceId: "sourceId",
            sourceLabel: "sourceLabel",
            sourceMetadata: "sourceMetadata",
            sourceUpstreamDeployable: "sourceUpstreamDeployable",
            sourceVid: [0],
            timestamp: 0,
            unit: "unit",
            updatedByUserId: 0,
            useTimestampAsPersistenceTimestamp: true,
            value: "value"
          }
        ]
      )

    assert_pattern do
      response => HubSpotSDK::Marketing::MarketingEventPublicDefaultResponse
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        custom_properties: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::PropertyValue]),
        event_name: String,
        event_organizer: String,
        updated_at: Time,
        end_date_time: Time | nil,
        event_cancelled: HubSpotSDK::Internal::Type::Boolean | nil,
        event_completed: HubSpotSDK::Internal::Type::Boolean | nil,
        event_description: String | nil,
        event_type: String | nil,
        event_url: String | nil,
        object_id_: String | nil,
        start_date_time: Time | nil
      }
    end
  end

  def test_upsert_batch_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.marketing.marketing_events.upsert_batch(
        inputs: [
          {
            customProperties: [
              {
                dataSensitivity: :high,
                isEncrypted: true,
                isLargeValue: true,
                name: "name",
                persistenceTimestamp: 0,
                requestId: "requestId",
                selectedByUser: true,
                selectedByUserTimestamp: 0,
                source: :ACADEMY,
                sourceId: "sourceId",
                sourceLabel: "sourceLabel",
                sourceMetadata: "sourceMetadata",
                sourceUpstreamDeployable: "sourceUpstreamDeployable",
                sourceVid: [0],
                timestamp: 0,
                unit: "unit",
                updatedByUserId: 0,
                useTimestampAsPersistenceTimestamp: true,
                value: "value"
              }
            ],
            eventName: "eventName",
            eventOrganizer: "eventOrganizer",
            externalAccountId: "externalAccountId",
            externalEventId: "externalEventId"
          }
        ]
      )

    assert_pattern do
      response => HubSpotSDK::Marketing::BatchResponseMarketingEventPublicDefaultResponse
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Marketing::MarketingEventPublicDefaultResponse]),
        started_at: Time,
        status: HubSpotSDK::Marketing::BatchResponseMarketingEventPublicDefaultResponse::Status,
        errors: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::StandardError]) | nil,
        links: ^(HubSpotSDK::Internal::Type::HashOf[String]) | nil,
        num_errors: Integer | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_upsert_by_external_event_id_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.marketing.marketing_events.upsert_by_external_event_id(
        "externalEventId",
        custom_properties: [
          {
            dataSensitivity: :high,
            isEncrypted: true,
            isLargeValue: true,
            name: "name",
            persistenceTimestamp: 0,
            requestId: "requestId",
            selectedByUser: true,
            selectedByUserTimestamp: 0,
            source: :ACADEMY,
            sourceId: "sourceId",
            sourceLabel: "sourceLabel",
            sourceMetadata: "sourceMetadata",
            sourceUpstreamDeployable: "sourceUpstreamDeployable",
            sourceVid: [0],
            timestamp: 0,
            unit: "unit",
            updatedByUserId: 0,
            useTimestampAsPersistenceTimestamp: true,
            value: "value"
          }
        ],
        event_name: "eventName",
        event_organizer: "eventOrganizer",
        external_account_id: "externalAccountId",
        body_external_event_id: "externalEventId"
      )

    assert_pattern do
      response => HubSpotSDK::Marketing::MarketingEventPublicDefaultResponse
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        custom_properties: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::PropertyValue]),
        event_name: String,
        event_organizer: String,
        updated_at: Time,
        end_date_time: Time | nil,
        event_cancelled: HubSpotSDK::Internal::Type::Boolean | nil,
        event_completed: HubSpotSDK::Internal::Type::Boolean | nil,
        event_description: String | nil,
        event_type: String | nil,
        event_url: String | nil,
        object_id_: String | nil,
        start_date_time: Time | nil
      }
    end
  end
end
