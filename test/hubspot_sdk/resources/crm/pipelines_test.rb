# frozen_string_literal: true

require_relative "../../test_helper"

class HubSpotSDK::Test::Resources::Crm::PipelinesTest < HubSpotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.pipelines.create(
        "objectType",
        display_order: 0,
        label: "label",
        stages: [{displayOrder: 0, label: "label", metadata: {foo: "string"}}]
      )

    assert_pattern do
      response => HubSpotSDK::Crm::Pipeline
    end

    assert_pattern do
      response => {
        id: String,
        archived: HubSpotSDK::Internal::Type::Boolean,
        created_at: Time,
        display_order: Integer,
        label: String,
        stages: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::PipelineStage]),
        updated_at: Time,
        archived_at: Time | nil
      }
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.crm.pipelines.update("pipelineId", object_type: "objectType")

    assert_pattern do
      response => HubSpotSDK::Crm::Pipeline
    end

    assert_pattern do
      response => {
        id: String,
        archived: HubSpotSDK::Internal::Type::Boolean,
        created_at: Time,
        display_order: Integer,
        label: String,
        stages: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::PipelineStage]),
        updated_at: Time,
        archived_at: Time | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @hubspot.crm.pipelines.list("objectType")

    assert_pattern do
      response => HubSpotSDK::Crm::CollectionResponsePipelineNoPaging
    end

    assert_pattern do
      response => {
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::Pipeline])
      }
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.crm.pipelines.delete("pipelineId", object_type: "objectType")

    assert_pattern do
      response => nil
    end
  end

  def test_create_stage_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.pipelines.create_stage(
        "pipelineId",
        object_type: "objectType",
        display_order: 0,
        label: "label",
        metadata: {foo: "string"}
      )

    assert_pattern do
      response => HubSpotSDK::Crm::PipelineStage
    end

    assert_pattern do
      response => {
        id: String,
        archived: HubSpotSDK::Internal::Type::Boolean,
        created_at: Time,
        display_order: Integer,
        label: String,
        metadata: ^(HubSpotSDK::Internal::Type::HashOf[String]),
        updated_at: Time,
        write_permissions: HubSpotSDK::Crm::PipelineStage::WritePermissions,
        archived_at: Time | nil
      }
    end
  end

  def test_delete_stage_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.pipelines.delete_stage("stageId", object_type: "objectType", pipeline_id: "pipelineId")

    assert_pattern do
      response => nil
    end
  end

  def test_get_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.crm.pipelines.get("pipelineId", object_type: "objectType")

    assert_pattern do
      response => HubSpotSDK::Crm::Pipeline
    end

    assert_pattern do
      response => {
        id: String,
        archived: HubSpotSDK::Internal::Type::Boolean,
        created_at: Time,
        display_order: Integer,
        label: String,
        stages: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::PipelineStage]),
        updated_at: Time,
        archived_at: Time | nil
      }
    end
  end

  def test_get_stage_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.pipelines.get_stage("stageId", object_type: "objectType", pipeline_id: "pipelineId")

    assert_pattern do
      response => HubSpotSDK::Crm::PipelineStage
    end

    assert_pattern do
      response => {
        id: String,
        archived: HubSpotSDK::Internal::Type::Boolean,
        created_at: Time,
        display_order: Integer,
        label: String,
        metadata: ^(HubSpotSDK::Internal::Type::HashOf[String]),
        updated_at: Time,
        write_permissions: HubSpotSDK::Crm::PipelineStage::WritePermissions,
        archived_at: Time | nil
      }
    end
  end

  def test_list_audit_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.crm.pipelines.list_audit("pipelineId", object_type: "objectType")

    assert_pattern do
      response => HubSpotSDK::Crm::CollectionResponsePublicAuditInfoNoPaging
    end

    assert_pattern do
      response => {
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::PublicAuditInfo])
      }
    end
  end

  def test_list_stage_audit_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.pipelines.list_stage_audit("stageId", object_type: "objectType", pipeline_id: "pipelineId")

    assert_pattern do
      response => HubSpotSDK::Crm::CollectionResponsePublicAuditInfoNoPaging
    end

    assert_pattern do
      response => {
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::PublicAuditInfo])
      }
    end
  end

  def test_list_stages_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.crm.pipelines.list_stages("pipelineId", object_type: "objectType")

    assert_pattern do
      response => HubSpotSDK::Crm::CollectionResponsePipelineStageNoPaging
    end

    assert_pattern do
      response => {
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::PipelineStage])
      }
    end
  end

  def test_update_all_properties_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.pipelines.update_all_properties(
        "pipelineId",
        object_type: "objectType",
        display_order: 0,
        label: "label",
        stages: [{displayOrder: 0, label: "label", metadata: {foo: "string"}}]
      )

    assert_pattern do
      response => HubSpotSDK::Crm::Pipeline
    end

    assert_pattern do
      response => {
        id: String,
        archived: HubSpotSDK::Internal::Type::Boolean,
        created_at: Time,
        display_order: Integer,
        label: String,
        stages: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::PipelineStage]),
        updated_at: Time,
        archived_at: Time | nil
      }
    end
  end

  def test_update_stage_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.pipelines.update_stage(
        "stageId",
        object_type: "objectType",
        pipeline_id: "pipelineId",
        metadata: {foo: "string"}
      )

    assert_pattern do
      response => HubSpotSDK::Crm::PipelineStage
    end

    assert_pattern do
      response => {
        id: String,
        archived: HubSpotSDK::Internal::Type::Boolean,
        created_at: Time,
        display_order: Integer,
        label: String,
        metadata: ^(HubSpotSDK::Internal::Type::HashOf[String]),
        updated_at: Time,
        write_permissions: HubSpotSDK::Crm::PipelineStage::WritePermissions,
        archived_at: Time | nil
      }
    end
  end

  def test_update_stage_all_properties_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.pipelines.update_stage_all_properties(
        "stageId",
        object_type: "objectType",
        pipeline_id: "pipelineId",
        display_order: 0,
        label: "label",
        metadata: {foo: "string"}
      )

    assert_pattern do
      response => HubSpotSDK::Crm::PipelineStage
    end

    assert_pattern do
      response => {
        id: String,
        archived: HubSpotSDK::Internal::Type::Boolean,
        created_at: Time,
        display_order: Integer,
        label: String,
        metadata: ^(HubSpotSDK::Internal::Type::HashOf[String]),
        updated_at: Time,
        write_permissions: HubSpotSDK::Crm::PipelineStage::WritePermissions,
        archived_at: Time | nil
      }
    end
  end
end
