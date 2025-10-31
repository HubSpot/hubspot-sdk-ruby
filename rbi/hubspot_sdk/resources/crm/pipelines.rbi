# typed: strong

module HubspotSDK
  module Resources
    class CRM
      class Pipelines
        sig { returns(HubspotSDK::Resources::CRM::Pipelines::Stages) }
        attr_reader :stages

        # Create a new pipeline with the provided property values. The entire pipeline
        # object, including its unique ID, will be returned in the response.
        sig do
          params(
            object_type: String,
            display_order: Integer,
            label: String,
            stages: T::Array[HubspotSDK::CRM::PipelineStageInput::OrHash],
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::CRM::Pipeline)
        end
        def create(
          object_type,
          # The order for displaying this pipeline. If two pipelines have a matching
          # `displayOrder`, they will be sorted alphabetically by label.
          display_order:,
          # A unique label used to organize pipelines in HubSpot's UI
          label:,
          # Pipeline stage inputs used to create the new or replacement pipeline.
          stages:,
          request_options: {}
        )
        end

        # Perform a partial update of the pipeline identified by `{pipelineId}`. The
        # updated pipeline will be returned in the response.
        sig do
          params(
            pipeline_id: String,
            object_type: String,
            validate_deal_stage_usages_before_delete: T::Boolean,
            validate_references_before_delete: T::Boolean,
            archived: T::Boolean,
            display_order: Integer,
            label: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::CRM::Pipeline)
        end
        def update(
          # Path param:
          pipeline_id,
          # Path param:
          object_type:,
          # Query param:
          validate_deal_stage_usages_before_delete: nil,
          # Query param:
          validate_references_before_delete: nil,
          # Body param: Whether the pipeline is archived. This property should only be
          # provided when restoring an archived pipeline. If it's provided in any other
          # call, the request will fail and a `400 Bad Request` will be returned.
          archived: nil,
          # Body param: The order for displaying this pipeline. If two pipelines have a
          # matching `displayOrder`, they will be sorted alphabetically by label.
          display_order: nil,
          # Body param: A unique label used to organize pipelines in HubSpot's UI
          label: nil,
          request_options: {}
        )
        end

        # Return all pipelines for the object type specified by `{objectType}`.
        sig do
          params(
            object_type: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::CRM::CollectionResponsePipelineNoPaging)
        end
        def list(object_type, request_options: {})
        end

        # Delete the pipeline identified by `{pipelineId}`.
        sig do
          params(
            pipeline_id: String,
            object_type: String,
            validate_deal_stage_usages_before_delete: T::Boolean,
            validate_references_before_delete: T::Boolean,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).void
        end
        def delete(
          # Path param:
          pipeline_id,
          # Path param:
          object_type:,
          # Query param:
          validate_deal_stage_usages_before_delete: nil,
          # Query param:
          validate_references_before_delete: nil,
          request_options: {}
        )
        end

        # Return a single pipeline object identified by its unique `{pipelineId}`.
        sig do
          params(
            pipeline_id: String,
            object_type: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::CRM::Pipeline)
        end
        def get(pipeline_id, object_type:, request_options: {})
        end

        # Return a reverse chronological list of all mutations that have occurred on the
        # pipeline identified by `{pipelineId}`.
        sig do
          params(
            pipeline_id: String,
            object_type: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::CRM::CollectionResponsePublicAuditInfoNoPaging)
        end
        def get_audit(pipeline_id, object_type:, request_options: {})
        end

        # Replace all the properties of an existing pipeline with the values provided.
        # This will overwrite any existing pipeline stages. The updated pipeline will be
        # returned in the response.
        sig do
          params(
            pipeline_id: String,
            object_type: String,
            display_order: Integer,
            label: String,
            stages: T::Array[HubspotSDK::CRM::PipelineStageInput::OrHash],
            validate_deal_stage_usages_before_delete: T::Boolean,
            validate_references_before_delete: T::Boolean,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::CRM::Pipeline)
        end
        def replace(
          # Path param:
          pipeline_id,
          # Path param:
          object_type:,
          # Body param: The order for displaying this pipeline. If two pipelines have a
          # matching `displayOrder`, they will be sorted alphabetically by label.
          display_order:,
          # Body param: A unique label used to organize pipelines in HubSpot's UI
          label:,
          # Body param: Pipeline stage inputs used to create the new or replacement
          # pipeline.
          stages:,
          # Query param:
          validate_deal_stage_usages_before_delete: nil,
          # Query param:
          validate_references_before_delete: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
