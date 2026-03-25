# frozen_string_literal: true

require_relative "../../test_helper"

class HubspotSDK::Test::Resources::Crm::PipelinesTest < HubspotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.pipelines.create(
        "pipelineId",
        object_type: "objectType",
        display_order: 0,
        label: "label",
        metadata: {foo: "string"}
      )

    assert_pattern do
      response => HubspotSDK::Crm::PipelineStage
    end

    assert_pattern do
      response => {
        id: String,
        archived: HubspotSDK::Internal::Type::Boolean,
        created_at: Time,
        display_order: Integer,
        label: String,
        metadata: ^(HubspotSDK::Internal::Type::HashOf[String]),
        updated_at: Time,
        write_permissions: HubspotSDK::Crm::PipelineStage::WritePermissions,
        archived_at: Time | nil
      }
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.pipelines.update(
        "stageId",
        object_type: "objectType",
        pipeline_id: "pipelineId",
        metadata: {foo: "string"}
      )

    assert_pattern do
      response => HubspotSDK::Crm::PipelineStage
    end

    assert_pattern do
      response => {
        id: String,
        archived: HubspotSDK::Internal::Type::Boolean,
        created_at: Time,
        display_order: Integer,
        label: String,
        metadata: ^(HubspotSDK::Internal::Type::HashOf[String]),
        updated_at: Time,
        write_permissions: HubspotSDK::Crm::PipelineStage::WritePermissions,
        archived_at: Time | nil
      }
    end
  end

  def test_list_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.crm.pipelines.list("pipelineId", object_type: "objectType")

    assert_pattern do
      response => HubspotSDK::Crm::CollectionResponsePipelineStageNoPaging
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::PipelineStage])
      }
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.crm.pipelines.delete("stageId", object_type: "objectType", pipeline_id: "pipelineId")

    assert_pattern do
      response => nil
    end
  end

  def test_get_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.crm.pipelines.get("stageId", object_type: "objectType", pipeline_id: "pipelineId")

    assert_pattern do
      response => HubspotSDK::Crm::PipelineStage
    end

    assert_pattern do
      response => {
        id: String,
        archived: HubspotSDK::Internal::Type::Boolean,
        created_at: Time,
        display_order: Integer,
        label: String,
        metadata: ^(HubspotSDK::Internal::Type::HashOf[String]),
        updated_at: Time,
        write_permissions: HubspotSDK::Crm::PipelineStage::WritePermissions,
        archived_at: Time | nil
      }
    end
  end

  def test_get_audit_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.pipelines.get_audit("stageId", object_type: "objectType", pipeline_id: "pipelineId")

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
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.pipelines.replace(
        "stageId",
        object_type: "objectType",
        pipeline_id: "pipelineId",
        display_order: 0,
        label: "label",
        metadata: {foo: "string"}
      )

    assert_pattern do
      response => HubspotSDK::Crm::PipelineStage
    end

    assert_pattern do
      response => {
        id: String,
        archived: HubspotSDK::Internal::Type::Boolean,
        created_at: Time,
        display_order: Integer,
        label: String,
        metadata: ^(HubspotSDK::Internal::Type::HashOf[String]),
        updated_at: Time,
        write_permissions: HubspotSDK::Crm::PipelineStage::WritePermissions,
        archived_at: Time | nil
      }
    end
  end
end
