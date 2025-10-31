# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::CRM::Pipelines::StagesTest < HubspotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @hub_spot.crm.pipelines.stages.create(
        "pipelineId",
        object_type: "objectType",
        display_order: 1,
        label: "Done"
      )

    assert_pattern do
      response => HubspotSDK::CRM::PipelineStage
    end

    assert_pattern do
      response => {
        id: String,
        archived: HubspotSDK::Internal::Type::Boolean,
        created_at: Time,
        display_order: Integer,
        label: String,
        updated_at: Time,
        archived_at: Time | nil,
        metadata: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        write_permissions: HubspotSDK::CRM::PipelineStage::WritePermissions | nil
      }
    end
  end

  def test_update_required_params
    skip("Prism tests are disabled")

    response =
      @hub_spot.crm.pipelines.stages.update("stageId", object_type: "objectType", pipeline_id: "pipelineId")

    assert_pattern do
      response => HubspotSDK::CRM::PipelineStage
    end

    assert_pattern do
      response => {
        id: String,
        archived: HubspotSDK::Internal::Type::Boolean,
        created_at: Time,
        display_order: Integer,
        label: String,
        updated_at: Time,
        archived_at: Time | nil,
        metadata: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        write_permissions: HubspotSDK::CRM::PipelineStage::WritePermissions | nil
      }
    end
  end

  def test_list_required_params
    skip("Prism tests are disabled")

    response = @hub_spot.crm.pipelines.stages.list("pipelineId", object_type: "objectType")

    assert_pattern do
      response => HubspotSDK::CRM::CollectionResponsePipelineStageNoPaging
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::PipelineStage])
      }
    end
  end

  def test_delete_required_params
    skip("Prism tests are disabled")

    response =
      @hub_spot.crm.pipelines.stages.delete("stageId", object_type: "objectType", pipeline_id: "pipelineId")

    assert_pattern do
      response => nil
    end
  end

  def test_get_required_params
    skip("Prism tests are disabled")

    response =
      @hub_spot.crm.pipelines.stages.get("stageId", object_type: "objectType", pipeline_id: "pipelineId")

    assert_pattern do
      response => HubspotSDK::CRM::PipelineStage
    end

    assert_pattern do
      response => {
        id: String,
        archived: HubspotSDK::Internal::Type::Boolean,
        created_at: Time,
        display_order: Integer,
        label: String,
        updated_at: Time,
        archived_at: Time | nil,
        metadata: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        write_permissions: HubspotSDK::CRM::PipelineStage::WritePermissions | nil
      }
    end
  end

  def test_get_audit_required_params
    skip("Prism tests are disabled")

    response =
      @hub_spot.crm.pipelines.stages.get_audit(
        "stageId",
        object_type: "objectType",
        pipeline_id: "pipelineId"
      )

    assert_pattern do
      response => HubspotSDK::CRM::CollectionResponsePublicAuditInfoNoPaging
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::PublicAuditInfo])
      }
    end
  end

  def test_replace_required_params
    skip("Prism tests are disabled")

    response =
      @hub_spot.crm.pipelines.stages.replace(
        "stageId",
        object_type: "objectType",
        pipeline_id: "pipelineId",
        display_order: 1,
        label: "Done"
      )

    assert_pattern do
      response => HubspotSDK::CRM::PipelineStage
    end

    assert_pattern do
      response => {
        id: String,
        archived: HubspotSDK::Internal::Type::Boolean,
        created_at: Time,
        display_order: Integer,
        label: String,
        updated_at: Time,
        archived_at: Time | nil,
        metadata: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        write_permissions: HubspotSDK::CRM::PipelineStage::WritePermissions | nil
      }
    end
  end
end
