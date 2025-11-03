# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::Crm::Timeline::TemplatesTest < HubspotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.crm.timeline.templates.create(
        0,
        name: "PetSpot Registration",
        object_type: "contacts",
        tokens: [
          {label: "Pet Name", name: "petName", type: :string},
          {label: "Pet Age", name: "petAge", type: :number},
          {label: "Pet Color", name: "petColor", type: :enumeration}
        ]
      )

    assert_pattern do
      response => HubspotSDK::Crm::TimelineEventTemplate
    end

    assert_pattern do
      response => {
        id: String,
        name: String,
        object_type: String,
        tokens: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::TimelineEventTemplateToken]),
        created_at: Time | nil,
        detail_template: String | nil,
        header_template: String | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_update_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.crm.timeline.templates.update(
        "eventTemplateId",
        app_id: 0,
        id: "1001298",
        name: "PetSpot Registration",
        tokens: [
          {label: "Pet Name", name: "petName", type: :string},
          {label: "Pet Age", name: "petAge", type: :number},
          {label: "Pet Color", name: "petColor", type: :enumeration}
        ]
      )

    assert_pattern do
      response => HubspotSDK::Crm::TimelineEventTemplate
    end

    assert_pattern do
      response => {
        id: String,
        name: String,
        object_type: String,
        tokens: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::TimelineEventTemplateToken]),
        created_at: Time | nil,
        detail_template: String | nil,
        header_template: String | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @hubspot.crm.timeline.templates.list(0)

    assert_pattern do
      response => HubspotSDK::Crm::CollectionResponseTimelineEventTemplateNoPaging
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::TimelineEventTemplate])
      }
    end
  end

  def test_delete_required_params
    skip("Prism tests are disabled")

    response = @hubspot.crm.timeline.templates.delete("eventTemplateId", app_id: 0)

    assert_pattern do
      response => nil
    end
  end

  def test_get_required_params
    skip("Prism tests are disabled")

    response = @hubspot.crm.timeline.templates.get("eventTemplateId", app_id: 0)

    assert_pattern do
      response => HubspotSDK::Crm::TimelineEventTemplate
    end

    assert_pattern do
      response => {
        id: String,
        name: String,
        object_type: String,
        tokens: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::TimelineEventTemplateToken]),
        created_at: Time | nil,
        detail_template: String | nil,
        header_template: String | nil,
        updated_at: Time | nil
      }
    end
  end
end
