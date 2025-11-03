# frozen_string_literal: true

require_relative "../../test_helper"

class HubspotSDK::Test::Resources::Crm::PipelinesTest < HubspotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.crm.pipelines.create(
        "objectType",
        display_order: 0,
        label: "My replaced pipeline",
        stages: [{displayOrder: 0, label: "In Progress"}, {displayOrder: 1, label: "Done"}]
      )

    assert_pattern do
      response => HubspotSDK::Crm::Pipeline
    end

    assert_pattern do
      response => {
        id: String,
        archived: HubspotSDK::Internal::Type::Boolean,
        created_at: Time,
        display_order: Integer,
        label: String,
        stages: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::PipelineStage]),
        updated_at: Time,
        archived_at: Time | nil
      }
    end
  end

  def test_update_required_params
    skip("Prism tests are disabled")

    response = @hubspot.crm.pipelines.update("pipelineId", object_type: "objectType")

    assert_pattern do
      response => HubspotSDK::Crm::Pipeline
    end

    assert_pattern do
      response => {
        id: String,
        archived: HubspotSDK::Internal::Type::Boolean,
        created_at: Time,
        display_order: Integer,
        label: String,
        stages: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::PipelineStage]),
        updated_at: Time,
        archived_at: Time | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @hubspot.crm.pipelines.list("objectType")

    assert_pattern do
      response => HubspotSDK::Crm::CollectionResponsePipelineNoPaging
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::Pipeline])
      }
    end
  end

  def test_delete_required_params
    skip("Prism tests are disabled")

    response = @hubspot.crm.pipelines.delete("pipelineId", object_type: "objectType")

    assert_pattern do
      response => nil
    end
  end

  def test_get_required_params
    skip("Prism tests are disabled")

    response = @hubspot.crm.pipelines.get("pipelineId", object_type: "objectType")

    assert_pattern do
      response => HubspotSDK::Crm::Pipeline
    end

    assert_pattern do
      response => {
        id: String,
        archived: HubspotSDK::Internal::Type::Boolean,
        created_at: Time,
        display_order: Integer,
        label: String,
        stages: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::PipelineStage]),
        updated_at: Time,
        archived_at: Time | nil
      }
    end
  end

  def test_get_audit_required_params
    skip("Prism tests are disabled")

    response = @hubspot.crm.pipelines.get_audit("pipelineId", object_type: "objectType")

    assert_pattern do
      response => HubspotSDK::Crm::CollectionResponsePublicAuditInfoNoPaging
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::PublicAuditInfo])
      }
    end
  end

  def test_replace_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.crm.pipelines.replace(
        "pipelineId",
        object_type: "objectType",
        display_order: 0,
        label: "My replaced pipeline",
        stages: [{displayOrder: 0, label: "In Progress"}, {displayOrder: 1, label: "Done"}]
      )

    assert_pattern do
      response => HubspotSDK::Crm::Pipeline
    end

    assert_pattern do
      response => {
        id: String,
        archived: HubspotSDK::Internal::Type::Boolean,
        created_at: Time,
        display_order: Integer,
        label: String,
        stages: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::PipelineStage]),
        updated_at: Time,
        archived_at: Time | nil
      }
    end
  end
end
