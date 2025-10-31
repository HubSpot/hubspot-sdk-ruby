# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::CRM::Extensions::CardsTest < HubspotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @hub_spot.crm.extensions.cards.create(
        0,
        actions: {baseUrls: ["https://www.example.com/hubspot"]},
        display_: {
          properties: [
            {
              dataType: :STRING,
              label: "Pets Name",
              name: "pet_name",
              options: [{label: "label", name: "name", type: :DEFAULT}]
            }
          ]
        },
        fetch: {
          objectTypes: [{name: :contacts, propertiesToSend: %w[email firstname]}],
          targetUrl: "https://www.example.com/hubspot/target"
        },
        title: "PetSpot"
      )

    assert_pattern do
      response => HubspotSDK::CRM::Extensions::PublicCardResponse
    end

    assert_pattern do
      response => {
        id: String,
        actions: HubspotSDK::CRM::Extensions::CardActions,
        audit_history: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::Extensions::CardAuditResponse]),
        display_: HubspotSDK::CRM::Extensions::CardDisplayBody,
        fetch: HubspotSDK::CRM::Extensions::PublicCardFetchBody,
        title: String,
        created_at: Time | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_update_required_params
    skip("Prism tests are disabled")

    response = @hub_spot.crm.extensions.cards.update("cardId", app_id: 0)

    assert_pattern do
      response => HubspotSDK::CRM::Extensions::PublicCardResponse
    end

    assert_pattern do
      response => {
        id: String,
        actions: HubspotSDK::CRM::Extensions::CardActions,
        audit_history: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::Extensions::CardAuditResponse]),
        display_: HubspotSDK::CRM::Extensions::CardDisplayBody,
        fetch: HubspotSDK::CRM::Extensions::PublicCardFetchBody,
        title: String,
        created_at: Time | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @hub_spot.crm.extensions.cards.list(0)

    assert_pattern do
      response => HubspotSDK::CRM::Extensions::PublicCardListResponse
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::Extensions::PublicCardResponse])
      }
    end
  end

  def test_delete_required_params
    skip("Prism tests are disabled")

    response = @hub_spot.crm.extensions.cards.delete("cardId", app_id: 0)

    assert_pattern do
      response => nil
    end
  end

  def test_get_required_params
    skip("Prism tests are disabled")

    response = @hub_spot.crm.extensions.cards.get("cardId", app_id: 0)

    assert_pattern do
      response => HubspotSDK::CRM::Extensions::PublicCardResponse
    end

    assert_pattern do
      response => {
        id: String,
        actions: HubspotSDK::CRM::Extensions::CardActions,
        audit_history: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::Extensions::CardAuditResponse]),
        display_: HubspotSDK::CRM::Extensions::CardDisplayBody,
        fetch: HubspotSDK::CRM::Extensions::PublicCardFetchBody,
        title: String,
        created_at: Time | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_get_sample_response
    skip("Prism tests are disabled")

    response = @hub_spot.crm.extensions.cards.get_sample_response

    assert_pattern do
      response => HubspotSDK::CRM::Extensions::IntegratorCardPayloadResponse
    end

    assert_pattern do
      response => {
        total_count: Integer,
        all_items_link_url: String | nil,
        card_label: String | nil,
        response_version: HubspotSDK::CRM::Extensions::IntegratorCardPayloadResponse::ResponseVersion | nil,
        sections: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::Extensions::IntegratorObjectResult]) | nil,
        top_level_actions: HubspotSDK::CRM::Extensions::TopLevelActions | nil
      }
    end
  end
end
