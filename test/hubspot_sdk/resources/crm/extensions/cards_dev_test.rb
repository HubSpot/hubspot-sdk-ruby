# frozen_string_literal: true

require_relative "../../../test_helper"

class HubSpotSDK::Test::Resources::Crm::Extensions::CardsDevTest < HubSpotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.extensions.cards_dev.create(
        0,
        actions: {baseUrls: ["string"]},
        display_: {
          properties: [
            {
              dataType: :BOOLEAN,
              label: "label",
              name: "name",
              options: [{label: "label", name: "name", type: :DANGER}]
            }
          ]
        },
        fetch: {
          cardType: :EXTERNAL,
          objectTypes: [{name: :companies, propertiesToSend: ["string"]}],
          targetUrl: "targetUrl"
        },
        title: "title"
      )

    assert_pattern do
      response => HubSpotSDK::Crm::Extensions::PublicCardResponse
    end

    assert_pattern do
      response => {
        id: String,
        actions: HubSpotSDK::Crm::Extensions::CardActions,
        audit_history: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::Extensions::CardAuditResponse]),
        display_: HubSpotSDK::Crm::Extensions::CardDisplayBody,
        fetch: HubSpotSDK::Crm::Extensions::PublicCardFetchBody,
        title: String,
        created_at: Time | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.crm.extensions.cards_dev.update("cardId", app_id: 0)

    assert_pattern do
      response => HubSpotSDK::Crm::Extensions::PublicCardResponse
    end

    assert_pattern do
      response => {
        id: String,
        actions: HubSpotSDK::Crm::Extensions::CardActions,
        audit_history: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::Extensions::CardAuditResponse]),
        display_: HubSpotSDK::Crm::Extensions::CardDisplayBody,
        fetch: HubSpotSDK::Crm::Extensions::PublicCardFetchBody,
        title: String,
        created_at: Time | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.crm.extensions.cards_dev.delete("cardId", app_id: 0)

    assert_pattern do
      response => nil
    end
  end

  def test_get
    skip("Mock server tests are disabled")

    response = @hubspot.crm.extensions.cards_dev.get(0)

    assert_pattern do
      response => HubSpotSDK::Crm::Extensions::PublicCardListResponse
    end

    assert_pattern do
      response => {
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::Extensions::PublicCardResponse])
      }
    end
  end

  def test_get_by_id_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.crm.extensions.cards_dev.get_by_id("cardId", app_id: 0)

    assert_pattern do
      response => HubSpotSDK::Crm::Extensions::PublicCardResponse
    end

    assert_pattern do
      response => {
        id: String,
        actions: HubSpotSDK::Crm::Extensions::CardActions,
        audit_history: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::Extensions::CardAuditResponse]),
        display_: HubSpotSDK::Crm::Extensions::CardDisplayBody,
        fetch: HubSpotSDK::Crm::Extensions::PublicCardFetchBody,
        title: String,
        created_at: Time | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_get_sample_response
    skip("Mock server tests are disabled")

    response = @hubspot.crm.extensions.cards_dev.get_sample_response

    assert_pattern do
      response => HubSpotSDK::Crm::Extensions::IntegratorCardPayloadResponse
    end

    assert_pattern do
      response => {
        response_version: HubSpotSDK::Crm::Extensions::IntegratorCardPayloadResponse::ResponseVersion,
        sections: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::Extensions::IntegratorObjectResult]),
        total_count: Integer,
        all_items_link_url: String | nil,
        card_label: String | nil,
        top_level_actions: HubSpotSDK::Crm::Extensions::TopLevelActions | nil
      }
    end
  end

  def test_migrate_views_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.crm.extensions.cards_dev.migrate_views(0, app_card_id: 0, legacy_crm_card_id: 0)

    assert_pattern do
      response => HubSpotSDK::Crm::Extensions::CardMigrateViewsResponse
    end

    assert_pattern do
      response => {
        message: String
      }
    end
  end
end
