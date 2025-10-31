# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::CRM::Timeline::TokensTest < HubspotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.crm.timeline.tokens.create(
        "eventTemplateId",
        app_id: 0,
        label: "Pet Type",
        name: "petType",
        type: :enumeration
      )

    assert_pattern do
      response => HubspotSDK::CRM::TimelineEventTemplateToken
    end

    assert_pattern do
      response => {
        label: String,
        name: String,
        type: HubspotSDK::CRM::TimelineEventTemplateToken::Type,
        created_at: Time | nil,
        object_property_name: String | nil,
        options: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::TimelineEventTemplateTokenOption]) | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_update_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.crm.timeline.tokens.update(
        "tokenName",
        app_id: 0,
        event_template_id: "eventTemplateId",
        label: "petType edit"
      )

    assert_pattern do
      response => HubspotSDK::CRM::TimelineEventTemplateToken
    end

    assert_pattern do
      response => {
        label: String,
        name: String,
        type: HubspotSDK::CRM::TimelineEventTemplateToken::Type,
        created_at: Time | nil,
        object_property_name: String | nil,
        options: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::TimelineEventTemplateTokenOption]) | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_delete_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.crm.timeline.tokens.delete("tokenName", app_id: 0, event_template_id: "eventTemplateId")

    assert_pattern do
      response => nil
    end
  end
end
