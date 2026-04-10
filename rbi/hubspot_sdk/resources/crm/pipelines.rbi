# typed: strong

module HubSpotSDK
  module Resources
    class Crm
      class Pipelines
        # Create a new pipeline with the provided property values. The entire pipeline
        # object, including its unique ID, will be returned in the response.
        sig do
          params(
            object_type: String,
            display_order: Integer,
            label: String,
            stages: T::Array[HubSpotSDK::Crm::PipelineStageInput::OrHash],
            pipeline_id: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Crm::Pipeline)
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
          pipeline_id: nil,
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
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Crm::Pipeline)
        end
        def update(
          # Path param
          pipeline_id,
          # Path param
          object_type:,
          # Query param
          validate_deal_stage_usages_before_delete: nil,
          # Query param
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
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Crm::CollectionResponsePipelineNoPaging)
        end
        def list(object_type, request_options: {})
        end

        # Delete a pipeline
        sig do
          params(
            pipeline_id: String,
            object_type: String,
            validate_deal_stage_usages_before_delete: T::Boolean,
            validate_references_before_delete: T::Boolean,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).void
        end
        def delete(
          # Path param
          pipeline_id,
          # Path param
          object_type:,
          # Query param
          validate_deal_stage_usages_before_delete: nil,
          # Query param
          validate_references_before_delete: nil,
          request_options: {}
        )
        end

        # Create a pipeline stage
        sig do
          params(
            pipeline_id: String,
            object_type: String,
            display_order: Integer,
            label: String,
            metadata: T::Hash[Symbol, String],
            stage_id: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Crm::PipelineStage)
        end
        def create_stage(
          # Path param
          pipeline_id,
          # Path param
          object_type:,
          # Body param: The order for displaying this pipeline stage. If two pipeline stages
          # have a matching `displayOrder`, they will be sorted alphabetically by label.
          display_order:,
          # Body param: A label used to organize pipeline stages in HubSpot's UI. Each
          # pipeline stage's label must be unique within that pipeline.
          label:,
          # Body param: A JSON object containing properties that are not present on all
          # object pipelines.
          #
          # For `deals` pipelines, the `probability` field is required
          # (`{ "probability": 0.5 }`), and represents the likelihood a deal will close.
          # Possible values are between 0.0 and 1.0 in increments of 0.1.
          #
          # For `tickets` pipelines, the `ticketState` field is optional
          # (`{ "ticketState": "OPEN" }`), and represents whether the ticket remains open or
          # has been closed by a member of your Support team. Possible values are `OPEN` or
          # `CLOSED`.
          metadata:,
          # Body param
          stage_id: nil,
          request_options: {}
        )
        end

        # Delete a pipeline stage
        sig do
          params(
            stage_id: String,
            object_type: String,
            pipeline_id: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).void
        end
        def delete_stage(
          stage_id,
          object_type:,
          pipeline_id:,
          request_options: {}
        )
        end

        # Return a single pipeline object identified by its unique `{pipelineId}`.
        sig do
          params(
            pipeline_id: String,
            object_type: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Crm::Pipeline)
        end
        def get(pipeline_id, object_type:, request_options: {})
        end

        # Return a pipeline stage by ID
        sig do
          params(
            stage_id: String,
            object_type: String,
            pipeline_id: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Crm::PipelineStage)
        end
        def get_stage(stage_id, object_type:, pipeline_id:, request_options: {})
        end

        # Return a reverse chronological list of all mutations that have occurred on the
        # pipeline identified by `{pipelineId}`.
        sig do
          params(
            pipeline_id: String,
            object_type: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Crm::CollectionResponsePublicAuditInfoNoPaging)
        end
        def list_audit(pipeline_id, object_type:, request_options: {})
        end

        # Return a reverse chronological list of all mutations that have occurred on the
        # pipeline stage identified by `{stageId}`.
        sig do
          params(
            stage_id: String,
            object_type: String,
            pipeline_id: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Crm::CollectionResponsePublicAuditInfoNoPaging)
        end
        def list_stage_audit(
          stage_id,
          object_type:,
          pipeline_id:,
          request_options: {}
        )
        end

        # Return all the stages associated with the pipeline identified by `{pipelineId}`.
        sig do
          params(
            pipeline_id: String,
            object_type: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Crm::CollectionResponsePipelineStageNoPaging)
        end
        def list_stages(pipeline_id, object_type:, request_options: {})
        end

        # Replace a pipeline
        sig do
          params(
            pipeline_id: String,
            object_type: String,
            display_order: Integer,
            label: String,
            stages: T::Array[HubSpotSDK::Crm::PipelineStageInput::OrHash],
            validate_deal_stage_usages_before_delete: T::Boolean,
            validate_references_before_delete: T::Boolean,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Crm::Pipeline)
        end
        def update_all_properties(
          # Path param
          pipeline_id,
          # Path param
          object_type:,
          # Body param: The order for displaying this pipeline stage. If two pipeline stages
          # have a matching `displayOrder`, they will be sorted alphabetically by label.
          display_order:,
          # Body param: A label used to organize pipeline stages in HubSpot's UI. Each
          # pipeline stage's label must be unique within that pipeline.
          label:,
          # Body param: The stages associated with the pipeline. They can be retrieved and
          # updated via the pipeline stages endpoints.
          stages:,
          # Query param
          validate_deal_stage_usages_before_delete: nil,
          # Query param
          validate_references_before_delete: nil,
          request_options: {}
        )
        end

        sig do
          params(
            stage_id: String,
            object_type: String,
            pipeline_id: String,
            metadata: T::Hash[Symbol, String],
            archived: T::Boolean,
            display_order: Integer,
            label: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Crm::PipelineStage)
        end
        def update_stage(
          # Path param
          stage_id,
          # Path param
          object_type:,
          # Path param
          pipeline_id:,
          # Body param: A JSON object containing properties that are not present on all
          # object pipelines.
          #
          # For `deals` pipelines, the `probability` field is required
          # (`{ "probability": 0.5 }`), and represents the likelihood a deal will close.
          # Possible values are between 0.0 and 1.0 in increments of 0.1.
          #
          # For `tickets` pipelines, the `ticketState` field is optional
          # (`{ "ticketState": "OPEN" }`), and represents whether the ticket remains open or
          # has been closed by a member of your Support team. Possible values are `OPEN` or
          # `CLOSED`.
          metadata:,
          # Body param: Whether the pipeline is archived.
          archived: nil,
          # Body param: The order for displaying this pipeline stage. If two pipeline stages
          # have a matching `displayOrder`, they will be sorted alphabetically by label.
          display_order: nil,
          # Body param: A label used to organize pipeline stages in HubSpot's UI. Each
          # pipeline stage's label must be unique within that pipeline.
          label: nil,
          request_options: {}
        )
        end

        # Replace all the properties of an existing pipeline stage with the values
        # provided. The updated stage will be returned in the response.
        sig do
          params(
            stage_id: String,
            object_type: String,
            pipeline_id: String,
            display_order: Integer,
            label: String,
            metadata: T::Hash[Symbol, String],
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Crm::PipelineStage)
        end
        def update_stage_all_properties(
          # Path param
          stage_id,
          # Path param
          object_type:,
          # Path param
          pipeline_id:,
          # Body param: The order for displaying this pipeline stage. If two pipeline stages
          # have a matching `displayOrder`, they will be sorted alphabetically by label.
          display_order:,
          # Body param: A label used to organize pipeline stages in HubSpot's UI. Each
          # pipeline stage's label must be unique within that pipeline.
          label:,
          # Body param: A JSON object containing properties that are not present on all
          # object pipelines.
          #
          # For `deals` pipelines, the `probability` field is required
          # (`{ "probability": 0.5 }`), and represents the likelihood a deal will close.
          # Possible values are between 0.0 and 1.0 in increments of 0.1.
          #
          # For `tickets` pipelines, the `ticketState` field is optional
          # (`{ "ticketState": "OPEN" }`), and represents whether the ticket remains open or
          # has been closed by a member of your Support team. Possible values are `OPEN` or
          # `CLOSED`.
          metadata:,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: HubSpotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
